###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### CMakeLists.txt :: The top level CMake configuration file for datetime-fortran
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

cmake_minimum_required(VERSION 3.2.3)

project(datetime-fortran
        VERSION 1.7.0
        LANGUAGES Fortran)

set(ENABLE_TESTS FALSE)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

### library to archive (libdatetime.a)
set(_target_var datetime)

add_library(${_target_var} STATIC ${CMAKE_CURRENT_SOURCE_DIR}/src/datetime_module.f90)

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

if(WIN32)
  enable_language(CXX)
  add_library(strptime OBJECT src/strptime.cpp)
  set_target_properties(strptime PROPERTIES CXX_STANDARD 11 CXX_STANDARD_REQUIRED true)
  target_link_libraries(${_target_var} PRIVATE strptime)
endif()

### tests
if(ENABLE_TESTS)
  enable_testing()

  add_executable(datetime_tests tests/datetime_tests.f90)
  target_link_libraries(datetime_tests datetime)
  set_target_properties(datetime_tests PROPERTIES
                                       RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
                                       LINKER_LANGUAGE Fortran)
  add_test(NAME datetime_tests COMMAND $<TARGET_FILE:datetime_tests>)

  install(TARGETS datetime_tests RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
endif(ENABLE_TESTS)

unset(_target_var)
unset(_target_mod_dir)
