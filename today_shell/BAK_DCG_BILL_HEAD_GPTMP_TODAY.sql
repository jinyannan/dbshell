\echo ------------------BAK_DCG_BILL_HEAD----------------
select now();
\timing
delete from BAK_DCG_BILL_HEAD_GPTMP;
insert into BAK_DCG_BILL_HEAD_GPTMP (CMD_TYPE,BILL_NO) select CMD_TYPE,BILL_NO from BAK_DCG_BILL_HEAD_INC_EXT;
delete from BAK_DCG_BILL_HEAD_GPTMP_TODAY using BAK_DCG_BILL_HEAD_GPTMP where BAK_DCG_BILL_HEAD_GPTMP.BILL_NO=BAK_DCG_BILL_HEAD_GPTMP_TODAY.BILL_NO ;
insert into BAK_DCG_BILL_HEAD_GPTMP_TODAY (CMD_TYPE,BILL_NO,BILL_FLAG,EPORT_NO,DCG_NO,EX_COP_BILL_NO,EX_TRADE_CODE,EX_DECLARE_ER,EX_DECLARE_DATE,IM_COP_BILL_NO,IM_TRADE_CODE,IM_DECLARE_ER,IM_DECLARE_DATE,IM_DATE,CONTR_NO,VE_TYPE,SHIP_ID,EX_DATE,STATUS,PRE_FLAG,EXE_MARK,CUSTOMS_CODE,BAR_CODE,NOTE) select CMD_TYPE,BILL_NO,BILL_FLAG,EPORT_NO,DCG_NO,EX_COP_BILL_NO,EX_TRADE_CODE,EX_DECLARE_ER,EX_DECLARE_DATE,IM_COP_BILL_NO,IM_TRADE_CODE,IM_DECLARE_ER,IM_DECLARE_DATE,IM_DATE,CONTR_NO,VE_TYPE,SHIP_ID,EX_DATE,STATUS,PRE_FLAG,EXE_MARK,CUSTOMS_CODE,BAR_CODE,NOTE from BAK_DCG_BILL_HEAD_INC_EXT;
delete from BAK_DCG_BILL_HEAD_GPTMP;
\timing