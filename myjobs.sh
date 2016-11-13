#!/bin/bash

psql -d h2000 -f ./H2000_95_SCRIPT/H2000_95_CREATE_PK_OPS.sql 2>&1 |tee ./H2000_95_SCRIPT/H2000_95_CREATE_PK_OPS.log
psql -d h2000 -f ./H2000_95_SCRIPT/H2000_95_CREATE_INDEX_OPS.sql 2>&1 |tee ./H2000_95_SCRIPT/H2000_95_CREATE_INDEX_OPS.log
sh uptoday_sv.sh 2>&1 | tee -a ./log/50950.log

