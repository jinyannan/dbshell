\echo ------------------RSK_CODE_TS----------------
select now();
\timing
insert into RSK_CODE_TS_GPTMP (CMD_TYPE,CCTS_CODE) select CMD_TYPE,CCTS_CODE from RSK_CODE_TS_INC_EXT;

delete from RSK_CODE_TS using RSK_CODE_TS_GPTMP where RSK_CODE_TS_GPTMP.CCTS_CODE=RSK_CODE_TS.CCTS_CODE ;

insert into RSK_CODE_TS(CCTS_CODE,CODE_TS,I_E_FLAG,CUSTOMS_CODE,BEGIN_DATE,END_DATE,INPUT_ID,AUTHORIZE_ID,OP_TIME,NOTE) select CCTS_CODE,CODE_TS,I_E_FLAG,CUSTOMS_CODE,BEGIN_DATE,END_DATE,INPUT_ID,AUTHORIZE_ID,OP_TIME,NOTE from RSK_CODE_TS_INC_EXT where CMD_TYPE='I';

delete from RSK_CODE_TS_GPTMP;

\timing
