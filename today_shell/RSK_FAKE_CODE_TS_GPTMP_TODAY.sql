\echo ------------------RSK_FAKE_CODE_TS----------------
select now();
\timing
delete from RSK_FAKE_CODE_TS_GPTMP;
insert into RSK_FAKE_CODE_TS_GPTMP (CMD_TYPE,CCTS_CODE) select CMD_TYPE,CCTS_CODE from RSK_FAKE_CODE_TS_INC_EXT;
delete from RSK_FAKE_CODE_TS_GPTMP_TODAY using RSK_FAKE_CODE_TS_GPTMP where RSK_FAKE_CODE_TS_GPTMP.CCTS_CODE=RSK_FAKE_CODE_TS_GPTMP_TODAY.CCTS_CODE ;
insert into RSK_FAKE_CODE_TS_GPTMP_TODAY (CMD_TYPE,CCTS_CODE,CODE_TS,I_E_FLAG,BEGIN_DATE,END_DATE,CUSTOMS_CODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,SMUGGLE_TYPE) select CMD_TYPE,CCTS_CODE,CODE_TS,I_E_FLAG,BEGIN_DATE,END_DATE,CUSTOMS_CODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,SMUGGLE_TYPE from RSK_FAKE_CODE_TS_INC_EXT;
delete from RSK_FAKE_CODE_TS_GPTMP;
\timing
