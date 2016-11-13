\echo ------------------EGS_DECLARE_LIST----------------
select now();
\timing
delete from EGS_DECLARE_LIST_GPTMP;
insert into EGS_DECLARE_LIST_GPTMP (CMD_TYPE,DECL_NO, G_NO) select CMD_TYPE,DECL_NO, G_NO from EGS_DECLARE_LIST_INC_EXT;
delete from EGS_DECLARE_LIST_GPTMP_TODAY using EGS_DECLARE_LIST_GPTMP where EGS_DECLARE_LIST_GPTMP.DECL_NO=EGS_DECLARE_LIST_GPTMP_TODAY.DECL_NO AND EGS_DECLARE_LIST_GPTMP.G_NO=EGS_DECLARE_LIST_GPTMP_TODAY.G_NO ;
insert into EGS_DECLARE_LIST_GPTMP_TODAY (CMD_TYPE,DECL_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CONTR_ITEM,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,EXHIBITION_NO,CLR_QTY,UNCLR_QTY,LEND_QTY,TAX_QTY,CONSUME_QTY,CLEAR_QTY,LOST_QTY,OTHER_QTY,EX_QTY,BUY_QTY,REEXPORT_QTY,LAST_DECL_NO,LAST_G_NO,FIRST_DECL_NO,FIRST_G_NO,EXHIBITION_SITE_NO,TRADE_TOTAL,RMB_PRICE,USD_PRICE,DUTY_VALUE) select CMD_TYPE,DECL_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CONTR_ITEM,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,EXHIBITION_NO,CLR_QTY,UNCLR_QTY,LEND_QTY,TAX_QTY,CONSUME_QTY,CLEAR_QTY,LOST_QTY,OTHER_QTY,EX_QTY,BUY_QTY,REEXPORT_QTY,LAST_DECL_NO,LAST_G_NO,FIRST_DECL_NO,FIRST_G_NO,EXHIBITION_SITE_NO,TRADE_TOTAL,RMB_PRICE,USD_PRICE,DUTY_VALUE from EGS_DECLARE_LIST_INC_EXT;
delete from EGS_DECLARE_LIST_GPTMP;
\timing
