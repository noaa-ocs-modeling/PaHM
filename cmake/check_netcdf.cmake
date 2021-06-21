###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### check_netcdf.cmake :: Checks for the availability and usability of the netcdf libraries
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

###========================================
### Defines the following NetCDF variables for use
### in other parts of the project:
###
###    NetCDF_FOUND                     - System has NetCDF
###    NetCDF_INCLUDE_DIRS              - the NetCDF include directories
###    NetCDF_LIBRARIES                 - the NetCDF libraries
###    NetCDF_VERSION                   - the version of NetCDF
###    NetCDF_CONFIG_EXECUTABLE         - the netcdf-config executable if found
###    NetCDF_PARALLEL                  - Boolean True if NetCDF4 has parallel IO support via hdf5 and/or pnetcdf
###    NetCDF_HAS_PNETCDF               - Boolean True if NetCDF4 has pnetcdf support
###
###    NetCDF_<comp>_FOUND              - whether the component is found
###    NetCD_<comp>_LIBRARIES           - the libraries for the component
###    NetCDF_<comp>_LIBRARY_SHARED     - Boolean is true if libraries for component are shared
###    NetCDF_<comp>_INCLUDE_DIRS       - the include directories for specified component
###    NetCDF::NetCDF_<comp>            - target of component to be used with target_link_libraries()
###    Where: the <comp> string is one of C, CXX, Fortran (case matters)
###
### Influencial environment or system variables:
### The following paths will be searched in order if set in CMake (first priority)
### or environment (second priority). Choose one or more of the following naming schemes:
###
###    NetCDF[_<comp>]_ROOT             - root of NetCDF installation
###    NetCDF4[_<comp>]_ROOT            - root of NetCDF installation
###    NETCDF4[_<comp>]_ROOT            - root of NetCDF installation
###    NETCDF[_<comp>]_ROOT             - root of NetCDF installation
###    NetCDF[_<comp>]_PATH             - root of NetCDF installation
###    NetCDF4[_<comp>]_PATH            - root of NetCDF installation
###    NETCDF4[_<comp>]_PATH            - root of NetCDF installation
###    NETCDF[_<comp>]_PATH             - root of NetCDF installation
### Also:
###    NetCDF[_<comp>]                  - root of NetCDF installation
###    NetCDF4[_<comp>]                 - root of NetCDF installation
###    NETCDF4[_<comp>]                 - root of NetCDF installation
###    NETCDF[_<comp>]                  - root of NetCDF installation
###    Where: the OPTIONAL <comp> string is one of C, CXX, Fortran (case matters)
###
### The search process begins with locating NetCDF Include headers.  If these are in a non-standard location,
### set one of the following CMake or environment variables to point to the location:
###    NetCDF_INCLUDE_DIR    or   NetCDF_${comp}_INCLUDE_DIR
###    NetCDF_INCLUDE_DIRS   or   NetCDF_${comp}_INCLUDE_DIR
###========================================

cmake_policy(SET CMP0074 NEW)

if(NOT _DEFINED_NETCDF)
  foreach( _var IN ITEMS DIR PATH ROOT)
    if(NOT "${NETCDF_${_var}}" STREQUAL "")
      set(NETCDFHOME  "${NETCDF_${_var}}")
      set(NETCDF_DIR  "${NETCDF_${_var}}")
      set(NETCDF_ROOT "${NETCDF_${_var}}")
      set(NETCDF_PATH "${NETCDF_${_var}}")
      set(_DEFINED_NETCDF TRUE)
    elseif(NOT "$ENV{NETCDF_${_var}}" STREQUAL "")
      set(NETCDFHOME  "$ENV{NETCDF_${_var}}")
      set(NETCDF_DIR  "$ENV{NETCDF_${_var}}")
      set(NETCDF_ROOT "$ENV{NETCDF_${_var}}")
      set(NETCDF_PATH "$ENV{NETCDF_${_var}}")
      set(_DEFINED_NETCDF TRUE)
    endif()
  endforeach()
endif()
  
if(NOT PROG_comps_lang)
  set(PROG_comps_lang C Fortran)
endif()
find_package(NetCDF REQUIRED COMPONENTS ${PROG_comps_lang})

set(NetCDF_AdditionalLibs "" CACHE STRING "Additional libraries that may be required for NetCDF")



if(NOT NetCDF_FOUND)
  message(SEND_ERROR "Specify the NetCDF path on the following screen")
else(NOT NetCDF_FOUND)
  set(netcdf3_f90_code 
      "
              PROGRAM netCDF3Test
                USE NETCDF
                IMPLICIT NONE

                INTEGER :: IERR
                INTEGER :: NCID

                IERR = NF90_OPEN('test.nc', NF90_NOWRITE, NCID)

              END PROGRAM
      "
     )

  set(netcdf4_f90_code
      "
              PROGRAM netCDFTest
                USE NETCDF
                IMPLICIT NONE

                INTEGER :: IERR
                INTEGER :: NCID
                INTEGER :: VARID

                IERR = NF90_DEF_VAR_DEFLATE(NCID, VARID, 1, 1, 2)

              END PROGRAM netCDFTest
      "
     )

  file(WRITE "${CMAKE_BINARY_DIR}/CMakeFiles/netcdf3check.f90" "${netcdf3_f90_code}")
  file(WRITE "${CMAKE_BINARY_DIR}/CMakeFiles/netcdf4check.f90" "${netcdf4_f90_code}")

  try_compile(NETCDF3_TEST
              "${CMAKE_BINARY_DIR}"
              SOURCES "${CMAKE_BINARY_DIR}/CMakeFiles/netcdf3check.f90"
              CMAKE_FLAGS "-DINCLUDE_DIRECTORIES=${NETCDF_INCLUDE_DIRS}"
              LINK_LIBRARIES "${NETCDF_LIBRARIES}"
              LINK_LIBRARIES "${NetCDF_AdditionalLibs}"
              OUTPUT_VARIABLE NetCDF3_LOG)

  try_compile(NETCDF4_TEST
              "${CMAKE_BINARY_DIR}"
              SOURCES "${CMAKE_BINARY_DIR}/CMakeFiles/netcdf4check.f90"
              CMAKE_FLAGS "-DINCLUDE_DIRECTORIES=${NetCDF_INCLUDE_DIRS}"
              LINK_LIBRARIES "${NetCDF_LIBRARIES}" 
              LINK_LIBRARIES "${NetCDF_AdditionalLibs}"
              OUTPUT_VARIABLE NetCDF4_LOG)

  if(NETCDF3_TEST)
    set(NETCDF_WORKING TRUE)

    if(NETCDF4_TEST)
      set(NETCDF4_WORKING TRUE)
    endif(NETCDF4_TEST)
  else(NETCDF3_TEST)
    set(NETCDF_WORKING FALSE)
    set(NETCDF4_WORKING FALSE)
    message(SEND_ERROR "The NetCDF library specified is not compatible with the specified compilers."
                       "It will not be enabled. Specify a different path or disable NetCDF."
                       "Ensure that you specify the same compilers to build PAHM as were used to build the NetCDF library.\n")
  endif(NETCDF3_TEST)
endif(NOT NetCDF_FOUND)
