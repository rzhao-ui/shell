#!/bin/bash
cd ~
i=1
while [ $i -le 50 ]
do
	mkdir -p user$i
	chmod 754 user$i
	i=$(($i+1))
done
