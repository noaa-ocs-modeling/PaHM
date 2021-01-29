###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###
### DEFINITIONS FOR THE "hera" HPC ENVIRONMENT THAT USES THE INTEL COMPILERS
###########################################################################

# Check if the intel module is loaded so we have access to the Intel compilers.
if("$ENV{INTEL_LICENSE_FILE}" STREQUAL "")
  message(SEND_ERROR "The intel module is not loaded. Load the module before running this cmake")
endif()

###========================================
### Check the environment and set required variables
###========================================
if(NOT "$ENV{HDF5_ROOT}" STREQUAL "")
  set(HDF5HOME "${HDF5_ROOT}")
  set(HDF5_PATH "${HDF5_ROOT}")
  set(HDF5_ROOT "${HDF5_ROOT}")
elseif(NOT "$ENV{HDF5}" STREQUAL "")
  set(HDF5HOME  "$ENV{HDF5}")
  set(HDF5_PATH "$ENV{HDF5}")
  set(HDF5_ROOT "$ENV{HDF5}")
else()
  # Do nothing
endif()

if(NOT "$ENV{NETCDF_ROOT}" STREQUAL "")
  set(NETCDFHOME  "$ENV{NETCDF_ROOT}")
  set(NETCDF_PATH "$ENV{NETCDF_ROOT}")
  set(NETCDF_ROOT "$ENV{NETCDF_ROOT}")
elseif(NOT "$ENV{NETCDF}" STREQUAL "")
  set(NETCDFHOME  "$ENV{NETCDF}")
  set(NETCDF_PATH "$ENV{NETCDF}")
  set(NETCDF_ROOT "$ENV{NETCDF}")
else()
  message(SEND_ERROR "Load the appropriate NetCDF environment module before running cmake.")
endif()
