cmake_minimum_required(VERSION 3.13)
project(NetCDF95 Fortran)
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})

file(STRINGS file_list file_list_var)
add_library(netcdf95 ${file_list_var})

set_target_properties(netcdf95 PROPERTIES Fortran_MODULE_DIRECTORY
  ${PROJECT_BINARY_DIR}/modules)

target_include_directories(netcdf95 PUBLIC
  $<BUILD_INTERFACE:${PROJECT_BINARY_DIR}/modules>)

if(CMAKE_Fortran_COMPILER_ID MATCHES NAG)
  target_include_directories(netcdf95 PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
endif()

find_package(NetCDF REQUIRED)
include(FindPkgConfig)
pkg_check_modules(netcdf-fortran REQUIRED IMPORTED_TARGET netcdf-fortran)

target_link_libraries(netcdf95 PUBLIC PkgConfig::netcdf-fortran
  PRIVATE NetCDF::NetCDF)

target_include_directories(netcdf95 PUBLIC ${netcdf-fortran_INCLUDEDIR})
  
include(ConfigureCompilerFlags)
add_subdirectory(Test)

include(CMakePackageConfigHelpers)
configure_package_config_file(Config.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
    INSTALL_DESTINATION lib/cmake/${PROJECT_NAME})

if(CMAKE_Fortran_COMPILER_ID MATCHES NAG|Intel)
  set(install_include_dir include/${PROJECT_NAME})
  install(DIRECTORY ${PROJECT_BINARY_DIR}/modules/ DESTINATION
    ${install_include_dir})
else()
  set(install_include_dir include)
  install(FILES ${PROJECT_BINARY_DIR}/modules/netcdf95.mod TYPE INCLUDE)
endif()

install(TARGETS netcdf95 EXPORT ${PROJECT_NAME}Targets LIBRARY
  INCLUDES DESTINATION ${install_include_dir})
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
  DESTINATION lib/cmake/${PROJECT_NAME})
install(EXPORT ${PROJECT_NAME}Targets DESTINATION lib/cmake/${PROJECT_NAME})
export(EXPORT ${PROJECT_NAME}Targets)
