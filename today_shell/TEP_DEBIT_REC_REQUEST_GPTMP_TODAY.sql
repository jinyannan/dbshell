\echo ------------------TEP_DEBIT_REC_REQUEST----------------
select now();
\timing
delete from TEP_DEBIT_REC_REQUEST_GPTMP;
insert into TEP_DEBIT_REC_REQUEST_GPTMP (CMD_TYPE,REQUEST_DATE, TRANS_NO) select CMD_TYPE,REQUEST_DATE, TRANS_NO from TEP_DEBIT_REC_REQUEST_INC_EXT;
delete from TEP_DEBIT_REC_REQUEST_GPTMP_TODAY using TEP_DEBIT_REC_REQUEST_GPTMP where TEP_DEBIT_REC_REQUEST_GPTMP.REQUEST_DATE=TEP_DEBIT_REC_REQUEST_GPTMP_TODAY.REQUEST_DATE AND TEP_DEBIT_REC_REQUEST_GPTMP.TRANS_NO=TEP_DEBIT_REC_REQUEST_GPTMP_TODAY.TRANS_NO ;
insert into TEP_DEBIT_REC_REQUEST_GPTMP_TODAY (CMD_TYPE,REQUEST_DATE,TRANS_NO,REQUEST_TIME,PAY_STATUS,ENTRY_ID,DUTY_FLAG,TAX_TYPE,TAX_ID,GUA_ID,AMOUNT,P_LIMIT,MEMO) select CMD_TYPE,REQUEST_DATE,TRANS_NO,REQUEST_TIME,PAY_STATUS,ENTRY_ID,DUTY_FLAG,TAX_TYPE,TAX_ID,GUA_ID,AMOUNT,P_LIMIT,MEMO from TEP_DEBIT_REC_REQUEST_INC_EXT;
delete from TEP_DEBIT_REC_REQUEST_GPTMP;
\timing
