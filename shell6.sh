#!/bin/bash
empty_file_count=0
for file in `find . -name "*.txt"`
do 
	if [ ! -s $file ]
	then
		rm -rf $file
		empty_file_count=$((empty_file_count+1))
	fi
done
echo $empty_file_count
