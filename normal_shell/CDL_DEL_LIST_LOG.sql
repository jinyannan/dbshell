\echo ------------------CDL_DEL_LIST_LOG----------------
select now();
\timing
insert into CDL_DEL_LIST_LOG_GPTMP (CMD_TYPE,LIST_NO, G_NO) select CMD_TYPE,LIST_NO, G_NO from CDL_DEL_LIST_LOG_INC_EXT;

delete from CDL_DEL_LIST_LOG using CDL_DEL_LIST_LOG_GPTMP where CDL_DEL_LIST_LOG_GPTMP.LIST_NO=CDL_DEL_LIST_LOG.LIST_NO AND CDL_DEL_LIST_LOG_GPTMP.G_NO=CDL_DEL_LIST_LOG.G_NO ;

insert into CDL_DEL_LIST_LOG(LIST_NO,G_NO,RECORDS_NO,D_DATE,CODE_TS,G_NAME,G_MODEL,G_QTY,G_UNIT,ORIGIN_COUNTRY,DECL_PRICE,DECL_TOTAL,TRADE_CURR,DUTY_MODE,D_RATE,DUTY_RATE,T_RATE,TAX_RATE,R_RATE,REG_RATE,TARIFF_MARK,EXCH_RATE,RMB_RATE,USD_RATE,G_CERT_FLAG,LIST_CONDITION) select LIST_NO,G_NO,RECORDS_NO,D_DATE,CODE_TS,G_NAME,G_MODEL,G_QTY,G_UNIT,ORIGIN_COUNTRY,DECL_PRICE,DECL_TOTAL,TRADE_CURR,DUTY_MODE,D_RATE,DUTY_RATE,T_RATE,TAX_RATE,R_RATE,REG_RATE,TARIFF_MARK,EXCH_RATE,RMB_RATE,USD_RATE,G_CERT_FLAG,LIST_CONDITION from CDL_DEL_LIST_LOG_INC_EXT where CMD_TYPE='I';

delete from CDL_DEL_LIST_LOG_GPTMP;

\timing