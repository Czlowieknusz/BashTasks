#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Illegal number of arguments"
	exit 1
fi

file="files/${1}"
fileWithFiles="${1}"
if [ -f "$fileWithFiles" ]; then
	while read line; do
		echo "files/$line" >> "$file"
		cat "files/$line" >> "$file"	
	done <$fileWithFiles
else
	echo "Provided argument names no file"
fi
