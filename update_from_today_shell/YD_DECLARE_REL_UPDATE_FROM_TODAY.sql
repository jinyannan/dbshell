\echo -----------------------YD_DECLARE_REL------------------------
select now();
\timing
delete from YD_DECLARE_REL using YD_DECLARE_REL_GPTMP_TODAY where YD_DECLARE_REL.TRADE_CO=YD_DECLARE_REL_GPTMP_TODAY.TRADE_CO AND YD_DECLARE_REL.CUSTOMS_CODE=YD_DECLARE_REL_GPTMP_TODAY.CUSTOMS_CODE ;
insert into YD_DECLARE_REL (TRADE_CO,CUSTOMS_CODE) select TRADE_CO,CUSTOMS_CODE from YD_DECLARE_REL_GPTMP_TODAY  where CMD_TYPE='I';
\timing
