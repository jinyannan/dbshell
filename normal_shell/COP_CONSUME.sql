\echo ------------------COP_CONSUME----------------
select now();
\timing
insert into COP_CONSUME_GPTMP (CMD_TYPE,REC_NUM) select CMD_TYPE,REC_NUM from COP_CONSUME_INC_EXT;

delete from COP_CONSUME using COP_CONSUME_GPTMP where COP_CONSUME_GPTMP.REC_NUM=COP_CONSUME.REC_NUM ;

insert into COP_CONSUME(REC_NUM,EX_CODE_TS,IM_CODE_TS,CUS_CODE,EX_G_NAME,EX_G_MODEL,EX_UNIT_1,EX_UNIT_2,EX_G_UNIT,EX_FACTOR,EX_COUNTRY,IM_G_NAME,IM_G_MODEL,IM_UNIT_1,IM_UNIT_2,IM_G_UNIT,IM_FACTOR,IM_COUNTRY,INFO_SOURCE,MAX_CONSUME,MIN_CONSUME,MAX_DAMAGE,MIN_DAMAGE,INPUT_DATE,LIMIT_DATE,INPUT_ER,MODI_ER,DEL_ER,EXEC_FLAG,COP_CODE,MANUAL_NO,EX_G_NAME_KEY,EX_G_MODEL_KEY,IM_G_NAME_KEY,IM_G_MODEL_KEY,CONSUME_VER,NOTE_S) select REC_NUM,EX_CODE_TS,IM_CODE_TS,CUS_CODE,EX_G_NAME,EX_G_MODEL,EX_UNIT_1,EX_UNIT_2,EX_G_UNIT,EX_FACTOR,EX_COUNTRY,IM_G_NAME,IM_G_MODEL,IM_UNIT_1,IM_UNIT_2,IM_G_UNIT,IM_FACTOR,IM_COUNTRY,INFO_SOURCE,MAX_CONSUME,MIN_CONSUME,MAX_DAMAGE,MIN_DAMAGE,INPUT_DATE,LIMIT_DATE,INPUT_ER,MODI_ER,DEL_ER,EXEC_FLAG,COP_CODE,MANUAL_NO,EX_G_NAME_KEY,EX_G_MODEL_KEY,IM_G_NAME_KEY,IM_G_MODEL_KEY,CONSUME_VER,NOTE_S from COP_CONSUME_INC_EXT where CMD_TYPE='I';

delete from COP_CONSUME_GPTMP;

\timing
