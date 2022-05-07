###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### CMakeLists.txt :: The top level CMake configuration file for NetCDF95
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

##################################################
### GENERAL OPTIONS
##################################################
cmake_minimum_required(VERSION 3.2.3)
#cmake_minimum_required(VERSION 3.13)

###========================================
### Add our local modules to the module path
###========================================
file(REAL_PATH ../../cmake           _d1)
file(REAL_PATH ../../cmake/Platforms _d2)
file(REAL_PATH ../../cmake/Modules   _d3)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake
                              ${CMAKE_SOURCE_DIR}/cmake/Platforms
                              ${CMAKE_SOURCE_DIR}/cmake/Modules
			      ${_d1} ${_d2} ${_d3}
                              ${CMAKE_CURRENT_SOURCE_DIR}/cmake
                              ${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules)
list(REMOVE_DUPLICATES CMAKE_MODULE_PATH)
unset(_d1)
unset(_d2)
unset(_d3)
###========================================


project(NetCDF95
        LANGUAGES Fortran)


##################################################
### BUILD ENVIRONMENT
##################################################

### This is a required library.
include(check_netcdf)

### library to archive (libnetcdf.a)
set(_target_var netcdf95)

file(STRINGS file_list ${_target_var}_SOURCES)
add_library(${_target_var} STATIC ${${_target_var}_SOURCES})

set(_target_mod_dir "${CMAKE_Fortran_MODULE_DIRECTORY}")
if("${_target_mod_dir}" STREQUAL "")
  set(_target_mod_dir ${CMAKE_BINARY_DIR}/CMakeFiles/mod/${_target_var})
endif()
target_include_directories(${_target_var} INTERFACE ${_target_mod_dir})

target_include_directories(${_target_var} PRIVATE ${NETCDF_INCLUDE_DIRS})

target_link_libraries(${_target_var} PRIVATE ${NETCDF_LIBRARIES})
    
set_target_properties(${_target_var} PROPERTIES
                                     Fortran_MODULE_DIRECTORY ${_target_mod_dir}
                                     ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
                                     LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

install(TARGETS ${_target_var} RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
                               ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
                               LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(DIRECTORY "${_target_mod_dir}/"
        DESTINATION "include"
        FILES_MATCHING
        PATTERN "*.mod")

unset(_target_var)
unset(_target_mod_dir)
