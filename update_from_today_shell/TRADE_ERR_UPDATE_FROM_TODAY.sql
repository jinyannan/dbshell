\echo -----------------------TRADE_ERR------------------------
select now();
\timing
delete from TRADE_ERR using TRADE_ERR_GPTMP_TODAY where TRADE_ERR.HG_CODE=TRADE_ERR_GPTMP_TODAY.HG_CODE ;
insert into TRADE_ERR (HG_CODE,HG_NAME,CURR_DATE) select HG_CODE,HG_NAME,CURR_DATE from TRADE_ERR_GPTMP_TODAY  where CMD_TYPE='I';
\timing
