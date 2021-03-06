\echo ------------------LSP_LIST----------------
select now();
\timing
insert into LSP_LIST_GPTMP (CMD_TYPE,LSP_ID, LSP_TYPE, I_E_FLAG, G_NO) select CMD_TYPE,LSP_ID, LSP_TYPE, I_E_FLAG, G_NO from LSP_LIST_INC_EXT;

delete from LSP_LIST using LSP_LIST_GPTMP where LSP_LIST_GPTMP.LSP_ID=LSP_LIST.LSP_ID AND LSP_LIST_GPTMP.LSP_TYPE=LSP_LIST.LSP_TYPE AND LSP_LIST_GPTMP.I_E_FLAG=LSP_LIST.I_E_FLAG AND LSP_LIST_GPTMP.G_NO=LSP_LIST.G_NO ;

insert into LSP_LIST(LSP_ID,LSP_TYPE,I_E_FLAG,G_NO,CODE_TS,G_NAME,G_MODEL,ORIGIN_COUNTRY,TRADE_TOTAL,TRADE_CURR,G_QTY,G_UNIT,QTY_1,UNIT_1,PACK_NO,PACK_TYPE,NOTE) select LSP_ID,LSP_TYPE,I_E_FLAG,G_NO,CODE_TS,G_NAME,G_MODEL,ORIGIN_COUNTRY,TRADE_TOTAL,TRADE_CURR,G_QTY,G_UNIT,QTY_1,UNIT_1,PACK_NO,PACK_TYPE,NOTE from LSP_LIST_INC_EXT where CMD_TYPE='I';

delete from LSP_LIST_GPTMP;

\timing
