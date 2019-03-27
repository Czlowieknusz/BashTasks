#!/bin/bash

dir="${1}/*"
var=$(ls -S $dir)
sorted=$(echo $var | tr " " "\n")
counter=1

for fileName in $sorted; do
	if [ -x "$fileName" ]; then
		echo "$fileName"
		cp "$fileName" "$fileName$counter"
		counter=$[counter +1]
	fi
done

