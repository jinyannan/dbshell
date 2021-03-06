\echo ------------------DCG_DEDUCT_LOG----------------
select now();
\timing
delete from DCG_DEDUCT_LOG_GPTMP;
insert into DCG_DEDUCT_LOG_GPTMP (CMD_TYPE,ENTRY_ID, DCG_NO, CREATE_DATE, JOU_MARK) select CMD_TYPE,ENTRY_ID, DCG_NO, CREATE_DATE, JOU_MARK from DCG_DEDUCT_LOG_INC_EXT;
delete from DCG_DEDUCT_LOG_GPTMP_TODAY using DCG_DEDUCT_LOG_GPTMP where DCG_DEDUCT_LOG_GPTMP.ENTRY_ID=DCG_DEDUCT_LOG_GPTMP_TODAY.ENTRY_ID AND DCG_DEDUCT_LOG_GPTMP.DCG_NO=DCG_DEDUCT_LOG_GPTMP_TODAY.DCG_NO AND DCG_DEDUCT_LOG_GPTMP.CREATE_DATE=DCG_DEDUCT_LOG_GPTMP_TODAY.CREATE_DATE AND DCG_DEDUCT_LOG_GPTMP.JOU_MARK=DCG_DEDUCT_LOG_GPTMP_TODAY.JOU_MARK ;
insert into DCG_DEDUCT_LOG_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,DCG_NO,CREATE_DATE,JOU_MARK,NOTE,VERIFY_ER) select CMD_TYPE,ENTRY_ID,DCG_NO,CREATE_DATE,JOU_MARK,NOTE,VERIFY_ER from DCG_DEDUCT_LOG_INC_EXT;
delete from DCG_DEDUCT_LOG_GPTMP;
\timing
