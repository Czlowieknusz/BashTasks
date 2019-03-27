#!/bin/bash

dir="${1}/*"
file="${1}/concatenateFile.txt"
for i in $dir; do
	echo "$i" >> "$file"
	cat $i >> "$file"
done
