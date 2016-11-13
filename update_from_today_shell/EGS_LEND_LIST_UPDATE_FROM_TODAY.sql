\echo -----------------------EGS_LEND_LIST------------------------
select now();
\timing
delete from EGS_LEND_LIST using EGS_LEND_LIST_GPTMP_TODAY where EGS_LEND_LIST.LEND_NO=EGS_LEND_LIST_GPTMP_TODAY.LEND_NO AND EGS_LEND_LIST.G_NO=EGS_LEND_LIST_GPTMP_TODAY.G_NO ;
insert into EGS_LEND_LIST (LEND_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,DECL_NO,DECL_G_NO) select LEND_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,DECL_NO,DECL_G_NO from EGS_LEND_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing