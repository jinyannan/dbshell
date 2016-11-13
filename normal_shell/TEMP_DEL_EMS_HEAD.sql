\echo ------------------TEMP_DEL_EMS_HEAD----------------
select now();
\timing
insert into TEMP_DEL_EMS_HEAD_GPTMP (CMD_TYPE,EMS_NO) select CMD_TYPE,EMS_NO from TEMP_DEL_EMS_HEAD_INC_EXT;

delete from TEMP_DEL_EMS_HEAD using TEMP_DEL_EMS_HEAD_GPTMP where TEMP_DEL_EMS_HEAD_GPTMP.EMS_NO=TEMP_DEL_EMS_HEAD.EMS_NO ;

insert into TEMP_DEL_EMS_HEAD(EMS_NO) select EMS_NO from TEMP_DEL_EMS_HEAD_INC_EXT where CMD_TYPE='I';

delete from TEMP_DEL_EMS_HEAD_GPTMP;

\timing
