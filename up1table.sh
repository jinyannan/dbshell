#! /bin/bash
#sh  up1table.sh "ENTRY_HEAD" "./" "./gp0526/20110526191159/ENTRY_HEAD.txt.zip"
echo $1
if [ -z $1 ]
then
	echo "文件名不得为空！"
	exit 1
else
	TableName=$1
fi
echo $Tablename

if [ -z $2 ]
then
	PathName="./"
else
	PathName=$2
fi
echo $PathName

if [ -z $3 ]
then
	FindString="find $PathName -name $TableName.txt.rar"
else
	FindString="find $PathName -name $TableName.txt.rar -newer $3"
fi
echo $FindString

for i in `$FindString`
do
	echo $i
	#ls -l ./$PathName/$i/
	#ls  /data/xloader/doc_root/*
	rm -f /data/xloader/doc_root/$1.txt
	#ls  /data/xloader/doc_root/*
	#echo "deleted!"
	#find ./$PathName/$i -name "*.txt.zip" -exec unrar x {} /data/xloader/doc_root \;
	unrar x $i /data/xloader/doc_root
	#cat /data/xloader/doc_root/ENTRY_HEAD.txt >> ENTRY_HEAD_ALL.txt
 	psql -d h2000 -f /data/xloader/db_shell/today_shell/$1_GPTMP_TODAY.sql
	#echo "succsed"
	#sh ruku_today.sh	
	#exit 0
done

echo psql -d h2000 -f /data/xloader/db_shell/update_from_today_shell/$1_UPDATE_FROM_TODAY.sql
