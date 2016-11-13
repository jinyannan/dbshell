\echo ------------------AMSLIST_HEAD----------------
select now();
\timing
delete from AMSLIST_HEAD_GPTMP;
insert into AMSLIST_HEAD_GPTMP (CMD_TYPE,LIST_ID) select CMD_TYPE,LIST_ID from AMSLIST_HEAD_INC_EXT;
delete from AMSLIST_HEAD_GPTMP_TODAY using AMSLIST_HEAD_GPTMP where AMSLIST_HEAD_GPTMP.LIST_ID=AMSLIST_HEAD_GPTMP_TODAY.LIST_ID ;
insert into AMSLIST_HEAD_GPTMP_TODAY (CMD_TYPE,LIST_ID,LIST_TYPE,REC_ID,COP_LIST_ID,CHK_ID,D_DATE,TAX_DATE,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,PAYER_CODE,PAYER_NAME,CUT_MODE,TRANS_MODE,MANUAL_NO,CODE_TS,AUTO_RATE,LOW_RATE,SET_COUNT,HAVE_PAY,USE_TO,NOTE,INPUTER_IC_ID,INPUTER_NAME,INPUT_DATE,PRE_AMS_NO,PROC_FLAG,PROC_DATE,PROC_ER,PROC_NOTE,LOG_FLAG,LOG_DATE,LOG_ER,CHK_FLAG,CHK_ER,CHK_DATE) select CMD_TYPE,LIST_ID,LIST_TYPE,REC_ID,COP_LIST_ID,CHK_ID,D_DATE,TAX_DATE,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,PAYER_CODE,PAYER_NAME,CUT_MODE,TRANS_MODE,MANUAL_NO,CODE_TS,AUTO_RATE,LOW_RATE,SET_COUNT,HAVE_PAY,USE_TO,NOTE,INPUTER_IC_ID,INPUTER_NAME,INPUT_DATE,PRE_AMS_NO,PROC_FLAG,PROC_DATE,PROC_ER,PROC_NOTE,LOG_FLAG,LOG_DATE,LOG_ER,CHK_FLAG,CHK_ER,CHK_DATE from AMSLIST_HEAD_INC_EXT;
delete from AMSLIST_HEAD_GPTMP;
\timing
