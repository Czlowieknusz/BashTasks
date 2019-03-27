#!/bin/bash

if [ -d "Lab3" ]; then
	rm -rf Lab3
fi

# Subtree A
mkdir Lab3
mkdir Lab3/A
mkdir Lab3/A/B
mkdir Lab3/A/C
echo "test 1" > Lab3/A/C/P1


# Subtree D
mkdir Lab3/D
echo "test 10" > Lab3/D/P10
mkdir Lab3/D/E
for i in `seq 20 29`;
do
	echo "test $i" > "Lab3/D/E/P${i}"
done

# create links

# Lab3/A/B
ln -s ../../D/P10 Lab3/A/B/link_P10
ln -s "$PWD/Lab3/D/P10" "Lab3/A/B/link_P10_bez"
ln -s ../../D/E/P20 Lab3/A/B/link_P20

# Lab3/D
for i in `seq 20 29`;
do
	ln -s "$PWD/Lab3/D/E/P$i" "Lab3/D/link_P${i}_bez"
done
