#!/bin/bash

LogPath="/data/ruku_log"

CurDay=$(date +%y%m%d)
CurHour=$(date +%H)
CurDayRukuLog=$CurDay"_ruku.log"
CurDayTodayLog=$CurDay"_uptoday.log"

Lastday=$(date -d last-day +%y%m%d)
LastdayRukuLog=$Lastday"_ruku.log"
BeginLog=$1
EndLog=$2

ErrorString="error[^_]"
if [ -z $1 ];then
	BeginDay=`eval "date +%y%m%d -d '7 days ago'"`
	BeginLog="$BeginDay"_ruku.log
	BeginTodayLog="$BeginDay"_uptoday.log
	EndLog=$CurDayRukuLog
	EndTodayLog=$CurDayTodayLog
else
	if [ $1 == "-d" ];then
		BeginDay=`eval "date +%y%m%d -d '$2 days ago'"`
		BeginLog="$BeginDay"_ruku.log
		BeginTodayLog="$BeginDay"_uptoday.log

		EndLog=$CurDayRukuLog
		EndTodayLog=$CurDayTodayLog

	elif [ $1 == "-f" ];then
		if [ -z $2 ];then
			BeginLog="000000_ruku.log"
			BeginLog="000000_uptoday.log"
		else
		    BeginLog=$2"_ruku.log"
			BeginTodayLog=$2"_uptoday.log"
		fi
		
		if [ -z $3 ];then
		    EndLog="999999_ruku.log"
		    EndLog="999999_uptoday.log"
		else
		    EndLog=$2"_ruku.log"
			EndTodayLog=$CurDayTodayLog
		fi
	fi
fi

echo $BeginLog
echo $EndLog
echo $BeginTodayLog
echo $EndTodayLog

for i in `cd $LogPath;echo *_ruku.log`
do
	#echo $i
	if [ "$i" \> "$BeginLog" -o  "$i" = "$BeginLog" ];then
		if [ "$i" \< "$EndLog" -o "$i" = "$EndLog" ];then
			echo "-----开始扫描日志文件:$i-----"
			grep -i  $ErrorString  $LogPath/$i
			echo "-----结束扫描日志文件:$i-----"
			echo ""
		fi
	fi

done


for i in `cd $LogPath;echo *_uptoday.log`
do
	if [ "$i" \> "$BeginTodayLog" -o  "$i" = "$BeginTodayLog" ];then
		if [ "$i" \< "$EndTodayLog" -o "$i" = "$EndTodayLog" ];then
			echo "-----开始扫描日志文件:$i-----"
			grep -i  $ErrorString  $LogPath/$i
			echo "-----结束扫描日志文件:$i-----"
			echo ""
		fi
	fi
done

echo ""

