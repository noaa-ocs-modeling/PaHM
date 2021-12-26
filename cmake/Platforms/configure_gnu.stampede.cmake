###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###
### DEFINITIONS FOR THE "stampede" HPC ENVIRONMENT THAT USES THE GNU COMPILERS
###########################################################################

# Check if the gcc module is loaded so we have access to the newest GCC compilers.
#if("$ENV{TACC_GCC_DIR}" STREQUAL "")
#  message(FATAL_ERROR "The gcc module is not loaded. Load the module before running this cmake")
#endif()
if("$ENV{TACC_GCC_DIR}" STREQUAL "")
  message(WARNING "The TACC_GCC_DIR variable is not set. Is the gcc module loaded?. If not, load the module before running this cmake")
endif()

###========================================
### Check the environment and set required variables
###========================================
include(PlatformFuncs)


########## BEG:: CHECK FOR HDF5 ##########
get_env_hdf5(TACC_HDF5_DIR)

if(NOT _DEFINED_HDF5)
  # Do nothing
endif()
########## END:: CHECK FOR HDF5 ##########


########## BEG:: CHECK FOR NETCDF ##########
get_env_netcdf(TACC_NETCDF_DIR)

if(NOT _DEFINED_NETCDF)
  #message(FATAL_ERROR "Couldn't find any of the NETCDF* environment variables.\n"
  #            "Load the appropriate NetCDF environment module before running cmake.")
endif()
########## END:: CHECK FOR NETCDF ##########


########## BEG:: PLATFORM CUSTOMIZED SETTINGS ##########
#set(_DEFINED_HDF5 TRUE)
#set(_DEFINED_NETCDF TRUE)
########## END:: PLATFORM CUSTOMIZED SETTINGS ##########
