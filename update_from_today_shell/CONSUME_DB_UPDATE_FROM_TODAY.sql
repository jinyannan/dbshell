\echo -----------------------CONSUME_DB------------------------
select now();
\timing
delete from CONSUME_DB using CONSUME_DB_GPTMP_TODAY where CONSUME_DB.EX_CODE_TS=CONSUME_DB_GPTMP_TODAY.EX_CODE_TS AND CONSUME_DB.EX_NO=CONSUME_DB_GPTMP_TODAY.EX_NO AND CONSUME_DB.IM_CODE_TS=CONSUME_DB_GPTMP_TODAY.IM_CODE_TS AND CONSUME_DB.IM_NO=CONSUME_DB_GPTMP_TODAY.IM_NO ;
insert into CONSUME_DB (EX_CODE_TS,EX_NO,IM_CODE_TS,IM_NO,CONSUME_RATIO,DAMAGE_RATIO,CONSUME_RANGE,CONSUME_NOTE,G_CLASS,INPUT_DATE,LIMIT_DATE) select EX_CODE_TS,EX_NO,IM_CODE_TS,IM_NO,CONSUME_RATIO,DAMAGE_RATIO,CONSUME_RANGE,CONSUME_NOTE,G_CLASS,INPUT_DATE,LIMIT_DATE from CONSUME_DB_GPTMP_TODAY  where CMD_TYPE='I';
\timing
