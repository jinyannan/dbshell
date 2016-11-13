\echo -----------------------TEMP_DEL_EMS_CONSUME------------------------
select now();
\timing
delete from TEMP_DEL_EMS_CONSUME using TEMP_DEL_EMS_CONSUME_GPTMP_TODAY where TEMP_DEL_EMS_CONSUME.RID=TEMP_DEL_EMS_CONSUME_GPTMP_TODAY.RID ;
insert into TEMP_DEL_EMS_CONSUME (RID) select RID from TEMP_DEL_EMS_CONSUME_GPTMP_TODAY  where CMD_TYPE='I';
\timing
