\echo ------------------TEP_REC_LOG----------------
select now();
\timing
delete from TEP_REC_LOG_GPTMP;
insert into TEP_REC_LOG_GPTMP (CMD_TYPE,REC_DATE, REC_TYPE, TRANS_NO) select CMD_TYPE,REC_DATE, REC_TYPE, TRANS_NO from TEP_REC_LOG_INC_EXT;
delete from TEP_REC_LOG_GPTMP_TODAY using TEP_REC_LOG_GPTMP where TEP_REC_LOG_GPTMP.REC_DATE=TEP_REC_LOG_GPTMP_TODAY.REC_DATE AND TEP_REC_LOG_GPTMP.REC_TYPE=TEP_REC_LOG_GPTMP_TODAY.REC_TYPE AND TEP_REC_LOG_GPTMP.TRANS_NO=TEP_REC_LOG_GPTMP_TODAY.TRANS_NO ;
insert into TEP_REC_LOG_GPTMP_TODAY (CMD_TYPE,REC_DATE,TRANS_NO,REC_TIME,REC_SIGN,REC_TYPE,ENTRY_ID,TAX_ID,TAX_TYPE,GUA_ID,PAY_STATUS,DUTY_FLAG,AMOUNT,P_LIMIT,RESULT_NO,DESCRIPTION) select CMD_TYPE,REC_DATE,TRANS_NO,REC_TIME,REC_SIGN,REC_TYPE,ENTRY_ID,TAX_ID,TAX_TYPE,GUA_ID,PAY_STATUS,DUTY_FLAG,AMOUNT,P_LIMIT,RESULT_NO,DESCRIPTION from TEP_REC_LOG_INC_EXT;
delete from TEP_REC_LOG_GPTMP;
\timing
