\echo -----------------------CDL_ENTRY_LIST------------------------
select now();
\timing
delete from CDL_ENTRY_LIST using CDL_ENTRY_LIST_GPTMP_TODAY where CDL_ENTRY_LIST.PRE_ENTRY_ID=CDL_ENTRY_LIST_GPTMP_TODAY.PRE_ENTRY_ID AND CDL_ENTRY_LIST.ENTRY_G_NO=CDL_ENTRY_LIST_GPTMP_TODAY.ENTRY_G_NO AND CDL_ENTRY_LIST.LIST_NO=CDL_ENTRY_LIST_GPTMP_TODAY.LIST_NO AND CDL_ENTRY_LIST.LIST_G_NO=CDL_ENTRY_LIST_GPTMP_TODAY.LIST_G_NO ;
insert into CDL_ENTRY_LIST (PRE_ENTRY_ID,ENTRY_ID,ENTRY_G_NO,LIST_NO,LIST_G_NO,CODE_TS,G_NAME,G_MODEL,G_UNIT,ORIGIN_COUNTRY,DECL_PRICE,TRADE_CURR,LIST_CONDITION) select PRE_ENTRY_ID,ENTRY_ID,ENTRY_G_NO,LIST_NO,LIST_G_NO,CODE_TS,G_NAME,G_MODEL,G_UNIT,ORIGIN_COUNTRY,DECL_PRICE,TRADE_CURR,LIST_CONDITION from CDL_ENTRY_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
