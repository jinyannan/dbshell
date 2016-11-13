\echo ------------------EGS_CLEAR_LIST----------------
select now();
\timing
insert into EGS_CLEAR_LIST_GPTMP (CMD_TYPE,CLR_NO, G_NO) select CMD_TYPE,CLR_NO, G_NO from EGS_CLEAR_LIST_INC_EXT;

delete from EGS_CLEAR_LIST using EGS_CLEAR_LIST_GPTMP where EGS_CLEAR_LIST_GPTMP.CLR_NO=EGS_CLEAR_LIST.CLR_NO AND EGS_CLEAR_LIST_GPTMP.G_NO=EGS_CLEAR_LIST.G_NO ;

insert into EGS_CLEAR_LIST(CLR_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,DECL_NO,DECL_G_NO) select CLR_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,DECL_NO,DECL_G_NO from EGS_CLEAR_LIST_INC_EXT where CMD_TYPE='I';

delete from EGS_CLEAR_LIST_GPTMP;

\timing
