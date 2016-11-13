\echo ------------------BAK_EMS_LIST----------------
select now();
\timing
delete from BAK_EMS_LIST_GPTMP;
insert into BAK_EMS_LIST_GPTMP (CMD_TYPE,EMS_NO, G_TYPE, G_NO, MODIFY_TIMES) select CMD_TYPE,EMS_NO, G_TYPE, G_NO, MODIFY_TIMES from BAK_EMS_LIST_INC_EXT;
delete from BAK_EMS_LIST_GPTMP_TODAY using BAK_EMS_LIST_GPTMP where BAK_EMS_LIST_GPTMP.EMS_NO=BAK_EMS_LIST_GPTMP_TODAY.EMS_NO AND BAK_EMS_LIST_GPTMP.G_TYPE=BAK_EMS_LIST_GPTMP_TODAY.G_TYPE AND BAK_EMS_LIST_GPTMP.G_NO=BAK_EMS_LIST_GPTMP_TODAY.G_NO AND BAK_EMS_LIST_GPTMP.MODIFY_TIMES=BAK_EMS_LIST_GPTMP_TODAY.MODIFY_TIMES ;
insert into BAK_EMS_LIST_GPTMP_TODAY (CMD_TYPE,EMS_NO,G_TYPE,G_NO,MODIFY_TIMES,COP_G_NO,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,UNIT,UNIT_1,UNIT_2,COUNTRY_CODE,SOURCE_MARK,DEC_PRICE,CURR,DEC_PRICE_RMB,FACTOR_1,FACTOR_2,FACTOR_WT,FACTOR_RATE,QTY,MAX_QTY,FIRST_QTY,I_E_TYPE,USE_TYPE,NOTE_1,NOTE_2,NOTE,MODIFY_MARK,G_MERGE,G_TRADE,QTY_MARK,INC_AMOUNT,INC_QTY,INC_WT,CUT_AMOUNT,CUT_QTY,CUT_WT,CM_AMOUNT,CM_QTY,CM_WT,CLR_INC_QTY,CLR_CUT_QTY,DUTY_MODE,DUTY_RATE,CHK_PRICE,PROCESS_MARK,ENTRY_ID,LIMIT_DATE,ETL_MARK,USD_PRICE,APPR_AMT) select CMD_TYPE,EMS_NO,G_TYPE,G_NO,MODIFY_TIMES,COP_G_NO,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,UNIT,UNIT_1,UNIT_2,COUNTRY_CODE,SOURCE_MARK,DEC_PRICE,CURR,DEC_PRICE_RMB,FACTOR_1,FACTOR_2,FACTOR_WT,FACTOR_RATE,QTY,MAX_QTY,FIRST_QTY,I_E_TYPE,USE_TYPE,NOTE_1,NOTE_2,NOTE,MODIFY_MARK,G_MERGE,G_TRADE,QTY_MARK,INC_AMOUNT,INC_QTY,INC_WT,CUT_AMOUNT,CUT_QTY,CUT_WT,CM_AMOUNT,CM_QTY,CM_WT,CLR_INC_QTY,CLR_CUT_QTY,DUTY_MODE,DUTY_RATE,CHK_PRICE,PROCESS_MARK,ENTRY_ID,LIMIT_DATE,ETL_MARK,USD_PRICE,APPR_AMT from BAK_EMS_LIST_INC_EXT;
delete from BAK_EMS_LIST_GPTMP;
\timing
