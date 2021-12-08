###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### pahm.cmake :: Definitions to build pahm, libpahm.a and/or libpahm.so
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###########################################################################

if(PAHM_BUILD_EXECUTABLE OR PAHM_BUILD_STATIC_LIB OR PAHM_BUILD_SHARED_LIB)
  set(_target_var pahm)

  set(${_target_var}_SOURCES
      ${CMAKE_SOURCE_DIR}/version.F90
      ${CMAKE_SOURCE_DIR}/src/sizes.F90
      ${CMAKE_SOURCE_DIR}/src/global.F90
      ${CMAKE_SOURCE_DIR}/src/messages.F90
      ${CMAKE_SOURCE_DIR}/src/timedateutils.F90
      ${CMAKE_SOURCE_DIR}/src/utilities.F90
      ${CMAKE_SOURCE_DIR}/src/sortutils.F90
      ${CMAKE_SOURCE_DIR}/src/csv_parameters.F90
      ${CMAKE_SOURCE_DIR}/src/csv_utilities.F90
      ${CMAKE_SOURCE_DIR}/src/csv_module.F90      
      ${CMAKE_SOURCE_DIR}/src/mesh.F90
      ${CMAKE_SOURCE_DIR}/src/vortex.F90
      ${CMAKE_SOURCE_DIR}/src/parwind.F90
      ${CMAKE_SOURCE_DIR}/src/netcdfio.F90
      ${CMAKE_SOURCE_DIR}/src/driver_mod.F90
      ${CMAKE_SOURCE_DIR}/src/pahm.F90
     )

  set(lib${_target_var}_SOURCES
      ${CMAKE_SOURCE_DIR}/version.F90
      ${CMAKE_SOURCE_DIR}/src/sizes.F90
      ${CMAKE_SOURCE_DIR}/src/global.F90
      ${CMAKE_SOURCE_DIR}/src/messages.F90
      ${CMAKE_SOURCE_DIR}/src/timedateutils.F90
      ${CMAKE_SOURCE_DIR}/src/utilities.F90
      ${CMAKE_SOURCE_DIR}/src/sortutils.F90
      ${CMAKE_SOURCE_DIR}/src/csv_parameters.F90
      ${CMAKE_SOURCE_DIR}/src/csv_utilities.F90
      ${CMAKE_SOURCE_DIR}/src/csv_module.F90      
      ${CMAKE_SOURCE_DIR}/src/mesh.F90
      ${CMAKE_SOURCE_DIR}/src/vortex.F90
      ${CMAKE_SOURCE_DIR}/src/parwind.F90
      ${CMAKE_SOURCE_DIR}/src/netcdfio.F90
      ${CMAKE_SOURCE_DIR}/src/driver_mod.F90
     )

  PROGInstallDirs(${CMAKE_INSTALL_PREFIX})


  ###========================================
  ### Build the program executable
  ###========================================
  if(PAHM_BUILD_EXECUTABLE)
    add_executable(${_target_var} ${${_target_var}_SOURCES})

    addCompilerFlags(${_target_var})

    get_target_property(_target_mod_dir ${_target_var} Fortran_MODULE_DIRECTORY)
    if(${_target_mod_dir} STREQUAL "")
      set(_target_mod_dir ${CMAKE_Fortran_MODULE_DIRECTORY})
      if(${_target_mod_dir} STREQUAL "")
        set(_target_mod_dir ${CMAKE_BINARY_DIR}/CMakeFiles/mod/${_target_var})
      endif()
    endif()

    install(TARGETS ${_target_var} RUNTIME  DESTINATION ${CMAKE_INSTALL_BINDIR})

    install(DIRECTORY "${_target_mod_dir}/"
            DESTINATION "include"
            FILES_MATCHING
            PATTERN "*.mod")
  endif(PAHM_BUILD_EXECUTABLE)


  ###========================================
  ### Build the program static library
  ###========================================
  if(PAHM_BUILD_STATIC_LIB)
    set(_target_var_lib lib${_target_var}_static)

    add_library(${_target_var_lib} STATIC ${lib${_target_var}_SOURCES})

    addCompilerFlags(${_target_var_lib})

    set_target_properties(${_target_var_lib} PROPERTIES OUTPUT_NAME ${_target_var})
    set_target_properties(${_target_var_lib} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

    install(TARGETS ${_target_var_lib} RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
                                       ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
                                       LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

    unset(_target_var_lib)
  endif(PAHM_BUILD_STATIC_LIB)


  ###========================================
  ### Build the program shared library
  ###========================================
  if(PAHM_BUILD_SHARED_LIB)
    set(_target_var_lib lib${_target_var}_shared)

    add_library(${_target_var_lib} SHARED ${lib${_target_var}_SOURCES})

    addCompilerFlags(${_target_var_lib})

    set_target_properties(${_target_var_lib} PROPERTIES OUTPUT_NAME ${_target_var})
    set_property(TARGET ${_target_var_lib} PROPERTY POSITION_INDEPENDENT_CODE ON)
    set_target_properties(${_target_var_lib} PROPERTIES VERSION ${PROG_VERSION} SOVERSION ${PROG_MAJOR})

    install(TARGETS ${_target_var_lib} RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
                                       ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
                                       LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

    unset(_target_var_lib)
  endif(PAHM_BUILD_SHARED_LIB)

  unset(_target_var)
endif(PAHM_BUILD_EXECUTABLE OR PAHM_BUILD_STATIC_LIB OR PAHM_BUILD_SHARED_LIB)
