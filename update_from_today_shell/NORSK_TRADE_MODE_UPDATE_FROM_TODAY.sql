\echo -----------------------NORSK_TRADE_MODE------------------------
select now();
\timing
delete from NORSK_TRADE_MODE using NORSK_TRADE_MODE_GPTMP_TODAY where NORSK_TRADE_MODE.CCTS_CODE=NORSK_TRADE_MODE_GPTMP_TODAY.CCTS_CODE ;
insert into NORSK_TRADE_MODE (CCTS_CODE,TRADE_MODE,TRADE_NAME,BEGIN_DATE,END_DATE,CUSTOMS_CODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,I_E_FLAG) select CCTS_CODE,TRADE_MODE,TRADE_NAME,BEGIN_DATE,END_DATE,CUSTOMS_CODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,I_E_FLAG from NORSK_TRADE_MODE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
