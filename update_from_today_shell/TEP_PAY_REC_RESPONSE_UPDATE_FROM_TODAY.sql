\echo -----------------------TEP_PAY_REC_RESPONSE------------------------
select now();
\timing
delete from TEP_PAY_REC_RESPONSE using TEP_PAY_REC_RESPONSE_GPTMP_TODAY where TEP_PAY_REC_RESPONSE.RESPONSE_DATE=TEP_PAY_REC_RESPONSE_GPTMP_TODAY.RESPONSE_DATE AND TEP_PAY_REC_RESPONSE.TRANS_NO=TEP_PAY_REC_RESPONSE_GPTMP_TODAY.TRANS_NO ;
insert into TEP_PAY_REC_RESPONSE (RESPONSE_DATE,TRANS_NO,RESPONSE_TIME,REC_CODE,MEMO) select RESPONSE_DATE,TRANS_NO,RESPONSE_TIME,REC_CODE,MEMO from TEP_PAY_REC_RESPONSE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
