\echo -----------------------RAM_LIST------------------------
select now();
\timing
delete from RAM_LIST using RAM_LIST_GPTMP_TODAY where RAM_LIST.RAM_ID=RAM_LIST_GPTMP_TODAY.RAM_ID AND RAM_LIST.NUM=RAM_LIST_GPTMP_TODAY.NUM ;
insert into RAM_LIST (RAM_ID,NUM,G_NO,CODE_TS,G_NAME,G_MODEL,G_UNIT,G_QTY,DECL_TOTAL,TRADE_CURR,FACT_AMT,RESERVE1,NOTE,CUT_ID,PROJECT_ID,I_DATE) select RAM_ID,NUM,G_NO,CODE_TS,G_NAME,G_MODEL,G_UNIT,G_QTY,DECL_TOTAL,TRADE_CURR,FACT_AMT,RESERVE1,NOTE,CUT_ID,PROJECT_ID,I_DATE from RAM_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing