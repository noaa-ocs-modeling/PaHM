###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### ProjUtils.cmake :: Utility functions
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

###--------------------
### Function :: trim_var
###   Trims (removes leading and trailing spaces) from a string.
###   var_out: the string variable to be trimmed (input and output)
###   If the variable is an environment variable, the function resets
###   the variable to its trimmed value.
###--------------------
function(trim_var var_out)
  if(DEFINED ENV{${var_out}})
    string(STRIP "$ENV{${var_out}}" _var_out)
    set(ENV{${var_out}} "${_var_out}")
  else()
    string(STRIP "${${var_out}}" _var_out)
    set(${var_out} "${_var_out}" PARENT_SCOPE)
  endif()
endfunction()


###--------------------
### Function :: get_requested_compilers
###   Determines the compiler language list given the
###   compiler list supplied by the user.
###   This function checks if the variables "CC", "CXX", "F90"
###   are defined (first priority) otherwise it searches for the
###   corresponding environment variables ENV{CC}, ENV(CXX), ENV(F90).
###   comp_list: the list of the variables to search for [CC, CXX, F90] (input)
###   comp_lang_list: the list of the compiler languages [C, CXX, Fortran] (output)
###--------------------
function(get_requested_compilers comp_list comp_lang_list)

  set(_lang_list "")

  foreach(env_var IN ITEMS ${comp_list})
    ###--- C
    if(env_var MATCHES "^(CC)$")
      list(APPEND _lang_list C)

      if(NOT DEFINED ENV{${env_var}} AND NOT ${env_var})
        message("   The environment variable '${env_var}' is not defined. \n"
                "   Will use the native C compiler instead.")
      else()
        trim_var(${env_var})

        if(NOT "${${env_var}}" STREQUAL "")
          message("   Setting CMAKE_C_COMPILER to: ${${env_var}}.")
          set(CMAKE_C_COMPILER ${${env_var}} PARENT_SCOPE)
        elseif(NOT "$ENV{${env_var}}" STREQUAL "")
          message("   Setting CMAKE_C_COMPILER to: $ENV{${env_var}}.")
          set(CMAKE_C_COMPILER $ENV{${env_var}} PARENT_SCOPE)
        else()
          message("   The environment variable '${env_var}' is empty. \n"
                  "   Will use the native C compiler instead.")
        endif()
      endif()
    endif()

    ###--- C++
    if(env_var MATCHES "^(CXX)$")
      list(APPEND _lang_list CXX)

      if(NOT DEFINED ENV{${env_var}} AND NOT ${env_var})
        message("   The environment variable '${env_var}' is not defined. \n"
                "   Will use the native C++ compiler instead.")
      else()
        trim_var("${env_var}")

        if(NOT "${${env_var}}" STREQUAL "")
          message("   Setting CMAKE_CXX_COMPILER to: ${${env_var}}.")
          set(CMAKE_CXX_COMPILER ${${env_var}} PARENT_SCOPE)
        elseif(NOT "$ENV{${env_var}}" STREQUAL "")
          message("   Setting CMAKE_CXX_COMPILER to: $ENV{${env_var}}.")
          set(CMAKE_CXX_COMPILER $ENV{${env_var}} PARENT_SCOPE)
        else()
          message("   The environment variable '${env_var}' is defined but it is empty. \n"
                  "   Will use the native C++ compiler instead.")
        endif()
      endif()
    endif()

    ###--- Fortran 90
    if(env_var MATCHES "^(F90)$")
      list(APPEND _lang_list Fortran)

      if(NOT DEFINED ENV{${env_var}} AND NOT ${env_var})
        message("   The environment variable '${env_var}' is not defined. \n"
                "   Will use the native Fortran 90 compiler instead.")
      else()
        trim_var("${env_var}")

        if(NOT "${${env_var}}" STREQUAL "")
          message("   Setting CMAKE_Fortran_COMPILER to: ${${env_var}}.")
          set(CMAKE_Fortran_COMPILER ${${env_var}} PARENT_SCOPE)
        elseif(NOT "$ENV{${env_var}}" STREQUAL "")
          message("   Setting CMAKE_Fortran_COMPILER to: $ENV{${env_var}}.")
          set(CMAKE_Fortran_COMPILER $ENV{${env_var}} PARENT_SCOPE)
        else()
          message("   The environment variable '${env_var}' is defined but it is empty. \n"
                  "   Will use the native Fortran 90 compiler instead.")
        endif()
      endif()
    endif()
  endforeach()

  set(${comp_lang_list} ${_lang_list}  PARENT_SCOPE)

endfunction(get_requested_compilers)

###--------------------
### Macro :: PROGInstallDirs
###   Sets the CMAKE_INSTALL_* variables for the project if they are not
###   defined from a previous call of the GNUInstallDirs module.
###   This macro can be called as:
###     PROGInstallDirs()   or,
###     PROGInstallDirs(installation_prefix) (optional argument).
###--------------------
macro(PROGInstallDirs)
  if(NOT COMMAND _GNUInstallDirs_cache_path)
    set(_var_list CMAKE_INSTALL_BINDIR:bin
                  CMAKE_INSTALL_SBINDIR:sbin
                  CMAKE_INSTALL_LIBDIR:lib
                  CMAKE_INSTALL_INCLUDEDIR:include
                  CMAKE_INSTALL_DATAROOTDIR:share
                  CMAKE_INSTALL_DATADIR:share
                  CMAKE_INSTALL_MANDIR:share/man
                  CMAKE_INSTALL_DOCDIR:share/doc
       )

    foreach(_var_item IN ITEMS ${_var_list})
      string(REGEX REPLACE ":.*" "" _var_nam ${_var_item})
      set(_var_nam ${_var_nam})
      string(REGEX REPLACE ".*:" "" _var_val ${_var_item})

      get_filename_component(_var_val ${_var_val} ABSOLUTE BASE_DIR "${ARGV0}")

      if(NOT DEFINED ${_var_nam})
        if(${_var_nam} STREQUAL CMAKE_INSTALL_BINDIR)
          set(${_var_nam} "${_var_val}" CACHE STRING
              "Install path for user program executables, usually relative to install prefix." FORCE)
        endif()
        if(${_var_nam} STREQUAL CMAKE_INSTALL_SBINDIR)
          set(${_var_nam} "${_var_val}" CACHE STRING
              "Install path for system admin program executables, usually relative to install prefix." FORCE)
        endif()
        if(${_var_nam} STREQUAL CMAKE_INSTALL_LIBDIR)
          set(${_var_nam} "${_var_val}" CACHE STRING
              "Install path for object code libraries, usually relative to install prefix." FORCE)
        endif()
        if(${_var_nam} STREQUAL CMAKE_INSTALL_INCLUDEDIR)
          set(${_var_nam} "${_var_val}" CACHE STRING
              "Install path for program header files, usually relative to install prefix." FORCE)
        endif()
        if(${_var_nam} STREQUAL CMAKE_INSTALL_DATAROOTDIR)
          set(${_var_nam} "${_var_val}" CACHE STRING
              "Install data path prefix, usually relative to install prefix." FORCE)
        endif()
        if(${_var_nam} STREQUAL CMAKE_INSTALL_DATADIR)
          set(${_var_nam} "${_var_val}" CACHE STRING
              "Install path for program architecture-independent data, usually relative to install datarootdir." FORCE)
        endif()
        if(${_var_nam} STREQUAL CMAKE_INSTALL_MANDIR)
          set(${_var_nam} "${_var_val}" CACHE STRING
              "Install path for program man pages, usually relative to install datarootdir." FORCE)
        endif()
        if(${_var_nam} STREQUAL CMAKE_INSTALL_DOCDIR)
          set(${_var_nam} "${_var_val}" CACHE STRING
              "Install path for program documentation, usually relative to install datarootdir." FORCE)
        endif()
      endif()
    endforeach()

    unset(_var_list)
    unset(_var_item)
    unset(_var_nam)
    unset(_var_val)
  else(NOT COMMAND _GNUInstallDirs_cache_path)
    message("")
    message(STATUS "PROGInstallDirs: GNUInstallDirs module is active, will use the GNU variables instead.")
    message("")
  endif(NOT COMMAND _GNUInstallDirs_cache_path)
endmacro()
