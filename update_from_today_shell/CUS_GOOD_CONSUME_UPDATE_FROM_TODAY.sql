\echo -----------------------CUS_GOOD_CONSUME------------------------
select now();
\timing
delete from CUS_GOOD_CONSUME using CUS_GOOD_CONSUME_GPTMP_TODAY where CUS_GOOD_CONSUME.REC_NUM=CUS_GOOD_CONSUME_GPTMP_TODAY.REC_NUM ;
insert into CUS_GOOD_CONSUME (REC_NUM,EX_CODE_TS,IM_CODE_TS,CUS_CODE,G_FLAG,EX_G_NAME,EX_G_MODEL,EX_UNIT_1,EX_UNIT_2,EX_G_UNIT,EX_FACTOR,EX_COUNTRY,IM_G_NAME,IM_G_MODEL,IM_UNIT_1,IM_UNIT_2,IM_G_UNIT,IM_FACTOR,IM_COUNTRY,INFO_SOURCE,MAX_CONSUME,MIN_CONSUME,MAX_DAMAGE,MIN_DAMAGE,LIMIT_DATE,INPUT_DATE,CHK_DATE,MODI_DATE,DEL_DATE,INPUT_ER,CHK_ER,MODI_ER,DEL_ER,CONSUME_NOTE,EXEC_FLAG,FORMULA,CONSUME_VER,NOTE_S,IM_FACTOR_1,EX_FACTOR_1,EX_G_NAME_KEY,EX_G_MODEL_KEY,IM_G_NAME_KEY,IM_G_MODEL_KEY) select REC_NUM,EX_CODE_TS,IM_CODE_TS,CUS_CODE,G_FLAG,EX_G_NAME,EX_G_MODEL,EX_UNIT_1,EX_UNIT_2,EX_G_UNIT,EX_FACTOR,EX_COUNTRY,IM_G_NAME,IM_G_MODEL,IM_UNIT_1,IM_UNIT_2,IM_G_UNIT,IM_FACTOR,IM_COUNTRY,INFO_SOURCE,MAX_CONSUME,MIN_CONSUME,MAX_DAMAGE,MIN_DAMAGE,LIMIT_DATE,INPUT_DATE,CHK_DATE,MODI_DATE,DEL_DATE,INPUT_ER,CHK_ER,MODI_ER,DEL_ER,CONSUME_NOTE,EXEC_FLAG,FORMULA,CONSUME_VER,NOTE_S,IM_FACTOR_1,EX_FACTOR_1,EX_G_NAME_KEY,EX_G_MODEL_KEY,IM_G_NAME_KEY,IM_G_MODEL_KEY from CUS_GOOD_CONSUME_GPTMP_TODAY  where CMD_TYPE='I';
\timing
