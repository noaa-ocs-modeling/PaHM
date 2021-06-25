###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### distclean.cmake :: Incorporates the "distclean" rule into the cmake generated makefiles
###
### Author: Seth Morton https://github.com/SethMMorton/cmake_fortran_template
###########################################################################

###========================================
### This CMake script will delete build directories and files to bring the
### package back to it's distribution state
###
### We want to start from the top of the source dir, so if we are in build
### we want to start one directory up
###========================================

find_package(UnixCommands QUIET)

get_filename_component(BASEDIR ${CMAKE_SOURCE_DIR} NAME)
if(${BASEDIR} STREQUAL "build")
    set(TOPDIR "${CMAKE_SOURCE_DIR}/..")
else()
    set(TOPDIR "${CMAKE_SOURCE_DIR}")
endif()

macro(get_parent_directories search_string return_list grandparents)
    file(GLOB_RECURSE new_list FOLLOW_SYMLINKS ${search_string})
    set(dir_list "")
    foreach(file_path ${new_list})
        get_filename_component(dir_path ${file_path} PATH)
        # Remove an extra directory component to return grandparent
        if(${grandparents})
            # Tack on a fake extension to trick CMake into removing a second
            # path component
            set(dir_path "${dir_path}.tmp")
            get_filename_component(dir_path ${dir_path} PATH)
        endif(${grandparents})
        set(dir_list ${dir_list} ${dir_path})
    endforeach()
    list(REMOVE_DUPLICATES dir_list)
    set(${return_list} ${dir_list})
endmacro()

# Find directories and files that we will want to remove
file(GLOB_RECURSE CMAKECACHE FOLLOW_SYMLINKS "${TOPDIR}/*CMakeCache.txt")
file(GLOB_RECURSE CMAKEINSTALL FOLLOW_SYMLINKS "${TOPDIR}/*cmake_install.cmake"
                               "${TOPDIR}/*install_manifest.txt")
file(GLOB_RECURSE MAKEFILE FOLLOW_SYMLINKS "${TOPDIR}/build/*Makefile")
file(GLOB_RECURSE CMAKETESTFILES FOLLOW_SYMLINKS "${TOPDIR}/*CTestTestfile.cmake")

###====================
### Create a bash script to get possible install directories from the cache file
###====================
set(get_install_dirs
    "#!/bin/bash

     cache=\"\${1}\"
     
     dirs=\"CMAKE_INSTALL_BINDIR CMAKE_INSTALL_SBINDIR CMAKE_INSTALL_INCLUDEDIR \
           CMAKE_INSTALL_LIBDIR CMAKE_INSTALL_DOCDIR CMAKE_INSTALL_DATADIR     \
           CMAKE_INSTALL_DATAROOTDIR\"

     var_out=

     for i in \${dirs}
     do
       var_out=\"\${var_out} \$( grep \"\${i}:.*=\" \${cache} | sed -e \"s@:.*=@ @g\" | awk '{print \$2}' )\"
       var_out=\"$(echo \"\${var_out}\" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')\"
     done

     echo \"\${var_out}\"
    "
   )
set(_exec_cmdfile "${TOPDIR}/build/get_install_dirs")

file(WRITE "${_exec_cmdfile}" "${get_install_dirs}")

if(NOT "${BASH}" STREQUAL "")
  execute_process(COMMAND "${BASH}" "${_exec_cmdfile}" "${CMAKECACHE}" OUTPUT_VARIABLE INSTALLDIRS)
  string(STRIP "${INSTALLDIRS}" INSTALLDIRS)
  separate_arguments(INSTALLDIRS)
endif()
###====================

set(TOPDIRECTORIES "${TOPDIR}/lib" 
                   "${TOPDIR}/test"
                   "${TOPDIR}/bin"
                   "${INSTALLDIRS}"
)

# CMake has trouble finding directories recursively, so locate these
# files and then save the parent directory of the files
get_parent_directories(Makefile.cmake CMAKEFILES 0)
get_parent_directories(LastTest.log CMAKETESTING 1)

# Place these files and directories into a list
set(DEL ${TOPDIRECTORIES}
        ${CMAKECACHE}
        ${CMAKEINSTALL}
        ${MAKEFILE}
        ${CMAKEFILES}
        ${CMAKETESTING}
        ${CMAKETESTFILES}
)

# If we are not in the build dir, delete that as well
if(NOT (${BASEDIR} STREQUAL "build"))
  file(GLOB BUILD "${TOPDIR}/build")
  set(DEL ${DEL} ${BUILD})
endif()

# Loop over the directories and delete each one
list(REMOVE_DUPLICATES DEL)
foreach(D ${DEL})
  if(EXISTS ${D})
    file(REMOVE_RECURSE ${D})
  endif()
endforeach()
