###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### arch.cmake :: Architecture specifications
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

### Determine the bitness of the host operating system (32-bit/64-bit).
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
#  set(SYS_BUILD_64BIT ON CACHE BOOL "Enable 64-bit arithmetic (double precision)")
  set(SYS_ARCH 64)
else()
#  set(SYS_BUILD_64BIT OFF CACHE BOOL "Disable 64-bit arithmetic (single precision)")
  set(SYS_ARCH 32)
endif()

set(SYS_BUILD_64BIT ON CACHE BOOL "Enable 64-bit arithmetic (double precision)")
  
### Set the PRECISION_FLAG for the model calculations
if(SYS_BUILD_64BIT)
  set(PRECISION_FLAG REAL8)
else()
  set(PRECISION_FLAG REAL4)
endif()

###  Do not include rpath definitions in the resulting shared libraries
set(CMAKE_SKIP_INSTALL_RPATH ON CACHE BOOL
      "If set, runtime paths are not added when installing shared libraries." FORCE)
set(CMAKE_SKIP_RPATH ON CACHE BOOL
      "If set, runtime paths are not added when using shared libraries." FORCE)
