###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###
### DEFINITIONS FOR THE "stampede" HPC ENVIRONMENT THAT USES THE GNU COMPILERS
###########################################################################

# Check if the gcc module is loaded so we have access to the newest GCC compilers.
if("$ENV{TACC_GCC_DIR}" STREQUAL "")
  message(SEND_ERROR "The gcc module is not loaded. Load the module before running this cmake")
endif()

###========================================
### Check the environment and set required variables
###========================================
if(NOT "$ENV{TACC_HDF5_DIR}" STREQUAL "")
  set(HDF5HOME "${TACC_HDF5_DIR}")
  set(HDF5_PATH "${TACC_HDF5_DIR}")
  set(HDF5_ROOT "${TACC_HDF5_DIR}")
elseif(NOT "$ENV{HDF5}" STREQUAL "")
  set(HDF5HOME  "$ENV{HDF5}")
  set(HDF5_PATH "$ENV{HDF5}")
  set(HDF5_ROOT "$ENV{HDF5}")
else()
  # Do nothing
endif()

if(NOT "$ENV{TACC_NETCDF_DIR}" STREQUAL "")
  set(NETCDFHOME  "$ENV{TACC_NETCDF_DIR}")
  set(NETCDF_PATH "$ENV{TACC_NETCDF_DIR}")
  set(NETCDF_ROOT "$ENV{TACC_NETCDF_DIR}")
elseif(NOT "$ENV{NETCDF}" STREQUAL "")
  set(NETCDFHOME  "$ENV{NETCDF}")
  set(NETCDF_PATH "$ENV{NETCDF}")
  set(NETCDF_ROOT "$ENV{NETCDF}")
else()
  message(SEND_ERROR "Load the appropriate NetCDF environment module before running cmake.")
endif()
