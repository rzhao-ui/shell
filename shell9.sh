#!/bin/bash
#脚本的定义怎么判断一个脚本  
read -p "请输入目录：" pathname
filelist=`ls $pathname`
for file in $filelist
do 
	if [ -f $file ];then
		str=`sed -n '1p' $file`
#if [ -n "`echo $str | sed -n /^\#\!/p`" ];then 
#			ls -l $file
#		fi
		case $str in
			"#!/bin/bash")
				ls -l $file
				;;
			*)
				;;
		esac
	fi
done
