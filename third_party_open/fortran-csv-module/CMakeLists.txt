###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### CMakeLists.txt :: The top level CMake configuration file for fortran-csv-module
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

cmake_minimum_required(VERSION 3.2.3)

project(fortran-csv-module
        VERSION 1.2.0
        LANGUAGES Fortran)

massage(FATAL_ERROR "Error: fortran_csv_module should not be called, csv functionality is build from within the main src directory.")

set(ENABLE_TESTS FALSE)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

### library to archive (libfortrancsv.a)
set(_target_var fortrancsv)

add_library(${_target_var} STATIC
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/csv_kinds.f90
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/csv_parameters.f90
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/csv_utilities.f90
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/csv_module.F90)

set(_target_mod_dir "${CMAKE_Fortran_MODULE_DIRECTORY}")
if("${_target_mod_dir}" STREQUAL "")
  set(_target_mod_dir ${CMAKE_BINARY_DIR}/CMakeFiles/mod/${_target_var})
endif()
target_include_directories(${_target_var} INTERFACE ${_target_mod_dir})

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
