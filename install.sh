#!/bin/bash
# Copy files according to the pattern 
# to the parent directory

pattern="PJM*"
files=($(ls $pattern 2>/dev/null))
pattern=".project"
files=(${files[@]} $(ls $pattern 2>/dev/null))

for file in "${files[@]}";do
    if [[ -a "../$file" ]]; then
        echo "$file already there."
    else
        cp $file ../
        echo "Copied to ../$file"
    fi
done