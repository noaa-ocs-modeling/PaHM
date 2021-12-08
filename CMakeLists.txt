###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### CMakeLists.txt :: The top level CMake configuration file for the project
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
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake
                              ${CMAKE_SOURCE_DIR}/cmake/Platforms
                              ${CMAKE_SOURCE_DIR}/cmake/Modules)
include(ProjUtils)
###========================================


###========================================
### Set the program versioning and languages
###========================================
set(PROG_NAME PaHM)
set(PROG_MAJOR 1)
set(PROG_MINOR 0)
set(PROG_PATCH 0)

set(PROG_VERSION ${PROG_MAJOR}.${PROG_MINOR}.${PROG_PATCH})
###========================================


###========================================
### Get the compiler(s) to use from the user, either from the command line (first priority)
### or from the environment (second prioriry). If any of the compiler variable(s) is not defined,
### the corresponding native compiler will be used.
### Define the variables :: PROG_comps, PROG_comps_lang and eanable the languages
###========================================
#set(PROG_comps CC CXX F90)
set(PROG_comps CC F90)
get_requested_compilers("${PROG_comps}" PROG_comps_lang)
###========================================


project(${PROG_NAME}
        VERSION ${PROG_VERSION}
        LANGUAGES ${PROG_comps_lang})


###========================================
### Get the name (not the full name) of the compilers and check some requirements
###========================================
foreach(env_var IN ITEMS ${PROG_comps_lang})
  ###--- C
  if("${env_var}" STREQUAL "C")
    get_filename_component(C_COMPILER_NAME ${CMAKE_C_COMPILER} NAME)
  endif()

  ###--- C++
  if("${env_var}" STREQUAL "CXX")
    get_filename_component(CXX_COMPILER_NAME ${CMAKE_CXX_COMPILER} NAME)
  endif()

  ###--- Fortran 90
  if("${env_var}" STREQUAL "Fortran")
    get_filename_component(Fortran_COMPILER_NAME ${CMAKE_Fortran_COMPILER} NAME)
  endif()
endforeach()

### Require that the Fortran compiler ID is always defined
if(NOT CMAKE_Fortran_COMPILER_ID)
  message("Fortran compiler ID is not defined, will check the environment for the COMPILER variable.")
  if(DEFINED ENV{COMPILER})
    trim_var("COMPILER")

    if("$ENV{COMPILER}" STREQUAL "")
      message(FATAL_ERROR "Set the environment variable COMPILER to a valid value.")
    else()
      set(CMAKE_Fortran_COMPILER_ID $ENV{COMPILER})
    endif()
  else()
    message(FATAL_ERROR "Fortran compiler ID is not defined.")
  endif()
endif()
string(TOLOWER ${CMAKE_Fortran_COMPILER_ID} SYS_COMPILER_ID)

### Require that a Fortran 90 and above compiler is supported
if(NOT CMAKE_Fortran_COMPILER_SUPPORTS_F90)
  message(FATAL_ERROR "Fortran compiler does not support F90.")
endif()
###========================================


###========================================
### Get the name of the operating system
###========================================
if(CMAKE_SYSTEM_NAME)
  string(TOLOWER ${CMAKE_SYSTEM_NAME} SYS_NAME)
else()
  message(FATAL_ERROR "Couldn't determine the OS name. Pass -DCMAKE_SYSTEM_NAME=os_name to cmake.")
endif()
###========================================


###========================================
### Get the name of the platform (hera, stampede, etc)
### This one is optional, defaults to SYS_NAME
###========================================
if(CMAKE_Platform)
  string(TOLOWER ${CMAKE_Platform} CMAKE_Platform)
  set(CMAKE_Platform ${CMAKE_Platform} CACHE STRING "Add platform specific macros if requested." FORCE)
else()
  set(CMAKE_Platform ${SYS_NAME} CACHE STRING "Add platform specific macros if requested." FORCE)
endif()
###========================================


###========================================
### Set the default build type
###========================================
### Set the default build type
if(CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE ${CMAKE_BUILD_TYPE} CACHE STRING "Choose the type of
      build, options are: None(CMAKE_CXX_FLAGS or CMAKE_C_FLAGS used) Debug
      Release RelWithDebInfo MinSizeRel." FORCE)
else()
  set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the type of build,
      options are: None(CMAKE_CXX_FLAGS or CMAKE_C_FLAGS used) Debug Release
      RelWithDebInfo MinSizeRel." FORCE)
endif()

if(${CMAKE_BUILD_TYPE} STREQUAL "Debug" OR ${CMAKE_BUILD_TYPE} STREQUAL "RelWithDebInfo")
  set(DEBUG TRUE)
else()
  set(DEBUG FALSE)
endif()
###========================================


###========================================
### Set the program configs
###========================================
include(CMakePackageConfigHelpers)
#include(GNUInstallDirs)
###========================================


###========================================
### Installation directories
###========================================
if(NOT DEFINED ENV{INSTALL_DIR} AND NOT INSTALL_DIR)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}" CACHE STRING
         "Install path prefix, prepended onto install directories." FORCE)
else()
  trim_var(INSTALL_DIR)

  if(NOT "${INSTALL_DIR}" STREQUAL "")
    set(CMAKE_INSTALL_PREFIX "${INSTALL_DIR}" CACHE STRING
           "Install path prefix, prepended onto install directories." FORCE)
  elseif(NOT "$ENV{INSTALL_DIR}" STREQUAL "")
    set(CMAKE_INSTALL_PREFIX "$ENV{INSTALL_DIR}" CACHE STRING
           "Install path prefix, prepended onto install directories." FORCE)
  else()
    set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}" CACHE STRING
           "Install path prefix, prepended onto install directories." FORCE)
  endif()
