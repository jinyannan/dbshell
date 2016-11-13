\echo ------------------EMS_DEDUCT_LOG----------------
select now();
\timing
delete from EMS_DEDUCT_LOG_GPTMP;
insert into EMS_DEDUCT_LOG_GPTMP (CMD_TYPE,ENTRY_ID, EMS_NO, CREATE_DATE, JOU_MARK) select CMD_TYPE,ENTRY_ID, EMS_NO, CREATE_DATE, JOU_MARK from EMS_DEDUCT_LOG_INC_EXT;
delete from EMS_DEDUCT_LOG_GPTMP_TODAY using EMS_DEDUCT_LOG_GPTMP where EMS_DEDUCT_LOG_GPTMP.ENTRY_ID=EMS_DEDUCT_LOG_GPTMP_TODAY.ENTRY_ID AND EMS_DEDUCT_LOG_GPTMP.EMS_NO=EMS_DEDUCT_LOG_GPTMP_TODAY.EMS_NO AND EMS_DEDUCT_LOG_GPTMP.CREATE_DATE=EMS_DEDUCT_LOG_GPTMP_TODAY.CREATE_DATE AND EMS_DEDUCT_LOG_GPTMP.JOU_MARK=EMS_DEDUCT_LOG_GPTMP_TODAY.JOU_MARK ;
insert into EMS_DEDUCT_LOG_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,EMS_NO,CREATE_DATE,JOU_MARK,NOTE,VERIFY_ER) select CMD_TYPE,ENTRY_ID,EMS_NO,CREATE_DATE,JOU_MARK,NOTE,VERIFY_ER from EMS_DEDUCT_LOG_INC_EXT;
delete from EMS_DEDUCT_LOG_GPTMP;
\timing