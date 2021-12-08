###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### options_select.cmake :: Select executables and libraries to build
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

### Debugging
option(PAHM_DEBUG_INFO "Write detailed information in the log file." OFF)

### Additional flags
set(PAHM_ADDITIONAL_FLAGS "" CACHE STRING "Additional flags to compile PaHM with")

### Executables
option(PAHM_BUILD_EXECUTABLE "Build the PaHM executable" ON)
option(PAHM_BUILD_SHARED_LIB "Build the shared library version of PaHM" OFF)
option(PAHM_BUILD_STATIC_LIB "Build the static library version of PaHM" ON)
# This should be default - Future updates, no option
option(ENABLE_GRIB2          "Enable grib2api static libraries." OFF)
# This should be default - Future updates, no option
option(ENABLE_DATETIME       "Enable datetime static libraries." OFF)
# NetCDF95 wrappers functionality to NetCDF calls - Do we need this?
option(ENABLE_NETCDF95       "Enable netcdf95 static libraries." OFF)

if(PAHM_DEBUG_INFO)
  set(DEBUG_FLAG "DEBUG_INFO")
else()
  unset(DEBUG_FLAG)
endif()
