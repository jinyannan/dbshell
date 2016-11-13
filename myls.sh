#!/bin/bash

while true
do
	FilePathName=$(ls /data/ftp/GP|sort|tail -1)
	if [ -e /data/ftp/GP/00000* ];then
		echo ----------------------------------------------/data/ftp/GP所有目录---------------------------------------------------------
		ls /data/ftp/GP
		echo "-----------------------------------------$(date +%P:%I:%M:%S)--当前上传目录：$FilePathName-------------------------------------------"
		ls /data/ftp/GP/$FilePathName
	fi
	sleep 60
done
