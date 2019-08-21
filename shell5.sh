#!/bin/bash
sum=0
for i in $*
do 
	echo "$i的平方为：$(($i*$i))"
	sum=$((sum+i*i))
done
echo "平方和为：$sum"
