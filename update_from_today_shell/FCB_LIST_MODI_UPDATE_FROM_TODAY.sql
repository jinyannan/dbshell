\echo -----------------------FCB_LIST_MODI------------------------
select now();
\timing
delete from FCB_LIST_MODI using FCB_LIST_MODI_GPTMP_TODAY where FCB_LIST_MODI.FCB_ID=FCB_LIST_MODI_GPTMP_TODAY.FCB_ID AND FCB_LIST_MODI.G_NO=FCB_LIST_MODI_GPTMP_TODAY.G_NO ;
insert into FCB_LIST_MODI (FCB_ID,G_NO,CODE_TS,G_NAME,WRAP_TYPE,PACK_NO,GROSS_WT,PRICE,CURR,MARK,CONSIGNOR,CONSIGNEE,UCR,UNDG,FREE_TEXT,BILL_NO) select FCB_ID,G_NO,CODE_TS,G_NAME,WRAP_TYPE,PACK_NO,GROSS_WT,PRICE,CURR,MARK,CONSIGNOR,CONSIGNEE,UCR,UNDG,FREE_TEXT,BILL_NO from FCB_LIST_MODI_GPTMP_TODAY  where CMD_TYPE='I';
\timing
