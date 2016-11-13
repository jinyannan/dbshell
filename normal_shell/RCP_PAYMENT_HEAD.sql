\echo ------------------RCP_PAYMENT_HEAD----------------
select now();
\timing
insert into RCP_PAYMENT_HEAD_GPTMP (CMD_TYPE,LEVYNO) select CMD_TYPE,LEVYNO from RCP_PAYMENT_HEAD_INC_EXT;

delete from RCP_PAYMENT_HEAD using RCP_PAYMENT_HEAD_GPTMP where RCP_PAYMENT_HEAD_GPTMP.LEVYNO=RCP_PAYMENT_HEAD.LEVYNO ;

insert into RCP_PAYMENT_HEAD(LEVYNO,BANKORGCODE,PAYERNAME,PAYERORGCODE,PAYERCGACCODE,PAYERACCT,PAYEENAME,PAYEECOUNTRYCODE,SWIFTBIC,PAYERDATE,PAYERCNY,PAYERAMT,CUSTOMSAMT,PREPAYERAMT,REFUNDMENTAMT,BALANCEMODE,ACCOUNTPERIOD,BANKTRANO,ADDWORD) select LEVYNO,BANKORGCODE,PAYERNAME,PAYERORGCODE,PAYERCGACCODE,PAYERACCT,PAYEENAME,PAYEECOUNTRYCODE,SWIFTBIC,PAYERDATE,PAYERCNY,PAYERAMT,CUSTOMSAMT,PREPAYERAMT,REFUNDMENTAMT,BALANCEMODE,ACCOUNTPERIOD,BANKTRANO,ADDWORD from RCP_PAYMENT_HEAD_INC_EXT where CMD_TYPE='I';

delete from RCP_PAYMENT_HEAD_GPTMP;

\timing
