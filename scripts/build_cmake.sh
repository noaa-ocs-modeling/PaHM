#!/bin/bash

###########################################################################
### Author:  Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###
### Version - 1.0 Mon Nov 16 2020
###########################################################################


###====================
# Make sure that the current working directory is in the PATH
[[ ! :$PATH: == *:".":* ]] && export PATH="${PATH}:."


# Get the directory where the script is located
if [[ $(uname -s) == Darwin ]]; then
#  readonly scrDIR="$(cd "$(dirname "$(greadlink -f -n "${BASH_SOURCE[0]}" )" )" && pwd -P)"
  readonly scrNAME="$( grealpath -s "${BASH_SOURCE[0]}" )"
  readonly scrDIR="$(cd "$(dirname "${scrNAME}" )" && pwd -P)"
else
#  readonly scrDIR="$(cd "$(dirname "$(readlink -f -n "${BASH_SOURCE[0]}" )" )" && pwd -P)"
  readonly scrNAME="$( realpath -s "${BASH_SOURCE[0]}" )"
  readonly scrDIR="$(cd "$(dirname "$(realpath -s "${BASH_SOURCE[0]}")" )" && pwd -P)"
fi

lst="${scrDIR}/functions_build ${scrDIR}/scripts/functions_build functions_build "
funcs=
for ilst in ${lst}
do
  if [ -f "${ilst:-}" ]; then
    funcs="${ilst}"
    break
  fi
done

if [ -n "${funcs:+1}" ]; then
  source "${funcs}"
else
  echo " ### ERROR :: in ${scrNAME}"
  echo "     Cannot load the required file: functions_build"
  echo "     Exiting now ..."
  echo
  exit 1
fi

unset ilst funcs
###====================


#########
# Call ParseArgs to get the user input.
ParseArgs "${@}"


##########
# Set the variables for this script
CLEAN=${MY_CLEAN:-0}

ADD_CMAKE_FLAGS="${MY_ADD_CMAKE_FLAGS}"

[ -n "${MY_COMPILER:+1}" ] && COMPILER="$( toLOWER "$( basename "${MY_COMPILER}" )" )"

TYPE=${MY_TYPE:-R}

[ "${MY_PARMAKE:0}" -gt 1 ] && PARMAKE=${MY_PARMAKE}

PARALLEL=${MY_PARALLEL:-0}
PLATFORM=${MY_PLATFORM:-}
PROJECT_DIR=${MY_PROJECT_DIR:-}

[ -n "${MY_INSTALL_DIR:+1}" ] && INSTALL_DIR=${MY_INSTALL_DIR:-}

[ ${MY_VERBOSE:-0} -ge 1 ] && VERBOSE=${MY_VERBOSE}
##########


##########
# Get the project directories and perform a basic check on them
readonly projDIR="${PROJECT_DIR:-${scrDIR}}"
readonly buildDIR="${projDIR}/build"
if [ ! -f "${projDIR}/CMakeLists.txt" ]; then
  echo "The project directory \"${projDIR}\" does not appear to contain CMakeLists.txt."
  echo "Is this the correct project source directory?"
  echo "Is the CMake build system established for this project?"
  echo "Exiting ..."
  exit 1
fi
##########


##########
# If the user requested to clean the build folder, do the cleaning end exit
if [ ${CLEAN:-0} -ge 1 ]; then
  echo "User requested to only clean the project. Cleaning ..."
  if [ ! -f "${buildDIR}/CMakeCache.txt" ]; then
    echo "Could not find the cache file: ${buildDIR}/CMakeCache.txt."
    echo "Nothing to clean. Exiting ..."

    exit 0
  else
    if [ "${projDIR}" != "${buildDIR}" ]; then
      echo_response=
      while [ -z "${echo_response}" ] ; do
        echo -n "Ready to clean ${buildDIR}? [y/n]: "
        read echo_response
        echo_response="$( getYesNo "${echo_response}" )"
      done

      if [ "${echo_response:-no}" = "no" ]; then
        echo
        echo "User responded: ${echo_response}"
        echo "Exiting now ..."
        echo
        exit 0
      fi

      if [ ${CLEAN:-0} -eq 1 ]; then
        pushd ${buildDIR} >/dev/null 2>&1
          make clean
        popd >/dev/null 2>&1
      fi

      if [ ${CLEAN:-0} -eq 2 ]; then
        if [ -f  ${projDIR}/cmake/distclean.cmake ]; then
          cmake -P ${projDIR}/cmake/distclean.cmake
        else
          rm -rf ${buildDIR}
        fi
      fi

      exit 0
    else
      echo "The \"build\" directory cannot be the same as the \"project\" directory:"
      echo "   projDIR  = ${projDIR}"
      echo "   buildDIR = ${buildDIR}"
    fi
  fi
fi
##########


##########
# Get the compilers to use for this project compilation
case "${COMPILER}" in
  gnu)
     CC=gcc
     CXX=g++
     FC=gfortran
     F90=gfortran
     PCC=mpicc
     PCXX=mpicxx
     PFC=mpif90
     PF90=mpif90
     ;;
  intel)
     CC=icc
     CXX=icpc
     FC=ifort
     F90=ifort
     PCC=mpiicc
     PCXX=mpiicpc
     PFC=mpiifort
     PF90=mpiifort
     ;;
  pgi)
     CC=pgcc
     CXX=pgc++
     FC=pgfortran
     F90=pgfortran
     PCC=pgcc
     PCXX=pgc++
     PFC=pgfortran
     PF90=pgfortran
     ;;
  *) # No defaults. Give the user the option to define the environment variables
     # CC, CXX, FC, F90 before running this script.
     #echo "WARNING: The supplied compiling system \"${COMPILER}\", is not suported."
     #echo "         Supported systems are anyone of: compiling_system=[${MY_COMPILING_SYTEMS}]"
     #echo "         Use: --comp=compiling_system."
     #echo "         Will continue with OS defaults."
     CC=${CC:-}
     CXX=${CXX:-}
     FC=${FC:-}
     F90=${F90:-}
     PCC=${CC:-}
     PCXX=${CXX:-}
     PFC=${FC:-}
     PF90=${F90:-}
     ;;
