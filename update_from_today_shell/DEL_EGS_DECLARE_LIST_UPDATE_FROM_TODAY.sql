\echo -----------------------DEL_EGS_DECLARE_LIST------------------------
select now();
\timing
delete from DEL_EGS_DECLARE_LIST using DEL_EGS_DECLARE_LIST_GPTMP_TODAY where DEL_EGS_DECLARE_LIST.DECL_NO=DEL_EGS_DECLARE_LIST_GPTMP_TODAY.DECL_NO AND DEL_EGS_DECLARE_LIST.G_NO=DEL_EGS_DECLARE_LIST_GPTMP_TODAY.G_NO ;
insert into DEL_EGS_DECLARE_LIST (DECL_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CONTR_ITEM,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,EXHIBITION_NO,CLR_QTY,UNCLR_QTY,LEND_QTY,TAX_QTY,CONSUME_QTY,CLEAR_QTY,LOST_QTY,OTHER_QTY,EX_QTY,BUY_QTY,REEXPORT_QTY,LAST_DECL_NO,LAST_G_NO,FIRST_DECL_NO,FIRST_G_NO,EXHIBITION_SITE_NO,TRADE_TOTAL,RMB_PRICE,USD_PRICE,DUTY_VALUE) select DECL_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CONTR_ITEM,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,EXHIBITION_NO,CLR_QTY,UNCLR_QTY,LEND_QTY,TAX_QTY,CONSUME_QTY,CLEAR_QTY,LOST_QTY,OTHER_QTY,EX_QTY,BUY_QTY,REEXPORT_QTY,LAST_DECL_NO,LAST_G_NO,FIRST_DECL_NO,FIRST_G_NO,EXHIBITION_SITE_NO,TRADE_TOTAL,RMB_PRICE,USD_PRICE,DUTY_VALUE from DEL_EGS_DECLARE_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
