\echo -----------------------ENTRY_DEL_LIST_LOG------------------------
select now();
\timing
delete from ENTRY_DEL_LIST_LOG using ENTRY_DEL_LIST_LOG_GPTMP_TODAY where ENTRY_DEL_LIST_LOG.ENTRY_ID=ENTRY_DEL_LIST_LOG_GPTMP_TODAY.ENTRY_ID AND ENTRY_DEL_LIST_LOG.G_NO=ENTRY_DEL_LIST_LOG_GPTMP_TODAY.G_NO AND ENTRY_DEL_LIST_LOG.OP_TIME=ENTRY_DEL_LIST_LOG_GPTMP_TODAY.OP_TIME ;
insert into ENTRY_DEL_LIST_LOG (ENTRY_ID,G_NO,CODE_TS,G_NAME,G_MODEL,ORIGIN_COUNTRY,CONTR_ITEM,TRADE_CURR,EXCHANGE_RATE,DECL_PRICE,DECL_TOTAL,USE_TO,DUTY_MODE,G_QTY,G_UNIT,QTY_1,UNIT_1,QTY_2,UNIT_2,TRADE_TOTAL,RMB_PRICE,USD_PRICE,DUTY_VALUE,G_PROCESS_MARK,WORK_USD,CLASS_MARK,G_CERT_FLAG,TARIFF_MARK,DUTY_TYPE,REAL_DUTY,DUTY_CUT,DUTY_RATE,D_RATE,QTY_DUTY_RATE,QTY_D_RATE,TAX_TYPE,REAL_TAX,TAX_CUT,TAX_RATE,T_RATE,QTY_TAX_RATE,QTY_T_RATE,REG_TYPE,REAL_REG,REG_CUT,REG_RATE,R_RATE,QTY_REG_RATE,QTY_R_RATE,OIL_TYPE,REAL_OIL,OIL_CUT,OIL_RATE,O_RATE,QTY_OIL_RATE,QTY_O_RATE,ANTI_TYPE,REAL_ANTI,ANTI_CUT,ANTI_RATE,A_RATE,QTY_ANTI_RATE,QTY_A_RATE,PRDT_NO,GOODS_ID,DECL_CODE_TS,OP_TIME,OP_FLAG,AGREEMENT_ID,RSV1_TYPE,REAL_RSV1,RSV1_CUT,RSV1_RATE,R1_RATE,QTY_RSV1_RATE,QTY_R1_RATE,RSV2_TYPE,REAL_RSV2,RSV2_CUT,RSV2_RATE,R2_RATE,QTY_RSV2_RATE,QTY_R2_RATE) select ENTRY_ID,G_NO,CODE_TS,G_NAME,G_MODEL,ORIGIN_COUNTRY,CONTR_ITEM,TRADE_CURR,EXCHANGE_RATE,DECL_PRICE,DECL_TOTAL,USE_TO,DUTY_MODE,G_QTY,G_UNIT,QTY_1,UNIT_1,QTY_2,UNIT_2,TRADE_TOTAL,RMB_PRICE,USD_PRICE,DUTY_VALUE,G_PROCESS_MARK,WORK_USD,CLASS_MARK,G_CERT_FLAG,TARIFF_MARK,DUTY_TYPE,REAL_DUTY,DUTY_CUT,DUTY_RATE,D_RATE,QTY_DUTY_RATE,QTY_D_RATE,TAX_TYPE,REAL_TAX,TAX_CUT,TAX_RATE,T_RATE,QTY_TAX_RATE,QTY_T_RATE,REG_TYPE,REAL_REG,REG_CUT,REG_RATE,R_RATE,QTY_REG_RATE,QTY_R_RATE,OIL_TYPE,REAL_OIL,OIL_CUT,OIL_RATE,O_RATE,QTY_OIL_RATE,QTY_O_RATE,ANTI_TYPE,REAL_ANTI,ANTI_CUT,ANTI_RATE,A_RATE,QTY_ANTI_RATE,QTY_A_RATE,PRDT_NO,GOODS_ID,DECL_CODE_TS,OP_TIME,OP_FLAG,AGREEMENT_ID,RSV1_TYPE,REAL_RSV1,RSV1_CUT,RSV1_RATE,R1_RATE,QTY_RSV1_RATE,QTY_R1_RATE,RSV2_TYPE,REAL_RSV2,RSV2_CUT,RSV2_RATE,R2_RATE,QTY_RSV2_RATE,QTY_R2_RATE from ENTRY_DEL_LIST_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing
