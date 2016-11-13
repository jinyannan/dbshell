\echo ------------------DUTY_CHECK_LOG----------------
select now();
\timing
insert into DUTY_CHECK_LOG_GPTMP (CMD_TYPE,ENTRY_ID, TAX_ID, PROC_TIME) select CMD_TYPE,ENTRY_ID, TAX_ID, PROC_TIME from DUTY_CHECK_LOG_INC_EXT;

delete from DUTY_CHECK_LOG using DUTY_CHECK_LOG_GPTMP where DUTY_CHECK_LOG_GPTMP.ENTRY_ID=DUTY_CHECK_LOG.ENTRY_ID AND DUTY_CHECK_LOG_GPTMP.TAX_ID=DUTY_CHECK_LOG.TAX_ID AND DUTY_CHECK_LOG_GPTMP.PROC_TIME=DUTY_CHECK_LOG.PROC_TIME ;

insert into DUTY_CHECK_LOG(ENTRY_ID,TAX_ID,GUA_ID,DELAY_MARK,DUTY_FLAG,TAX_TYPE,REAL_TAX,P_LIMIT,PROC_TIME,PROC_FLAG,PROC_ER,EPORT_ID,VERIFY_TIME,VERIFY_MARK,REASON_CODE,REASON_MESS,DATA_TYPE,PAYER_NAME) select ENTRY_ID,TAX_ID,GUA_ID,DELAY_MARK,DUTY_FLAG,TAX_TYPE,REAL_TAX,P_LIMIT,PROC_TIME,PROC_FLAG,PROC_ER,EPORT_ID,VERIFY_TIME,VERIFY_MARK,REASON_CODE,REASON_MESS,DATA_TYPE,PAYER_NAME from DUTY_CHECK_LOG_INC_EXT where CMD_TYPE='I';

delete from DUTY_CHECK_LOG_GPTMP;

\timing
