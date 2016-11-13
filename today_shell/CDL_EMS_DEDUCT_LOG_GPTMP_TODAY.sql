\echo ------------------CDL_EMS_DEDUCT_LOG----------------
select now();
\timing
delete from CDL_EMS_DEDUCT_LOG_GPTMP;
insert into CDL_EMS_DEDUCT_LOG_GPTMP (CMD_TYPE,ENTRY_ID, EMS_NO, CREATE_DATE, JOU_MARK) select CMD_TYPE,ENTRY_ID, EMS_NO, CREATE_DATE, JOU_MARK from CDL_EMS_DEDUCT_LOG_INC_EXT;
delete from CDL_EMS_DEDUCT_LOG_GPTMP_TODAY using CDL_EMS_DEDUCT_LOG_GPTMP where CDL_EMS_DEDUCT_LOG_GPTMP.ENTRY_ID=CDL_EMS_DEDUCT_LOG_GPTMP_TODAY.ENTRY_ID AND CDL_EMS_DEDUCT_LOG_GPTMP.EMS_NO=CDL_EMS_DEDUCT_LOG_GPTMP_TODAY.EMS_NO AND CDL_EMS_DEDUCT_LOG_GPTMP.CREATE_DATE=CDL_EMS_DEDUCT_LOG_GPTMP_TODAY.CREATE_DATE AND CDL_EMS_DEDUCT_LOG_GPTMP.JOU_MARK=CDL_EMS_DEDUCT_LOG_GPTMP_TODAY.JOU_MARK ;
insert into CDL_EMS_DEDUCT_LOG_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,EMS_NO,CREATE_DATE,JOU_MARK,NOTE,VERIFY_ER) select CMD_TYPE,ENTRY_ID,EMS_NO,CREATE_DATE,JOU_MARK,NOTE,VERIFY_ER from CDL_EMS_DEDUCT_LOG_INC_EXT;
delete from CDL_EMS_DEDUCT_LOG_GPTMP;
\timing