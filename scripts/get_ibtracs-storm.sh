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

funcs="$( find . -type f -name "functions_build" | head -n 1 )"
if [ -f "${funcs}" ]; then
  source "${funcs}"
else
  echo " ### ERROR:: in ${scrNAME}"
  echo "     Cannot load the required file: ${funcs}"
  echo "     Exiting now ..."
  echo
  exit 1
fi

unset funcs
###====================

#########
# Call ParseArgs to get the user input.
ParseArgsTracs "${@}"


##########
# Set the variables for this script
if [ -z "${MY_ROOTDIR:-}" ]; then
  echo "The data directory is not specified."
  echo "Run:  \"$(basename ${scrNAME}) -h\"  to see available options."
  echo "Exiting ..."

  exit 1
fi

if [ -z "${MY_STORMNAME:-}" ]; then
  echo "The name of the storm is not specified."
  echo "Run:  \"$(basename ${scrNAME}) -h\"  to see available options."
  echo "Exiting ..."

  exit 1
fi

if [ -z "${MY_YEAR:-}" ]; then
  echo "The year of the storm is not specified."
  echo "Run:  \"$(basename ${scrNAME}) -h\"  to see available options."
  echo "Exiting ..."

  exit 1
fi
##########


############################################################
### START THE CALCULATIONS
############################################################
datDIR="${MY_ROOTDIR}"

nameFILE="$( find ${datDIR} -maxdepth 1 -type f -iname "IBTrACS_SerialNumber*.txt" | xargs | awk '{print $1}' )"
if [ -n "${MY_BASIN:+1}" ]; then
  datFILE="$( find ${datDIR} -maxdepth 1 -type f -iname "ibtracs.${MY_BASIN}.list*.csv" | xargs | awk '{print $1}' )"
else
  datFILE="$( find ${datDIR} -maxdepth 1 -type f -iname "ibtracs.ALL.list*.csv" | xargs | awk '{print $1}' )"
fi
outFILE="`toLOWER ${MY_STORMNAME}`${MY_YEAR}-ibtracs.dat"

if [ ! -e "${nameFILE}" ]; then
  echo
  echo "The data file \"${nameFILE}\" does not exist."
  echo "Adjust the variable nameFILE in the script"
  echo "Exiting now ..."
  echo
  exit 1
fi

if [ ! -e "${datFILE}" ]; then
  echo
  echo "The data file \"${datFILE}\" does not exist."
  echo "Adjust the variable datFILE in the script"
  echo "Exiting now ..."
  echo
  exit 1
fi

grep_cmd="grep -i \"^${MY_YEAR}.*${MY_STORMNAME}\" ${nameFILE}"
searchSTR="$( eval ${grep_cmd} 2>/dev/null  | awk '{print $1}' )"

if [ -n "${searchSTR:+1}" ]; then
  grep "^${searchSTR}" ${datFILE} > ${outFILE}
  echo "Created the data file: ${outFILE}"
else
  echo "ERROR :: Could not find a proper storm block in the file: ${datFILE}"
  echo "Used: BASIN  = ${MY_BASIN}"
  echo "      YEAR   = ${MY_YEAR}"
  echo "      STORM  = ${MY_STORMNAME}"
  echo "Command used: ${grep_cmd}"

  [ -e "${outFILE}" ] && rm -f ${outFILE}
fi # searchSTR

exit 0
