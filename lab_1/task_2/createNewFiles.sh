#!/bin/bash
dir="${1}*"
fileNames="${@:2}"

for listFile in $fileNames; do
	echo $listFile
	file="${1}$listFile"
	echo "$file"
	if [ -e "$file" ]; then
		echo "File exists"
	else
		touch "$file"
		echo "File does not exist"
	fi
done
