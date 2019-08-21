#!/bin/bash
fac_num()
{
	while [ $i -le $a ]
	do
		if [ $(($a%$i)) -eq 0 ];then
			if [ $i -eq $a ];then
				echo $i
			else
				echo -n "$i*"
			fi
			a=$((a/i))
		else
			i=$((i+1))
		fi
	done
}
is_prime()
{
	k=2
	while [ $(($k*$k)) -le $a ]
	do
		if [ $(($a%$k)) -eq 0 ];then
			flag=1
		fi
		k=$((k+1))
	done
}
is_num()
{
	case "$a" in
		[1-9])
			is_prime
			if [ $flag -eq 0 ];then
				echo "$a无法分解"
			else
				echo "该数的分解为"
				fac_num 
			fi
			;;
		[1-9][0-9]*)
			if [ $i -eq $(($a-1)) ];then
				echo "$a无法被分解"
			else 
				echo "该数的分解为"
				fac_num 
			fi
			;;
		*)
			echo "$a is not a number"
			;;
	esac
}
echo "输入需要分解的数："
read a
i=2
flag=0
is_num $a

