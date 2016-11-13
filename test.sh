#!/bin/bash

UpWeek=6
UpTime=1

#if [ $CurWeek -eq $Upweek ] && [ $CurHour -ge $UpTime ] && [ ! -e "./uptoday_sv.sh" ] ;then
if [ $CurWeek == $Upweek ] && [ $CurHour == $UpTime ] && [ ! -e "./uptoday_sv.sh" ] ;then
	echo hehe
fi

