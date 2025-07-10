#!/bin/bash 
# Author       : nousernamesavailable - https://github.com/nousernamesavailable
# Date         : 10 July 2025 
# Description  : getops example allowing for no parameters to be provided at all
# Usage        :    . getopts_allowing_for_no_parameters.sh [-a] [-b <parameter>] 
# Examples     :    . getopts_allowing_for_no_parameters.sh
               :    . getopts_allowing_for_no_parameters.sh -a "hello world" -b

usage() { 
  echo "Usage: $0 [-a <string>] [-b]" 1>&2; 
  exit 1; 
  }

# if no parameters are passed in, and we still want this script to work with some defaults, we can do so like this: 
if [ $# -eq 0 ] ; then
   VAR_A="default provided"
   VAR_B=false
else   
    # colon before ab = handling errors manually
    # colon after a = requires parameter
    # no colon after b = no parameter accepted for b flag! 
    
    while getopts ":a:b" arg; do
    case $arg in
        a) # -a is passed in with an argument, so let's set VAR_A to equal the argument it was passed in with. 
            VAR_A=${OPTARG}
            ;;
        b) # this isn't passed in with a value. So here, if -b is passed in, let's set it to true. 
            VAR_B=true
            ;;
        *) # if anything else unexpected is passed in, let's call the usage function. 
            usage
            ;;
        esac
    done
fi

# main script - here we do the stuff:
echo "VAR_A is: ${VAR_A}"
echo "VAR_B is: ${VAR_B}"

