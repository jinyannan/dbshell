\echo -----------------------PRE_INVESTER_REL------------------------
select now();
\timing
delete from PRE_INVESTER_REL using PRE_INVESTER_REL_GPTMP_TODAY where PRE_INVESTER_REL.PRE_TRADE_CO=PRE_INVESTER_REL_GPTMP_TODAY.PRE_TRADE_CO AND PRE_INVESTER_REL.INV_NO=PRE_INVESTER_REL_GPTMP_TODAY.INV_NO ;
insert into PRE_INVESTER_REL (PRE_TRADE_CO,INV_NO,INV_CO,INV_MOD,INV_FUND,ACT_FUND,INV_DATE,INV_COUNTRY) select PRE_TRADE_CO,INV_NO,INV_CO,INV_MOD,INV_FUND,ACT_FUND,INV_DATE,INV_COUNTRY from PRE_INVESTER_REL_GPTMP_TODAY  where CMD_TYPE='I';
\timing