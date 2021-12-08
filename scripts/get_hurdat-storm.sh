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
MY_DATAFILE="hurdat2-1851-2019-052520.txt"

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
datFILE="${datDIR}/${MY_DATAFILE}"
outFILE="`toLOWER ${MY_STORMNAME}`${MY_YEAR}-hurdat2.dat"
  
if [ ! -e "${datFILE}" ]; then
  echo
  echo "The data file \"${datFILE}\" does not exist."
  echo "Adjust the variable MY_DATAFILE in the script"
  echo "Exiting now ..."
  echo
  exit 1
fi

grep_cmd="grep -n -i \"^${MY_BASIN}.*${MY_YEAR}.*${MY_STORMNAME}\" ${datFILE}"
searchSTR="$( eval ${grep_cmd} 2>/dev/null )"

if [ -n "${searchSTR:+1}" ]; then
  datIDS=( $( echo "${searchSTR}" | sed -e "s@[:,]@ @g" ) )
  nDatIDS=${#datIDS[@]}

  if [ ${nDatIDS:-0} -eq 4 ]; then
    line1=${datIDS[0]}
    lineN=$(( ${line1} + ${datIDS[3]} ))
    datID=${datIDS[1]}
    datST=${datIDS[2]}

    sed_cmd="sed -n \"${line1},${lineN}p\" ${datFILE} > ${outFILE}"
    eval "${sed_cmd} 2>&1"
    err=$?
    
    if [ ${err:-0} -eq 0 ]; then
      echo "Created the data file: ${outFILE}"
    else
      echo
      echo "ERROR :: Could not get a proper data block for ${MY_STORMNAME} due to \"sed\" errors."
      echo "Command used: ${sed_cmd}"

      echo
      echo "===================="
      cat ${outFILE}
      echo "===================="
      echo
      
      [ -e "${outFILE}" ] && rm -f ${outFILE}
    fi
  else # err
    echo "ERROR :: Could not find a proper storm block in the file: ${datFILE}"
    echo "Used: BASIN  = ${MY_BASIN}"
    echo "      YEAR   = ${MY_YEAR}"
    echo "      STORM  = ${MY_STORMNAME}"

    echo
    echo "searchSTR = ${searchSTR}"
 
    [ -e "${outFILE}" ] && rm -f ${outFILE}
  fi # nDatIDS
else
  echo "ERROR :: Could not find a proper storm block in the file: ${datFILE}"
  echo "Used: BASIN  = ${MY_BASIN}"
  echo "      YEAR   = ${MY_YEAR}"
  echo "      STORM  = ${MY_STORMNAME}"
  echo "Command used: ${grep_cmd}"

  [ -e "${outFILE}" ] && rm -f ${outFILE}
fi # searchSTR

exit 0
