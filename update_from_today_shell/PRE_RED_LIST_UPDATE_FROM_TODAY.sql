\echo -----------------------PRE_RED_LIST------------------------
select now();
\timing
delete from PRE_RED_LIST using PRE_RED_LIST_GPTMP_TODAY where PRE_RED_LIST.CUT_ID=PRE_RED_LIST_GPTMP_TODAY.CUT_ID AND PRE_RED_LIST.MODIFY_TIMES=PRE_RED_LIST_GPTMP_TODAY.MODIFY_TIMES AND PRE_RED_LIST.G_NO=PRE_RED_LIST_GPTMP_TODAY.G_NO ;
insert into PRE_RED_LIST (CUT_ID,MODIFY_TIMES,G_NO,MAN_G_NO,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,ORIGIN_COUNTRY,G_UNIT,G_QTY,UNIT_1,QTY_1,UNIT_2,QTY_2,DECL_TOTAL,TRADE_CURR,DUTY_MODE,D_RATE,T_RATE,O_RATE,DUTY_RATE,TAX_RATE,OTHER_RATE,DUTY_CUT,TAX_CUT,OTHER_CUT,APPR_QUOTA,FACT_AMT,FACT_QTY,DUTY_VALUE,AUDIT_FLAG,RESERVE1,NOTE) select CUT_ID,MODIFY_TIMES,G_NO,MAN_G_NO,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,ORIGIN_COUNTRY,G_UNIT,G_QTY,UNIT_1,QTY_1,UNIT_2,QTY_2,DECL_TOTAL,TRADE_CURR,DUTY_MODE,D_RATE,T_RATE,O_RATE,DUTY_RATE,TAX_RATE,OTHER_RATE,DUTY_CUT,TAX_CUT,OTHER_CUT,APPR_QUOTA,FACT_AMT,FACT_QTY,DUTY_VALUE,AUDIT_FLAG,RESERVE1,NOTE from PRE_RED_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing