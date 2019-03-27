#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Illegal number of parameters"
	exit 1
fi
templateFrom="${1}"
templateTo="${2}"
if [ "${templateFrom: -1}" == / ]; then
	dirFrom="${1}*"	
else
	dirFrom="${1}/*"
fi
if [ "${templateTo: -1}" == / ]; then
	dirTo="${2}"
else
	dirTo="${2}/"
fi

if [ -d "${1}" ]; then
	echo "from is dir"
	if [ -d "${2}" ]; then
		echo "to is dir"
		for i in $dirFrom; do
			if [ -x $i ]; then
				echo "$i is exec"
				mv $i "$dirTo$(basename $i)"
			fi
		done
	fi
fi
