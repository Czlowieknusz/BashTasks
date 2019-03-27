#!/bin/bash

dir="${1}/*"

for fileName in $dir; do
	if [ -x "$fileName" ]; then
		echo "Executable"
	else
		echo "Erasing not exec $fileName"
		rm "$fileName"
	fi
done
