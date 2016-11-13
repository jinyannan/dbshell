\echo -----------------------TEMP_DEL_EMS_HEAD------------------------
select now();
\timing
delete from TEMP_DEL_EMS_HEAD using TEMP_DEL_EMS_HEAD_GPTMP_TODAY where TEMP_DEL_EMS_HEAD.EMS_NO=TEMP_DEL_EMS_HEAD_GPTMP_TODAY.EMS_NO ;
insert into TEMP_DEL_EMS_HEAD (EMS_NO) select EMS_NO from TEMP_DEL_EMS_HEAD_GPTMP_TODAY  where CMD_TYPE='I';
\timing
