#!/bin/bash
# Copy files according to the pattern 
# to the parent directory

pattern="PJM*"
# Read files that match pattern into array files escaping spaces with "sed"
read -d '' -a files <<< "$(ls -1 $pattern 2>/dev/null | sed 's/ /\\ /g')"
pattern=".project*"
read -d '' -a morefiles <<< "$(ls -1 $pattern 2>/dev/null | sed 's/ /\\ /g')"

files=("${files[@]}" "${morefiles[@]}")

for file in "${files[@]}";do
    if [[ -n "$file" ]]; then
        if [[ -a "../$file" ]]; then
            echo "$file already there."
        else
            cp "$file" ../
            echo "Copied to ../$file"
        fi
    fi
done