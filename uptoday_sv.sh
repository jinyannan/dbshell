#!/bin/bash

FtpPath="/data/ftp/GP"
BakPath="/data/bak_data"
LogPath="/data/ruku_log"
UpWeek=6
UpTime=1
VacuumFullTime=01
SleepSecond=5
DataPath="/data/xloader/doc_root"


while true
do
	CurWeek=$(date +%w)
	CurDay=$(date +%y%m%d)
	CurHour=$(date +%H)
	CurDayRukuLog=$CurDay"_ruku.log"
	CurDayTodayLog=$CurDay"_uptoday.log"

	if [ $CurWeek -eq $Upweek ] && [ $CurHour -ge $UpTime ] && [ ! -e "$LogPath/$CurDayRukuLog" ] ;then
		echo "......$(date)将数据从today表中，移动到正式表......" 2>&1 |tee -a $LogPath/$CurDayRukuLog
		psql h2000 -f ruku_from_today.sql 2>&1 |tee -a $LogPath/$CurDayRukuLog 
		echo "......$(date)移动数据成功！删除today表纪录......" 2>&1 |tee -a $LogPath/$CurDayRukuLog
		#echo $LogPath/$CurDayDelTodayLog
		psql h2000 -f H2000_95_SCRIPT/H2000_95_DELETE_TODAY.sql 2>&1 |tee -a $LogPath/$CurDayRukuLog
		#touch $LogPath/$CurDayRukuLog

		echo "......开始更新列存储加压缩的表......" 2>&1 |tee -a $LogPath/$CurDayRukuLog
		#psql h2000 -f update_aot_table.sql    2>&1 |tee -a $LogPath/$CurDayRukuLog
		sh ./update_aot_table.sh 2>&1 |tee -a $LogPath/$CurDayRukuLog
		echo "......结束更新列存储加压缩的表......" 2>&1 |tee -a $LogPath/$CurDayRukuLog

		#echo "......$(date)开始vacuum数据库......"
		#sh vacuum.sh $CurDay 2>&1 |tee -a $LogPath/$CurDayRukuLog
		#echo "......$(date)结束vacuum数据库......"
		CurWeek=$(date +%d)
		if [ $CurWeek = $VacuumFullTime ];then
			echo "......开始重建索引......"
			#psql h2000 -f H2000_95_SCRIPT/H2000_95_REINDEX_TABLE.sql 2>&1 |tee -a $LogPath/$CurDayRukuLog
			echo "......结束重建索引......"
		fi
	fi

	FilePathName=$(ls $FtpPath|sort|head -1) 
	if [ ! -z $FilePathName ];then
		#echo yes $FilePathName
		if [ -e $FtpPath/$FilePathName/Finished.txt ];then
			FileCount=$(ls $FtpPath/$FilePathName|wc -l)
			if [ $FileCount -gt 1 ];then
				#echo rm -f $DataPath/*
				rm -f $DataPath/* 2>&1 |tee -a $LogPath/$CurDayTodayLog
				#echo "find $FtpPath/$FilePathName -name "*.txt.rar" -exec unrar x {} $DataPath \;"
				find $FtpPath/$FilePathName -name "*.txt.rar" -exec unrar x {} $DataPath \; 2>&1 |tee -a $LogPath/$CurDayTodayLog
				#echo sh ruku_today.sh
				sh ruku_today.sh 2>&1 |tee -a $LogPath/$CurDayTodayLog
			fi
			echo ".............$(date)成功将$FilePathName数据追加............." 2>&1 |tee -a $LogPath/$CurDayTodayLog
			#echo mv -f $FtpPath/$FilePathName $BakPath
			if [ -e $BakPath/$FilePathName ];then
				rm -rf $BakPath/$FilePathName 2>&1 |tee -a $LogPath/$CurDayTodayLog
			fi
			mv -f $FtpPath/$FilePathName $BakPath 2>&1 |tee -a $LogPath/$CurDayTodayLog
		fi
	fi
	sleep $SleepSecond
done
