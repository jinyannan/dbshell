if [ -e /data/xloader/doc_root/STF_CORP_RECORD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/STF_CORP_RECORD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TB_PCS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TB_PCS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TB_PCS_HIS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TB_PCS_HIS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
