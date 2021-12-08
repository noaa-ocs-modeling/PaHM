###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###
### DEFINITIONS FOR THE "linux" ENVIRONMENT THAT USES THE GNU COMPILERS
###########################################################################

###========================================
### Check the environment and set required variables
###========================================
include(PlatformFuncs)


########## BEG:: CHECK FOR HDF5 ##########
get_env_hdf5()

if(NOT _DEFINED_HDF5)
  #Do nothing
endif()
########## END:: CHECK FOR HDF5 ##########


########## BEG:: CHECK FOR NETCDF ##########
get_env_netcdf()

if(NOT _DEFINED_NETCDF)
  #message(FATAL_ERROR "Couldn't find any of the NETCDF* environment variables.\n"
  #            "Load the appropriate NetCDF environment module before running cmake.")
endif()
########## END:: CHECK FOR NETCDF ##########


########## BEG:: PLATFORM CUSTOMIZED SETTINGS ##########
# These are for the standard gcc/gfortran installation
set(NETCDF_C_INCLUDE_DIR "/usr/include")
set(NETCDF_CXX_INCLUDE_DIR "/usr/include")
set(NETCDF_Fortran_INCLUDE_DIR "/usr/lib64/gfortran/modules")

#set(_DEFINED_HDF5 TRUE)
#set(_DEFINED_NETCDF TRUE)
########## END:: PLATFORM CUSTOMIZED SETTINGS ##########
