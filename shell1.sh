#!/bin/bash
flag=0
count_length()
{
	not_blank_length=0
	for ch in $string
	do
		length_ch=${#ch}
		not_blank_length=$((not_blank_length+length_ch))
	done
}
echo "lower:转换为小写 upper:转换为小写 quit或exit:退出交互程序"
while true
do
	read -p "请输入字符串：" string 
	case $string in
		"lower")
			flag=1
			echo "进入小写模式"
			;;
		"upper")
			flag=2
			echo "进入大写模式"
			;;
		"exit")
			exit
			;;
		"quit")
			exit
			;;
		*)
			case $flag in
				1)
			 		echo $string | tr "[:upper:]" "[:lower:]"
					count_length 
					echo "非空格字符数为：$not_blank_length"
					;;
				2)
					echo $string | tr "[:lower:]" "[:upper:]"
					count_length 
					echo "非空格字符数为：$not_blank_length"
					;;
				*)
	    			echo $string | tr "[:upper:]" "[:lower:]"
					count_length 
					echo "非空格字符数为：$not_blank_length"
					;;
			esac
	esac	
done

