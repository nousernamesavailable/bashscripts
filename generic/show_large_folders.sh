#!/bin/bash 
# Author       : nousernamesavailable - https://github.com/nousernamesavailable
# Date         : 2023
# Updates      : 10 July 2025 - adding description information
# Description  : Shows top 20 largest folders of folder provided or of the current location. 
# Usage        :    . show_large_folders.sh </path/to/folder/optional>
# Example      : 
#     . show_large_folders.sh 
#     output is 20 items like so :
#      86G	./Star Trek The Next Generation (1987)
#      73G	./Futurama (1999)
#      59G	./Star Trek Voyager (1995)
#      47G	./Star Trek Deep Space Nine (1993)
#

if [ -z "$1" ] ; then
    LOCATION="."                                                                                                             
else             
    LOCATION=$1  
fi               
du -h $LOCATION --max-depth=1 2>/dev/null | sort -hr | tail -n +2 | head -30
