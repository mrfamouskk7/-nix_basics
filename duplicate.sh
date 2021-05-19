#!/bin/bash
read dir
if [[ -z "$dir" ]]; then
    echo "Error: files dir is undefined"
fi

files="$( find ${dir} -type f )"
for file1 in $files; do
    for file2 in $files; do
        if [[ "$file1" != "$file2" && -e "$file1" && -e "$file2" ]]; then
            if diff "$file1" "$file2" > /dev/null; then
                rm -v "$file2"
            fi
        fi
    done
done
