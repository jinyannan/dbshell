\echo -----------------------CREDIT_INFO------------------------
select now();
\timing
delete from CREDIT_INFO using CREDIT_INFO_GPTMP_TODAY where CREDIT_INFO.RPTNO=CREDIT_INFO_GPTMP_TODAY.RPTNO ;
insert into CREDIT_INFO (RPTNO,RPTUSER,TRADE_CO,RCVNAME,ACTUCCY,ACTUAMT,CSTSETCODE,COUNTRYCODE,CSTCNTRCTNO,INVOICENO,LCBGNO,RECV_DATE) select RPTNO,RPTUSER,TRADE_CO,RCVNAME,ACTUCCY,ACTUAMT,CSTSETCODE,COUNTRYCODE,CSTCNTRCTNO,INVOICENO,LCBGNO,RECV_DATE from CREDIT_INFO_GPTMP_TODAY  where CMD_TYPE='I';
\timing
