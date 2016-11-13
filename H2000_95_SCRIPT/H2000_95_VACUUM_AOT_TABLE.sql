echo "-------------$(date)----开始vacuum aot表 ---------"
psql -d h2000 -f ./H2000_95_VACUUM_AOT_ENTRY_HEAD.sql &
psql -d h2000 -f ./H2000_95_VACUUM_AOT_ENTRY_LIST.sql &
psql -d h2000 -f ./H2000_95_VACUUM_AOT_ENTRY_WORKFLOW.sql &
wait
echo "-------------$(date)----结束vacuum aot表 ---------"
