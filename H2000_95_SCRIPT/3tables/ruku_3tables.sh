#! /bin/bash
if [ -e /data/xloader/doc_root/STF_CORP_RECORD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/normal_shell/STF_CORP_RECORD.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TB_PCS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/normal_shell/TB_PCS.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TB_PCS_HIS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/normal_shell/TB_PCS_HIS.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
