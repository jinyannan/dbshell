\echo -----------------------DST_COUNTER_TABLE------------------------
select now();
\timing
delete from DST_COUNTER_TABLE using DST_COUNTER_TABLE_GPTMP_TODAY where DST_COUNTER_TABLE.EMS_NO=DST_COUNTER_TABLE_GPTMP_TODAY.EMS_NO AND DST_COUNTER_TABLE.COUNTER=DST_COUNTER_TABLE_GPTMP_TODAY.COUNTER AND DST_COUNTER_TABLE.SUB_COUNTER=DST_COUNTER_TABLE_GPTMP_TODAY.SUB_COUNTER ;
insert into DST_COUNTER_TABLE (EMS_NO,COUNTER,SUB_COUNTER) select EMS_NO,COUNTER,SUB_COUNTER from DST_COUNTER_TABLE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
