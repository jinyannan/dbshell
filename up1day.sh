#! /bin/bash

echo `date`

if [ ! -e $1  ]
then
	echo "文件不存在！"
	exit 1
fi

PathName=`echo $1|cut -d "." -f 1`
RarFileName=$1
Continue="y"

echo ${PathName}

if [ -d $PathName ] 
then
	#printf  "目录已存在，是否删除目录中已有文件，重新创建!(y or n or q) " 
	read -p "目录已存在，是否删除目录中已有文件，重新创建!(y or n or q)(10秒内如果不输入，则默认重建):" -t 10 Continue
	if [ $Continue = "y" ] || [ $Continue = "Y" ]
	then
		rm -rf $PathName
		mkdir $PathName
		unrar x ${RarFileName} ${PathName} > /dev/null
	elif [ $Continue = n ] || [ $Continue = N ]
	then
		echo "不重新解压缩！"
	else
		echo "谢谢使用！"
		exit 1
	fi
else
	mkdir $PathName
	unrar x ${RarFileName} ${PathName} > /dev/null
fi

#if [ $? != 0 ]
#then
#	echo "解压缩失败！"
#	exit 1
#fi

#if [ -e /data/xloader/doc_root/*.txt ]
#then
#	printf "root中有文件存在,是否继续！(y or other)"
#	read Continue
#
#fi
echo rar finished $PathName

for i in `cd ${PathName};echo *`
do
	#echo $i
	#ls -l ./$PathName/$i/
	#ls  /data/xloader/doc_root/*
	rm -f /data/xloader/doc_root/*
	#ls  /data/xloader/doc_root/*
	#echo "deleted!"
	find ./$PathName/$i -name "*.txt.rar" -exec unrar x {} /data/xloader/doc_root \;
	#cat /data/xloader/doc_root/ENTRY_HEAD.txt >> ENTRY_HEAD_ALL.txt
	
	#echo "succsed"
	echo begin ruku
	sh ruku_today.sh
	echo end ruku
	#exit 0
done

echo `date`
