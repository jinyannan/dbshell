\echo ------------------TEMP_DEL_EMS_CONSUME----------------
select now();
\timing
delete from TEMP_DEL_EMS_CONSUME_GPTMP;
insert into TEMP_DEL_EMS_CONSUME_GPTMP (CMD_TYPE,RID) select CMD_TYPE,RID from TEMP_DEL_EMS_CONSUME_INC_EXT;
delete from TEMP_DEL_EMS_CONSUME_GPTMP_TODAY using TEMP_DEL_EMS_CONSUME_GPTMP where TEMP_DEL_EMS_CONSUME_GPTMP.RID=TEMP_DEL_EMS_CONSUME_GPTMP_TODAY.RID ;
insert into TEMP_DEL_EMS_CONSUME_GPTMP_TODAY (CMD_TYPE,RID) select CMD_TYPE,RID from TEMP_DEL_EMS_CONSUME_INC_EXT;
delete from TEMP_DEL_EMS_CONSUME_GPTMP;
\timing
