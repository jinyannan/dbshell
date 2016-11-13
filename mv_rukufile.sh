#! /bin/bash

FtpPath="/data/ftp/GP"
BakPath="/data/bak_data"

BeginDir=$1
EndDir=$2

if [ -z $BeginDir ];then
	BeginDir="0000000000"
else
	BeginDir="00000$BeginDir"
fi

if [ -z $EndDir ];then
	EndDir="9999999999"
else
	EndDir="00000$EndDir"
fi

echo $BeginDir
echo $EndDir

for i in `cd $BakPath;echo *`
do
	#echo $i
	if [ "$i" \> "$BeginDir" -o  "$i" = "$BeginDir" ];then
		if [ "$i" \< "$EndDir" -o "$i" = "$EndDir" ];then
			cp -r $BakPath/$i $FtpPath
		fi
	fi
done
