\echo ------------------PES_NOTE----------------
select now();
\timing
delete from PES_NOTE_GPTMP;
insert into PES_NOTE_GPTMP (CMD_TYPE,NOTE_NO) select CMD_TYPE,NOTE_NO from PES_NOTE_INC_EXT;
delete from PES_NOTE_GPTMP_TODAY using PES_NOTE_GPTMP where PES_NOTE_GPTMP.NOTE_NO=PES_NOTE_GPTMP_TODAY.NOTE_NO ;
insert into PES_NOTE_GPTMP_TODAY (CMD_TYPE,NOTE_NO,NOTE_TYPE,I_E_FLAG,ID_STAT,APPR_DATE,BEGIN_DATE,END_DATE,TRADE_CODE,TRADE_NAME,CODE_TS,G_NAME,G_USE,QTY,UNIT,DISTRICT_CODE,TRADE_MODE,I_E_PORT,STAT,VERIFY_DATE,VERIFY_ER,CLEAR_DATE,CLEAR_ER) select CMD_TYPE,NOTE_NO,NOTE_TYPE,I_E_FLAG,ID_STAT,APPR_DATE,BEGIN_DATE,END_DATE,TRADE_CODE,TRADE_NAME,CODE_TS,G_NAME,G_USE,QTY,UNIT,DISTRICT_CODE,TRADE_MODE,I_E_PORT,STAT,VERIFY_DATE,VERIFY_ER,CLEAR_DATE,CLEAR_ER from PES_NOTE_INC_EXT;
delete from PES_NOTE_GPTMP;
\timing
