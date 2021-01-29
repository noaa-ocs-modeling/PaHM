###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###
### DEFINITIONS FOR THE "wcoss" HPC ENVIRONMENT THAT USES THE PGI COMPILERS
###########################################################################

# Check if the pgi module is loaded so we have access to the PGI compilers.
message(SEND_ERROR "The Portland Group family of compilers are not supported on this platform.")

###========================================
### Check the environment and set required variables
###========================================
