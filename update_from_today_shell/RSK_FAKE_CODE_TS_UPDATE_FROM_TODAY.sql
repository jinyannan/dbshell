\echo -----------------------RSK_FAKE_CODE_TS------------------------
select now();
\timing
delete from RSK_FAKE_CODE_TS using RSK_FAKE_CODE_TS_GPTMP_TODAY where RSK_FAKE_CODE_TS.CCTS_CODE=RSK_FAKE_CODE_TS_GPTMP_TODAY.CCTS_CODE ;
insert into RSK_FAKE_CODE_TS (CCTS_CODE,CODE_TS,I_E_FLAG,BEGIN_DATE,END_DATE,CUSTOMS_CODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,SMUGGLE_TYPE) select CCTS_CODE,CODE_TS,I_E_FLAG,BEGIN_DATE,END_DATE,CUSTOMS_CODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,SMUGGLE_TYPE from RSK_FAKE_CODE_TS_GPTMP_TODAY  where CMD_TYPE='I';
\timing
