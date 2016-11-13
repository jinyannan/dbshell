#/bin/bash

LogName="/data/vacuum_log/$1_VACUUM_ANALYZE.log"

echo "....................$(date):开始vacuum数据库...................."
#psql -d h2000 -f ./H2000_95_SCRIPT/H2000_95_VACUUM.sql 2>&1 |tee -a $LogName
#psql -d h2000 -f ./H2000_95_SCRIPT/H2000_95_VACUUM_TODAY.sql 2>&1 |tee -a $LogName
psql -d h2000 -f ./H2000_95_SCRIPT/H2000_95_VACUUM_ANALYZE.sql 2>&1 |tee -a $LogName
#psql -d h2000 -f ./H2000_95_SCRIPT/H2000_95_VACUUM_ANALYZE_TODAY.sql 2>&1 |tee -a $LogName
#sh ./H2000_95_SCRIPT/H2000_95_VACUUM_AOT_TABLE.sh 2>&1 |tee -a $LogName
echo "....................$(date):结束vacuum数据库...................."

