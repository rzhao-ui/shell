#!/bin/bash
read -p "请输入文件：" file

count=`wc -l $file|awk '{print $1}'`

n=$((count%5))
c=$((count/5))
for i in `seq 1 $c`
do 
	m=$((5*i-4))
	k=$((5*i))
	sed -n "$m,${k}p" $file > test3/info$i.txt
done
if [ $n -ne 0 ];then 
	s=$((count-n+1))
	sed -n "$s,${count}p" $file > test3/info$((c+1)).txt
fi

