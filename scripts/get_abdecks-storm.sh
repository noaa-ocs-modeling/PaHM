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

USE_ADECK=0

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

if [ -z "${MY_BASIN:-}" ]; then
  echo "The basin where the storm occured is not specified."
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

deckCHAR="b"
[ ${USE_ADECK:-0} -gt 0 ] && deckCHAR="a"

outFILE="`toLOWER ${MY_STORMNAME}`${MY_YEAR}-${deckCHAR}deck.dat"
  
lbasin="$( toLOWER "${MY_BASIN}" )"
datIDS=( $( grep -H -m 1 -i "${MY_BASIN},.*,.*${MY_YEAR}.*${MY_STORMNAME}" ${datDIR}/${deckCHAR}${lbasin}* 2>/dev/null \
         | head -1 | sed -e "s@[:,]@ @g" ) )

datFILE="${datIDS[0]}"
strmBas="${datIDS[1]}"
strmNum="${datIDS[2]}"
strmYear="${MY_YEAR}"

if [ ! -e "${datFILE}" ]; then
  echo
  echo "The data file \"${datFILE}\" does not exist."
  echo "Adjust the variable datFILE in the script"
  echo "Exiting now ..."
  echo
  exit 1
fi

grep_cmd="grep \"^${strmBas},.*${strmNum},.*${strmYear}\" ${datFILE} > ${outFILE}"
eval ${grep_cmd}
err=$?

if [ ${err:-0} -eq 0 ]; then
  echo "Created the data file: ${outFILE}"
else
  echo "ERROR :: Could not find a proper storm block in the file: ${datFILE}"
  echo "Used: BASIN  = ${MY_BASIN}"
  echo "      YEAR   = ${MY_YEAR}"
  echo "      STORM  = ${MY_STORMNAME}"
  echo "Command used: ${grep_cmd}"

  [ -e "${outFILE}" ] && rm -f ${outFILE}
fi

exit 0
