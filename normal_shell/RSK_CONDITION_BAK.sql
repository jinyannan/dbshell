\echo ------------------RSK_CONDITION_BAK----------------
select now();
\timing
insert into RSK_CONDITION_BAK_GPTMP (CMD_TYPE,CCTS_CODE, OP_BAK_TIME) select CMD_TYPE,CCTS_CODE, OP_BAK_TIME from RSK_CONDITION_BAK_INC_EXT;

delete from RSK_CONDITION_BAK using RSK_CONDITION_BAK_GPTMP where RSK_CONDITION_BAK_GPTMP.CCTS_CODE=RSK_CONDITION_BAK.CCTS_CODE AND RSK_CONDITION_BAK_GPTMP.OP_BAK_TIME=RSK_CONDITION_BAK.OP_BAK_TIME ;

insert into RSK_CONDITION_BAK(CCTS_CODE,TRADE_CO,TRADE_NAME,CORP_TYPE,RSK_COND,RSK_COND_MID,RSK_COND_TXT,BEGIN_DATE,END_DATE,CUSTOMS_CODE,SMUGGLE_MODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,OP_BAK_TYPE,OP_BAK_CUSTOMS,OP_BAK_MAN,OP_BAK_TIME) select CCTS_CODE,TRADE_CO,TRADE_NAME,CORP_TYPE,RSK_COND,RSK_COND_MID,RSK_COND_TXT,BEGIN_DATE,END_DATE,CUSTOMS_CODE,SMUGGLE_MODE,INPUT_ID,AUTHORIZE_ID,OP_TIME,OP_BAK_TYPE,OP_BAK_CUSTOMS,OP_BAK_MAN,OP_BAK_TIME from RSK_CONDITION_BAK_INC_EXT where CMD_TYPE='I';

delete from RSK_CONDITION_BAK_GPTMP;

\timing
