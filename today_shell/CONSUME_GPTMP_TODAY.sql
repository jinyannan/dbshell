\echo ------------------CONSUME----------------
select now();
\timing
delete from CONSUME_GPTMP;
insert into CONSUME_GPTMP (CMD_TYPE,MANUAL_NO, CONTR_ITEM, EX_NO) select CMD_TYPE,MANUAL_NO, CONTR_ITEM, EX_NO from CONSUME_INC_EXT;
delete from CONSUME_GPTMP_TODAY using CONSUME_GPTMP where CONSUME_GPTMP.MANUAL_NO=CONSUME_GPTMP_TODAY.MANUAL_NO AND CONSUME_GPTMP.CONTR_ITEM=CONSUME_GPTMP_TODAY.CONTR_ITEM AND CONSUME_GPTMP.EX_NO=CONSUME_GPTMP_TODAY.EX_NO ;
insert into CONSUME_GPTMP_TODAY (CMD_TYPE,MANUAL_NO,CONTR_ITEM,EX_NO,APPR_CONSUME,APPR_DAMAGE,DECL_CONSUME,DECL_DAMAGE) select CMD_TYPE,MANUAL_NO,CONTR_ITEM,EX_NO,APPR_CONSUME,APPR_DAMAGE,DECL_CONSUME,DECL_DAMAGE from CONSUME_INC_EXT;
delete from CONSUME_GPTMP;
\timing
