#!/bin/bash

./createTree.sh

cp -L Lab3/A/B/link_P10 Lab3/P10_plik
ln -s $(readlink -f Lab3/A/B/link_P10) Lab3/P10_link

searchedPhrase="_P10_"

rm $(readlink -f Lab3/D/link_P29_bez)

# check Lab3
for file in Lab3/*; do
	echo "$(readlink -f $file)"
	if [ $(readlink -f $file) = *$searchedPhrase* ]; then
		echo "$file"
	fi
done

# check A
for file in Lab3/A/*; do
        if [ $(readlink -f $file) == *$searchedPhrase* ]; then
                echo "$file"
        fi
done

# check B
for file in Lab3/A/B/*; do
        if [ $(readlink -f $file) == *$searchedPhrase* ]; then    
                echo "$file"
        fi
done

#check C
for file in Lab3/A/C/*; do
        if [ $(readlink -f $file) == *$searchedPhrase* ]; then
                echo "$file"
        fi
done

# check D
for file in Lab3/D/*; do
        if [ $(readlink -f $file) == *$searchedPhrase* ]; then    
                echo "$file"
        fi
done

# check E
for file in Lab3/D/E/*; do
        if [ $(readlink -f $file) == *$searchedPhrase* ]; then
                echo "$file"
        fi
done

