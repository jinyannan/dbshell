\echo -----------------------PRE_EXA_APPL_CLOSE------------------------
select now();
\timing
delete from PRE_EXA_APPL_CLOSE using PRE_EXA_APPL_CLOSE_GPTMP_TODAY where PRE_EXA_APPL_CLOSE.MANUAL_NO=PRE_EXA_APPL_CLOSE_GPTMP_TODAY.MANUAL_NO AND PRE_EXA_APPL_CLOSE.CONTR_ITEM=PRE_EXA_APPL_CLOSE_GPTMP_TODAY.CONTR_ITEM ;
insert into PRE_EXA_APPL_CLOSE (MANUAL_NO,CONTR_ITEM,CODE_TS,G_NAME,G_MODEL,G_QTY,DECL_PRICE,G_AMT,PROC_MODE,BOOK_NO) select MANUAL_NO,CONTR_ITEM,CODE_TS,G_NAME,G_MODEL,G_QTY,DECL_PRICE,G_AMT,PROC_MODE,BOOK_NO from PRE_EXA_APPL_CLOSE_GPTMP_TODAY  where CMD_TYPE='I';
\timing