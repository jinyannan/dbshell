\echo ------------------EX_COP_RATE----------------
select now();
\timing
insert into EX_COP_RATE_GPTMP (CMD_TYPE,TRADE_CO, CHKSTDATE, CHKENDDATE) select CMD_TYPE,TRADE_CO, CHKSTDATE, CHKENDDATE from EX_COP_RATE_INC_EXT;

delete from EX_COP_RATE using EX_COP_RATE_GPTMP where EX_COP_RATE_GPTMP.TRADE_CO=EX_COP_RATE.TRADE_CO AND EX_COP_RATE_GPTMP.CHKSTDATE=EX_COP_RATE.CHKSTDATE AND EX_COP_RATE_GPTMP.CHKENDDATE=EX_COP_RATE.CHKENDDATE ;

insert into EX_COP_RATE(TRADE_CO,CHKSTDATE,CHKENDDATE,CORCORPNAME,CHKRATE,RECV_DATE) select TRADE_CO,CHKSTDATE,CHKENDDATE,CORCORPNAME,CHKRATE,RECV_DATE from EX_COP_RATE_INC_EXT where CMD_TYPE='I';

delete from EX_COP_RATE_GPTMP;

\timing
