#!/bin/bash

read filename
for file in `find $filename -perm 777`
do 
	echo "$file is dangerous"
	chmod 754 $file
done

