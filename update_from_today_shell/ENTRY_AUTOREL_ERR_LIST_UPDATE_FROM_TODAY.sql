\echo -----------------------ENTRY_AUTOREL_ERR_LIST------------------------
select now();
\timing
delete from ENTRY_AUTOREL_ERR_LIST using ENTRY_AUTOREL_ERR_LIST_GPTMP_TODAY where ENTRY_AUTOREL_ERR_LIST.ENTRY_ID=ENTRY_AUTOREL_ERR_LIST_GPTMP_TODAY.ENTRY_ID ;
insert into ENTRY_AUTOREL_ERR_LIST (ENTRY_ID,I_E_FLAG,DECL_PORT,TRADE_CO,TRADE_NAME,AGENT_CODE,AGENT_NAME,CREATE_DATE,DESCRIPTION) select ENTRY_ID,I_E_FLAG,DECL_PORT,TRADE_CO,TRADE_NAME,AGENT_CODE,AGENT_NAME,CREATE_DATE,DESCRIPTION from ENTRY_AUTOREL_ERR_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
