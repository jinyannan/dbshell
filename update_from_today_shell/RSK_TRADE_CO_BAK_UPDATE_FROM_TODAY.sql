\echo -----------------------RSK_TRADE_CO_BAK------------------------
select now();
\timing
delete from RSK_TRADE_CO_BAK using RSK_TRADE_CO_BAK_GPTMP_TODAY where RSK_TRADE_CO_BAK.CCTS_CODE=RSK_TRADE_CO_BAK_GPTMP_TODAY.CCTS_CODE AND RSK_TRADE_CO_BAK.OP_BAK_TIME=RSK_TRADE_CO_BAK_GPTMP_TODAY.OP_BAK_TIME ;
insert into RSK_TRADE_CO_BAK (CCTS_CODE,TRADE_CO,TRADE_NAME,BEGIN_DATE,END_DATE,CUSTOMS_CODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,I_E_FLAG,OP_BAK_TYPE,OP_BAK_CUSTOMS,OP_BAK_MAN,OP_BAK_TIME) select CCTS_CODE,TRADE_CO,TRADE_NAME,BEGIN_DATE,END_DATE,CUSTOMS_CODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,I_E_FLAG,OP_BAK_TYPE,OP_BAK_CUSTOMS,OP_BAK_MAN,OP_BAK_TIME from RSK_TRADE_CO_BAK_GPTMP_TODAY  where CMD_TYPE='I';
\timing