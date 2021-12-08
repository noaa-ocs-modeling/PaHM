###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### configure_intel.cmake :: Global options and definitions for the "INTEL" compilers
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################
# Include the option "-heap-arrays 0" or set the stack size to unlimited "ulimit -s unlimited" in your bash login

set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -extend-source 132 -heap-arrays 0 -fno-alias -sox -qno-opt-dynamic-align")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -sox")

if(DEBUG)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -g -O0 -check bounds -check noarg_temp_created -check nopointer -warn -warn noerrors")
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -fp-stack-check -fstack-protector-all -fpe0 -debug -traceback -ftrapuv")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -g -ftrapuv -traceback")
else()
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -O2 -debug minimal -nowarn -fp-model source")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2 -debug minimal -fp-model source")
endif()

if(SYS_BUILD_64BIT)
  set(FORTRAN_FLAGS_R8 "-i4 -real-size 64")
else()
  set(FORTRAN_FLAGS_R8 "-i4 -real-size 32")
endif()

if(SYS_ARCH EQUAL 64)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -assume byterecl -mcmodel=medium")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
else()
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -assume byterecl")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
endif()
