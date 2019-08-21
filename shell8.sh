#!/bin/bash

#wc -l `find $1 -name "*.[c|h]"` > {$1}_count.txt
if [ $# -eq 0 ];then
	ch_file=`find . -name "*.[c|h]"`
	ch_sum=0
	for file in $ch_file
	do
		ch_sum=$((ch_sum+`wc -l $file | awk '{print $1}'`))
	done
	echo "当前目录的代码量为：$ch_sum行" > test8.txt
else
	for pathname in $@
	do
		ch_file=`find $pathname -name "*.[c|h]"`
		ch_sum=0
		for file in $ch_file
		do
			ch_sum=$((ch_sum+`wc -l $file | awk '{print $1}'`))
		done
	echo "$pathname的代码量为：$ch_sum行" > test8.txt
#	wc -l `find $pathname -name "*.[c|h]"` >test8.txt
	done
fi

  
