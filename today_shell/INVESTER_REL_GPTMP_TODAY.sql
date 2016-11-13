\echo ------------------INVESTER_REL----------------
select now();
\timing
delete from INVESTER_REL_GPTMP;
insert into INVESTER_REL_GPTMP (CMD_TYPE,TRADE_CO, INV_NO) select CMD_TYPE,TRADE_CO, INV_NO from INVESTER_REL_INC_EXT;
delete from INVESTER_REL_GPTMP_TODAY using INVESTER_REL_GPTMP where INVESTER_REL_GPTMP.TRADE_CO=INVESTER_REL_GPTMP_TODAY.TRADE_CO AND INVESTER_REL_GPTMP.INV_NO=INVESTER_REL_GPTMP_TODAY.INV_NO ;
insert into INVESTER_REL_GPTMP_TODAY (CMD_TYPE,TRADE_CO,INV_NO,INV_CO,INV_MOD,INV_FUND,ACT_FUND,INV_DATE,INV_COUNTRY) select CMD_TYPE,TRADE_CO,INV_NO,INV_CO,INV_MOD,INV_FUND,ACT_FUND,INV_DATE,INV_COUNTRY from INVESTER_REL_INC_EXT;
delete from INVESTER_REL_GPTMP;
\timing
