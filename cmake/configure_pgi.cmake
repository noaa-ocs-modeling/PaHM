###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### configure_pgi.cmake :: Global options and definitions for the "PGI" compilers
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -Mextend -fast")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fast")

if(DEBUG)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -g -O0 -Minform,inform -Mbounds -Mchkfpstk -Mchkptr -Mchkstk")
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -traceback")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -O0 -traceback")
else()
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -O2)
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2")
endif()

if(SYS_BUILD_64BIT)
  set(FORTRAN_FLAGS_R8 "-i4 -r8 -Mr8 -Mr8intrinsics")
else()
  set(FORTRAN_FLAGS_R8 "-i4 -r4")
endif()

if(SYS_ARCH EQUAL 64)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -mcmodel=medium")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcmodel=medium")
else()
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS}")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
endif()
