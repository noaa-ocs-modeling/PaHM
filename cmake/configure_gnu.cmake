###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### configure_gnu.cmake :: Global options and definitions for the "GNU" compilers
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -ffree-line-length-none -fno-range-check -fbacktrace")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

if(DEBUG)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -O0 -ggdb -fno-unsafe-math-optimizations -frounding-math")
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -fsignaling-nans -ffpe-trap=invalid,zero,overflow -fbounds-check")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0 -ggdb")
else()
  set(CMAKE_Fortran_FLAGS "-O2 ${CMAKE_Fortran_FLAGS}")
  set(CMAKE_C_FLAGS "-O2 ${CMAKE_C_FLAGS}")
endif()

if(SYS_BUILD_64BIT)
  set(FORTRAN_FLAGS_R8 "-fdefault-real-8 -fdefault-double-8")
endif()

if(SYS_ARCH EQUAL 64)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -mcmodel=medium")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
else()
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS}")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
endif()
