\echo -----------------------PRE_EX_FASCICLE_LIST------------------------
select now();
\timing
delete from PRE_EX_FASCICLE_LIST using PRE_EX_FASCICLE_LIST_GPTMP_TODAY where PRE_EX_FASCICLE_LIST.FASCICLE_NO=PRE_EX_FASCICLE_LIST_GPTMP_TODAY.FASCICLE_NO AND PRE_EX_FASCICLE_LIST.CONTR_ITEM=PRE_EX_FASCICLE_LIST_GPTMP_TODAY.CONTR_ITEM ;
insert into PRE_EX_FASCICLE_LIST (MANUAL_NO,FASCICLE_NO,CONTR_ITEM,APPR_QTY,FACT_QTY) select MANUAL_NO,FASCICLE_NO,CONTR_ITEM,APPR_QTY,FACT_QTY from PRE_EX_FASCICLE_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing