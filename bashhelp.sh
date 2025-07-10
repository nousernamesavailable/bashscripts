#!/bin/bash
# Bash Help file
# Author       : nousernamesavailable - https://github.com/nousernamesavailable
# Date         : 10 July 2025 + ongoing updates
# Description  : a collection of bash tidbits / examples of things that work 

# some things will be placed elsewhere, like getopts

#### Structures ####

## if statements ##
# basic if 
if [ -z "$1" ] ; then
    echo "Parameter wasn't passed in. "
elif [ ${1} -eq 0 ] ; then 
    echo "Parameter \$1 ${1} was equal to zero. "
elif [ ${1} -gt 10 ] ; then 
    echo "Parameter \$1 ${1} was greater than ten. "
elif [ ${1} -lt 3 ] ; then 
    echo "Parameter \$1 ${1} was less than three. "
elif [ ${1} -ne 5 ] ; then 
    echo "Parameter \$1 ${1} was not equal to five. "
else
    echo "Parameter \$1 ${1} did not meet any of the above criteria!"
    echo "This will only be output if a non number is provided."
fi

## loops ##

# basic while do loop


# basic for loop



#### Commands ####
# get size of folders 
du -h


# tail a file as it updates
tail -f $file
# ctrl+c to exit


## searching ##



#### Where ####
# interactive login file :: ~/.bashrc
# set history 
HISTSIZE=20000
HISTFILESIZE=5000
HISTTIMEFORMAT="%d/%m/%y %T "
