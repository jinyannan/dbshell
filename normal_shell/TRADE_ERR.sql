\echo ------------------TRADE_ERR----------------
select now();
\timing
insert into TRADE_ERR_GPTMP (CMD_TYPE,HG_CODE) select CMD_TYPE,HG_CODE from TRADE_ERR_INC_EXT;

delete from TRADE_ERR using TRADE_ERR_GPTMP where TRADE_ERR_GPTMP.HG_CODE=TRADE_ERR.HG_CODE ;

insert into TRADE_ERR(HG_CODE,HG_NAME,CURR_DATE) select HG_CODE,HG_NAME,CURR_DATE from TRADE_ERR_INC_EXT where CMD_TYPE='I';

delete from TRADE_ERR_GPTMP;

\timing
