\echo ------------------PRE_APPL_CLOSE_CONSUME----------------
select now();
\timing
delete from PRE_APPL_CLOSE_CONSUME_GPTMP;
insert into PRE_APPL_CLOSE_CONSUME_GPTMP (CMD_TYPE,MANUAL_NO, CONTR_ITEM, EX_NO) select CMD_TYPE,MANUAL_NO, CONTR_ITEM, EX_NO from PRE_APPL_CLOSE_CONSUME_INC_EXT;
delete from PRE_APPL_CLOSE_CONSUME_GPTMP_TODAY using PRE_APPL_CLOSE_CONSUME_GPTMP where PRE_APPL_CLOSE_CONSUME_GPTMP.MANUAL_NO=PRE_APPL_CLOSE_CONSUME_GPTMP_TODAY.MANUAL_NO AND PRE_APPL_CLOSE_CONSUME_GPTMP.CONTR_ITEM=PRE_APPL_CLOSE_CONSUME_GPTMP_TODAY.CONTR_ITEM AND PRE_APPL_CLOSE_CONSUME_GPTMP.EX_NO=PRE_APPL_CLOSE_CONSUME_GPTMP_TODAY.EX_NO ;
insert into PRE_APPL_CLOSE_CONSUME_GPTMP_TODAY (CMD_TYPE,MANUAL_NO,CONTR_ITEM,CODE_TS,G_NAME,G_MODEL,EX_NO,DECL_CONSUME,DECL_DAMAGE) select CMD_TYPE,MANUAL_NO,CONTR_ITEM,CODE_TS,G_NAME,G_MODEL,EX_NO,DECL_CONSUME,DECL_DAMAGE from PRE_APPL_CLOSE_CONSUME_INC_EXT;
delete from PRE_APPL_CLOSE_CONSUME_GPTMP;
\timing
