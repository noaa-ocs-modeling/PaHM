###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### macros.cmake :: Macros to aid the compile/link processes
###
### Author:
###########################################################################


###========================================
### Macros for CompilerFlags
###========================================
macro(addCompilerFlags TARGET)
  set(LOCAL_COMPILER_FLAGS "${FORTRAN_FLAGS_R8} ${PAHM_ADDITIONAL_FLAGS}")
  set(LOCAL_COMPILER_DEFINITIONS "${PRECISION_FLAG} ${DEBUG_FLAG}")

  string(STRIP "${LOCAL_COMPILER_FLAGS}" LOCAL_COMPILER_FLAGS)
  separate_arguments(LOCAL_COMPILER_DEFINITIONS)

  addFortranCSV(${TARGET})
  addNetCDF(${TARGET})
  addNetCDF95(${TARGET})
  addDatetime(${TARGET})
  addGrib2(${TARGET})

  set_target_properties(${TARGET} PROPERTIES Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/CMakeFiles/mod/${TARGET})
  set_target_properties(${TARGET} PROPERTIES COMPILE_FLAGS "${LOCAL_COMPILER_FLAGS}")
  target_compile_definitions(${TARGET} PRIVATE "${LOCAL_COMPILER_DEFINITIONS}")

  unset(LOCAL_COMPILER_FLAGS)
  unset(LOCAL_COMPILER_DEFINITIONS)
endmacro(addCompilerFlags)


###========================================
### Macros for fortran-csv-module
###========================================
macro(addFortranCSV TARGET)
  if(ENABLE_FORTRANCSV)
    target_compile_definitions(${TARGET} PRIVATE FORTRANCSV)
    target_include_directories(${TARGET} PRIVATE ${CMAKE_BINARY_DIR}/CMakeFiles/mod/fortrancsv) 
    target_link_libraries(${TARGET} fortrancsv)
    add_dependencies(${TARGET} fortrancsv)
  endif()
endmacro(addFortranCSV)


###========================================
### Macros for Grib2
###========================================
macro(addGrib2 TARGET)
  if(ENABLE_GRIB2)
    target_compile_definitions(${TARGET} PRIVATE GRIB2API)
    target_include_directories(${TARGET} PRIVATE ${CMAKE_BINARY_DIR}/CMakeFiles/mod/grib2) 
    target_link_libraries(${TARGET} grib2 ipolates geo)
    add_dependencies(${TARGET} grib2 ipolates geo)
  endif(ENABLE_GRIB2)
endmacro(addGrib2)


###========================================
### Macros for DateTime
###========================================
macro(addDatetime TARGET)
  if(ENABLE_DATETIME)
    target_compile_definitions(${TARGET} PRIVATE DATETIME)
    target_include_directories(${TARGET} PRIVATE ${CMAKE_BINARY_DIR}/CMakeFiles/mod/datetime) 
    target_link_libraries(${TARGET} datetime)
    add_dependencies(${TARGET} datetime)
  endif(ENABLE_DATETIME)
endmacro(addDatetime)


###========================================
### Macros for NetCDF95
###========================================
macro(addNetCDF95 TARGET)
  if(ENABLE_NETCDF95)
    target_compile_definitions(${TARGET} PRIVATE NETCDF95)
    target_include_directories(${TARGET} PRIVATE ${CMAKE_BINARY_DIR}/CMakeFiles/mod/netcdf95) 
    target_link_libraries(${TARGET} netcdf95)
    add_dependencies(${TARGET} netcdf95)
  endif(ENABLE_NETCDF95)
endmacro(addNetCDF95)


###========================================
### Macros for NetCDF
###========================================
macro(addNetCDF TARGET)
  if(NETCDF_WORKING)
    target_compile_definitions(${TARGET} PRIVATE NETCDF)
    if(NETCDF4_WORKING)
      target_compile_definitions(${TARGET} PRIVATE HAVE_NETCDF4)
      target_compile_definitions(${TARGET} PRIVATE NETCDF_CAN_DEFLATE)
    endif(NETCDF4_WORKING)
    target_include_directories(${TARGET} PRIVATE ${NETCDF_INCLUDE_DIRS})
    target_link_libraries(${TARGET} ${NETCDF_LIBRARIES} ${NetCDF_AdditionalLibs})
  endif(NETCDF_WORKING)
endmacro(addNetCDF)
