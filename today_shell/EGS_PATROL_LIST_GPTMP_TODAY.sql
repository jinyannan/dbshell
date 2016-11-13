\echo ------------------EGS_PATROL_LIST----------------
select now();
\timing
delete from EGS_PATROL_LIST_GPTMP;
insert into EGS_PATROL_LIST_GPTMP (CMD_TYPE,PAT_NO, G_NO) select CMD_TYPE,PAT_NO, G_NO from EGS_PATROL_LIST_INC_EXT;
delete from EGS_PATROL_LIST_GPTMP_TODAY using EGS_PATROL_LIST_GPTMP where EGS_PATROL_LIST_GPTMP.PAT_NO=EGS_PATROL_LIST_GPTMP_TODAY.PAT_NO AND EGS_PATROL_LIST_GPTMP.G_NO=EGS_PATROL_LIST_GPTMP_TODAY.G_NO ;
insert into EGS_PATROL_LIST_GPTMP_TODAY (CMD_TYPE,PAT_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,DECL_NO,DECL_G_NO) select CMD_TYPE,PAT_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,G_NO,CODE_TS,G_CERT_FLAG,G_NAME,G_MODEL,QTY1,QTY2,DECL_QTY,UNIT1,UNIT2,DECL_UNIT,DECL_PRICE,DECL_TOTAL,TRADE_CURR,ORIGIN_COUNTRY,DECL_NO,DECL_G_NO from EGS_PATROL_LIST_INC_EXT;
delete from EGS_PATROL_LIST_GPTMP;
\timing