#!/bin/bash

dir="${1}/*"
for f in $dir; do
	if [ "${f: -4}" = ".old" ]; then
		rm "$f"
	fi
	echo $"$f"
done

for f in $dir; do
	if [ -w "$f" ]; then
		newFileName="$f.old"
		/bin/cp "$f" "$newFileName"
	fi
done