esac
##########


##########
# Get the CMake build type
case "${TYPE}" in
   D) OPT_TYPE="Debug"          ;;
   R) OPT_TYPE="Release"        ;;
  RD) OPT_TYPE="RelWithDebInfo" ;;
  RD) OPT_TYPE="MinSizeRel"     ;;
   *) OPT_TYPE="Release"        ;;
esac
##########


##########
# Export some environment variables for CMake
export COMPILER=${COMPILER}

if [ "${PARALLEL:-0}" -lt 1 ]; then
  export CC="${CC}"  CXX="${CXX}"  FC="${FC}"  F90="${F90}"
else
  export CC="${PCC}" CXX="${PCXX}" FC="${PFC}" F90="${PF90}"
fi

if [ -n "${INSTALL_DIR:+1}" ]; then
  export INSTALL_DIR=${INSTALL_DIR}
else
  unset INSTALL_DIR
fi

if [ ${VERBOSE:-0} -ge 1 ]; then
  export VERBOSE=${VERBOSE}
else
  unset VERBOSE
fi
##########


##########
# Generate some flags to pass to CMake
CMAKE_FLAGS="-DCMAKE_BUILD_TYPE=${OPT_TYPE}"
[ -n "${PLATFORM:+1}" ]        && CMAKE_FLAGS+=" -DCMAKE_Platform=${PLATFORM}"
[ -n "${VERBOSE:+1}" ]         && CMAKE_FLAGS+=" -DCMAKE_VERBOSE_MAKEFILE=TRUE"


[ -n "${ADD_CMAKE_FLAGS:+1}" ] && CMAKE_FLAGS+=" ${ADD_CMAKE_FLAGS}"
##########


##########
# Get a final user response for the variables
echo
echo "The following variables are defined:"
echo "    PROJECT_SOURCE_DIR = ${projDIR}"
echo "    PROJECT_BINARY_DIR = ${buildDIR}"
echo "    CMAKE_SOURCE_DIR   = ${projDIR}"
echo "    CMAKE_BINARY_DIR   = ${buildDIR}"
echo "    INSTALL_DIR        = ${INSTALL_DIR:-${projDIR}}"
echo "    CMAKE_BUILD_TYPE   = ${OPT_TYPE}"
echo "    CMAKE_FLAGS        = ${CMAKE_FLAGS}"
echo "    PLATFORM           = ${PLATFORM}"
echo "    COMPILER           = ${COMPILER:-Undefined, Supported values are: [${MY_COMPILING_SYTEMS}]}"
echo "    CC                 = ${CC:-Will use the OS default compiler}"
echo "    CXX                = ${CXX:-Will use the OS default compiler}"
echo "    FC                 = ${FC:-Will use the OS default compiler}"
echo "    F90                = ${F90:-Will use the OS default compiler}"
echo "    VERBOSE            = ${VERBOSE:-0}"
echo

echo_response=
while [ -z "${echo_response}" ] ; do
  echo -n "Are these values correct? [y/n]: "
  read echo_response
  echo_response="$( getYesNo "${echo_response}" )"
done

if [ "${echo_response:-no}" = "no" ]; then
  echo
  echo "User responded: ${echo_response}"
  echo "Exiting now ..."
  echo
  exit 1
fi

unset echo_response
##########


############################################################
### START THE CALCULATIONS
############################################################

##########
# Create the build directory and check against the project source directory.
[ ! -d "${buildDIR}" ] && mkdir -p ${buildDIR}
if [ "${projDIR}" == "${buildDIR}" ]; then
  echo "The \"build\" directory cannot be the same as the \"project\" directory:"
  echo "   projDIR  = ${projDIR}"
  echo "   buildDIR = ${buildDIR}"
  echo "Exiting ..."
  exit 1
fi

# Perform the CMake configuration and compile the project
compileERR=0
pushd ${buildDIR} >/dev/null 2>&1
  fls="$( find . -type f -name "*CMakeCache.txt" | xargs )"
  if [ -n "${fls:+1}" ]; then
    echo "Removing the cache files in the build directory"
    rm -f ${fls}
  fi

  echo
  echo "Running: cmake ${CMAKE_FLAGS} -S${projDIR} -B${buildDIR}"

  eval "cmake ${CMAKE_FLAGS} -S${projDIR} -B${buildDIR}"
  compileERR=$?

  if [ ${compileERR} -eq 0 ]; then
    if [ ${CLEAN:-0} -ne 0 -a ${CLEAN:-0} -ne -3 ]; then
      echo
      echo "Running: make clean"
      make clean
    fi

    echo
    echo "Running: make ${PARMAKE:+-j ${PARMAKE}}"
    make ${PARMAKE:+-j ${PARMAKE}}
    compileERR=$?

    if [ ${compileERR} -eq 0 ]; then
      echo
      echo "Running: make install"
      make install
    else
      echo
      echo "Couldn't run \"make install\" due to \"make compile\" errors."
    fi
  else
    echo "Couldn't run \"make\" due to \"cmake\" errors."
  fi
popd >/dev/null 2>&1

exit 0
