\echo -----------------------APPL_CLOSE_CONSUME------------------------
select now();
\timing
delete from APPL_CLOSE_CONSUME using APPL_CLOSE_CONSUME_GPTMP_TODAY where APPL_CLOSE_CONSUME.MANUAL_NO=APPL_CLOSE_CONSUME_GPTMP_TODAY.MANUAL_NO AND APPL_CLOSE_CONSUME.CONTR_ITEM=APPL_CLOSE_CONSUME_GPTMP_TODAY.CONTR_ITEM AND APPL_CLOSE_CONSUME.EX_NO=APPL_CLOSE_CONSUME_GPTMP_TODAY.EX_NO ;
insert into APPL_CLOSE_CONSUME (MANUAL_NO,CONTR_ITEM,CODE_TS,G_NAME,G_MODEL,EX_NO,DECL_CONSUME,DECL_DAMAGE) select MANUAL_NO,CONTR_ITEM,CODE_TS,G_NAME,G_MODEL,EX_NO,DECL_CONSUME,DECL_DAMAGE from APPL_CLOSE_CONSUME_GPTMP_TODAY  where CMD_TYPE='I';
\timing
