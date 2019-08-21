#!/bin/bash

date=`date +%Y%m%d%H:%M`
echo $date
mkdir -p /home/just/zhaorui/study/shell/test4/filebak/$date
	sudo tar czvf /home/just/zhaorui/study/shell/test4/filebak/$date/etc.tar.gz /etc
dir="/home/just/zhaorui/study/shell/test4/filebak"
find $dir -type f -mtime +7 -delete
