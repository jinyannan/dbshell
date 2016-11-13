\echo ------------------INVLOG_REL----------------
select now();
\timing
delete from INVLOG_REL_GPTMP;
insert into INVLOG_REL_GPTMP (CMD_TYPE,LOG_ID) select CMD_TYPE,LOG_ID from INVLOG_REL_INC_EXT;
delete from INVLOG_REL_GPTMP_TODAY using INVLOG_REL_GPTMP where INVLOG_REL_GPTMP.LOG_ID=INVLOG_REL_GPTMP_TODAY.LOG_ID ;
insert into INVLOG_REL_GPTMP_TODAY (CMD_TYPE,LOG_ID,LOG_MODE,LOG_DATE,LOG_OPER_ID,LOG_CUSTOMS_CODE,LOG_COMPUTER,TRADE_CO,INV_NO,INV_CO,INV_MOD,INV_FUND,ACT_FUND,INV_DATE,INV_COUNTRY) select CMD_TYPE,LOG_ID,LOG_MODE,LOG_DATE,LOG_OPER_ID,LOG_CUSTOMS_CODE,LOG_COMPUTER,TRADE_CO,INV_NO,INV_CO,INV_MOD,INV_FUND,ACT_FUND,INV_DATE,INV_COUNTRY from INVLOG_REL_INC_EXT;
delete from INVLOG_REL_GPTMP;
\timing
