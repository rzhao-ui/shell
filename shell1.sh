#!/bin/bash
not_blank_length=0
count_length()
{
	not_blank_length=0
	for ch in $string
	do
		length_ch=${#ch}
		not_blank_length=$((not_blank_length+length_ch))
	done
}
while true
do
	read -p "请输入字符串：" string
	read -p "请输入命令：" cmd
	case "$cmd" in
		"lower")
			echo $string | tr "[:upper:]" "[:lower:]"
			count_length
			echo "非空格数为：$not_blank_length"
			;;
		"upper")
			echo $string | tr "[:lower:]" "[:upper:]"
			count_length
			echo "非空格数为：$not_blank_length"
			;;
		"")
			echo $string | tr "[:upper:]" "[:lower:]"
			count_length
			echo "非空格数为：$not_blank_length"
			;;
		"exit")
			exit
			;;
		"quit")
			exit
			;;
		*)
			echo "命令字符串为lower,upper,exit,quit"
			;;
	esac
done
