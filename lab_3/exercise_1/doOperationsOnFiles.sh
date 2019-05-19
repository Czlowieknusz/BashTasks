#!/bin/bash

# list files with ...test... in them, sort them and show only last 7

# create files

rm -rf files
mkdir files
for i in 1 2 3 4 5 6 7 8 9; do
	touch "files/file_$i"
done

touch files/file_test_1
touch files/file_test_2
touch files/file_test_3
touch files/file_test_4
touch files/file_test_5
touch files/file_test_6
touch files/file_test_7
touch files/file_test_8
touch files/file_test_9

find files -name '*test*' | sort | tail -n7

# *.png or *.jpg bigger than 1kb, canonic path with / changed to \

touch file.jpg
touch file.png

find . -type f -name '*.jpg' -size +1k -o -name '*.png' -size +1k -exec readlink -f {} \; |  tr "/" "\\\\"

# copy files modificated 1 minute ago from A to B

touch A/file_1
find A -mmin -1

find ./A/ -type f -mmin -1 -exec cp {} -pf ./B/ \;

# files .dat or .txt copy

find . -name '*txt' -exec stat {} -c %y \;

# uporzadkowac to przed commitem!!!
