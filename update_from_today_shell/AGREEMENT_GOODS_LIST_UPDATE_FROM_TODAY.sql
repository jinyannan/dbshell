\echo -----------------------AGREEMENT_GOODS_LIST------------------------
select now();
\timing
delete from AGREEMENT_GOODS_LIST using AGREEMENT_GOODS_LIST_GPTMP_TODAY where AGREEMENT_GOODS_LIST.ENTRY_ID=AGREEMENT_GOODS_LIST_GPTMP_TODAY.ENTRY_ID AND AGREEMENT_GOODS_LIST.G_NO=AGREEMENT_GOODS_LIST_GPTMP_TODAY.G_NO ;
insert into AGREEMENT_GOODS_LIST (ENTRY_ID,G_NO,D_DATE,CODE_TS,G_NAME,AGREEMENT_ID,QTY_1,UNIT_1,ORIGIN_COUNTRY,RMB_PRICE,USD_PRICE,CREATE_DATE) select ENTRY_ID,G_NO,D_DATE,CODE_TS,G_NAME,AGREEMENT_ID,QTY_1,UNIT_1,ORIGIN_COUNTRY,RMB_PRICE,USD_PRICE,CREATE_DATE from AGREEMENT_GOODS_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing