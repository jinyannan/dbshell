\echo -----------------------BAK_IM_CONTRACT_LIST------------------------
select now();
\timing
delete from BAK_IM_CONTRACT_LIST using BAK_IM_CONTRACT_LIST_GPTMP_TODAY where BAK_IM_CONTRACT_LIST.MANUAL_NO=BAK_IM_CONTRACT_LIST_GPTMP_TODAY.MANUAL_NO AND BAK_IM_CONTRACT_LIST.CONTR_ITEM=BAK_IM_CONTRACT_LIST_GPTMP_TODAY.CONTR_ITEM ;
insert into BAK_IM_CONTRACT_LIST (MANUAL_NO,CONTR_ITEM,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,ORIGIN_COUNTRY,DUTY_MODE,DUTY_RATIO,LOCAL_CONTR,APPR_AMT,FACT_AMT,UNIT_PRICE,APPR_QTY,FACT_QTY,TRANSFER_QTY,UNIT_1,IN_COUNT,IM_MODE,CONSUME_NOTE) select MANUAL_NO,CONTR_ITEM,CODE_TS,CLASS_MARK,G_NAME,G_MODEL,ORIGIN_COUNTRY,DUTY_MODE,DUTY_RATIO,LOCAL_CONTR,APPR_AMT,FACT_AMT,UNIT_PRICE,APPR_QTY,FACT_QTY,TRANSFER_QTY,UNIT_1,IN_COUNT,IM_MODE,CONSUME_NOTE from BAK_IM_CONTRACT_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
