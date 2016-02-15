#!/bin/bash
# Copy files according to the pattern 
# to the parent directory


pattern="PJM*"
exists=($(ls ../$pattern 2>/dev/null))
# echo ${#exists}

if [[ ${#exists}>0 ]]; then
    echo "There are already PJM files:"
    for file in "${exists[@]}";do
        basename $file
    done
else    
    cp $pattern ../
    cd ../
    echo "PJM TSCs copied to $(pwd)"
    cd - &>/dev/null
fi