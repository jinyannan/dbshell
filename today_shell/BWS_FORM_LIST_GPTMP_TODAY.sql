\echo ------------------BWS_FORM_LIST----------------
select now();
\timing
delete from BWS_FORM_LIST_GPTMP;
insert into BWS_FORM_LIST_GPTMP (CMD_TYPE,FORM_ID, G_NO) select CMD_TYPE,FORM_ID, G_NO from BWS_FORM_LIST_INC_EXT;
delete from BWS_FORM_LIST_GPTMP_TODAY using BWS_FORM_LIST_GPTMP where BWS_FORM_LIST_GPTMP.FORM_ID=BWS_FORM_LIST_GPTMP_TODAY.FORM_ID AND BWS_FORM_LIST_GPTMP.G_NO=BWS_FORM_LIST_GPTMP_TODAY.G_NO ;
insert into BWS_FORM_LIST_GPTMP_TODAY (CMD_TYPE,FORM_ID,G_NO,CODE_TS,G_NAME,G_MODEL,ORIGIN_COUNTRY,CONTR_ITEM,TRADE_CURR,EXCHANGE_RATE,DECL_PRICE,DECL_TOTAL,USE_TO,DUTY_MODE,G_QTY,G_UNIT,QTY_1,UNIT_1,QTY_2,UNIT_2,TRADE_TOTAL,RMB_PRICE,USD_PRICE,DUTY_VALUE,G_PROCESS_MARK,WORK_USD,CLASS_MARK,G_CERT_FLAG,PRDT_NO,GOODS_ID,DECL_CODE_TS,AGREEMENT_ID) select CMD_TYPE,FORM_ID,G_NO,CODE_TS,G_NAME,G_MODEL,ORIGIN_COUNTRY,CONTR_ITEM,TRADE_CURR,EXCHANGE_RATE,DECL_PRICE,DECL_TOTAL,USE_TO,DUTY_MODE,G_QTY,G_UNIT,QTY_1,UNIT_1,QTY_2,UNIT_2,TRADE_TOTAL,RMB_PRICE,USD_PRICE,DUTY_VALUE,G_PROCESS_MARK,WORK_USD,CLASS_MARK,G_CERT_FLAG,PRDT_NO,GOODS_ID,DECL_CODE_TS,AGREEMENT_ID from BWS_FORM_LIST_INC_EXT;
delete from BWS_FORM_LIST_GPTMP;
\timing