endif()

PROGInstallDirs(${CMAKE_INSTALL_PREFIX})

### Put the static libraries in the CMakeFiles folder so they don't
### contaminate the build directory
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/CMakeFiles)
###========================================


message("")
message(STATUS "PROJECT_NAME ................ ${PROJECT_NAME}")
message(STATUS "PROJECT_VERSION ............. ${PROJECT_VERSION}")
message(STATUS "PROJECT_SOURCE_DIR .......... ${PROJECT_SOURCE_DIR}")
message(STATUS "PROJECT_BINARY_DIR .......... ${PROJECT_BINARY_DIR}")
message(STATUS "CMAKE_C_COMPILER ............ ${CMAKE_C_COMPILER}")
message(STATUS "CMAKE_C_COMPILER_ID ......... ${CMAKE_C_COMPILER_ID} ${CMAKE_C_COMPILER_VERSION} (${C_COMPILER_NAME})")
message(STATUS "CMAKE_CXX_COMPILER .......... ${CMAKE_CXX_COMPILER}")
message(STATUS "CMAKE_CXX_COMPILER_ID ....... ${CMAKE_CXX_COMPILER_ID} ${CMAKE_CXX_COMPILER_VERSION} (${CXX_COMPILER_NAME})")
message(STATUS "CMAKE_Fortran_COMPILER ...... ${CMAKE_Fortran_COMPILER}")
message(STATUS "CMAKE_Fortran_COMPILER_ID ... ${CMAKE_Fortran_COMPILER_ID} ${CMAKE_Fortran_COMPILER_VERSION} (${Fortran_COMPILER_NAME})")
message(STATUS "CMAKE_SYSTEM_NAME ........... ${CMAKE_SYSTEM_NAME}")
message(STATUS "CMAKE_Platform .............. ${CMAKE_Platform}")
message(STATUS "SYS_NAME .................... ${SYS_NAME}")
message(STATUS "SYS_COMPILER_ID ............. ${SYS_COMPILER_ID}")
message(STATUS "CMAKE_BUILD_TYPE ............ ${CMAKE_BUILD_TYPE}")
message(STATUS "CMAKE_SOURCE_DIR ............ ${CMAKE_SOURCE_DIR}")
message(STATUS "CMAKE_BINARY_DIR ............ ${PROJECT_BINARY_DIR}")
message(STATUS "CMAKE_MODULE_PATH ........... ${CMAKE_MODULE_PATH}")
message(STATUS "CMAKE_INSTALL_PREFIX ........ ${CMAKE_INSTALL_PREFIX}")
message(STATUS "CMAKE_INSTALL_BINDIR ........ ${CMAKE_INSTALL_BINDIR}")
message(STATUS "CMAKE_INSTALL_LIBDIR ........ ${CMAKE_INSTALL_LIBDIR}")
message(STATUS "CMAKE_INSTALL_INCLUDEDIR .... ${CMAKE_INSTALL_INCLUDEDIR}")
message(STATUS "CMAKE_INSTALL_DATADIR ....... ${CMAKE_INSTALL_DATADIR}")
message(STATUS "CMAKE_INSTALL_DOCDIR ........ ${CMAKE_INSTALL_DOCDIR}")
message("")


##################################################
### BUILD ENVIRONMENT
##################################################

### Add a distclean target to the Makefile
add_custom_target(distclean
                  COMMAND ${CMAKE_COMMAND} -P ${CMAKE_SOURCE_DIR}/cmake/distclean.cmake
                 )

### Include Macros to build components.
### These are helper macros to simplify subsequent compilations.
include(macros)

### Determine some architecture specific parameters.
include(arch)

### Generate a selection list of options.
### User can modify these either from the command line or cmake-gui.
include(options)

### Include compiler specific macros and flags
include(configure_${SYS_COMPILER_ID})

### Include additional platform specific macros and flags
include(configure_${SYS_COMPILER_ID}.${CMAKE_Platform})

### Ensure that the netCDF libraries are working
### This is a required library.
include(check_netcdf)

### For CSV read/write capability in PaHM we use fortran-csv-module.
### This capability is now compiled from the main src directory.
### We keep third_party_open/fortran-csv-module for reference only.
#add_subdirectory(${CMAKE_SOURCE_DIR}/third_party_open/fortran-csv-module)

### From ADCIRC v55 source code
### This should be default - Future updates
if(ENABLE_GRIB2)
  set(JAS_ENABLE_SHARED FALSE CACHE BOOL "Enable shared JAS")
#  add_subdirectory(${CMAKE_SOURCE_DIR}/third_party_open/wgrib2 EXCLUDE_FROM_ALL)
  add_subdirectory(${CMAKE_SOURCE_DIR}/third_party_open/wgrib2)
endif(ENABLE_GRIB2)

### From ADCIRC v55 source code
### This should be default - Future updates
if(ENABLE_DATETIME)
#  add_subdirectory(${CMAKE_SOURCE_DIR}/third_party_open/datetime_fortran EXCLUDE_FROM_ALL)
  add_subdirectory(${CMAKE_SOURCE_DIR}/third_party_open/datetime_fortran)
endif(ENABLE_DATETIME)

### Enable NetCDF95 wrappers to NetCDF calls - Do we need this?
if(ENABLE_NETCDF95)
#  add_subdirectory(${CMAKE_SOURCE_DIR}/third_party_open/NetCDF95 EXCLUDE_FROM_ALL)
  add_subdirectory(${CMAKE_SOURCE_DIR}/third_party_open/NetCDF95)
endif(ENABLE_NETCDF95)

### Build PaHM and its libraries
include(pahm)

#add_subdirectory(doc)
