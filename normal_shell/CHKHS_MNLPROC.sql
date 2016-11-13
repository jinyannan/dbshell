\echo ------------------CHKHS_MNLPROC----------------
select now();
\timing
insert into CHKHS_MNLPROC_GPTMP (CMD_TYPE,ORDER_NO, MANUAL_SCH) select CMD_TYPE,ORDER_NO, MANUAL_SCH from CHKHS_MNLPROC_INC_EXT;

delete from CHKHS_MNLPROC using CHKHS_MNLPROC_GPTMP where CHKHS_MNLPROC_GPTMP.ORDER_NO=CHKHS_MNLPROC.ORDER_NO AND CHKHS_MNLPROC_GPTMP.MANUAL_SCH=CHKHS_MNLPROC.MANUAL_SCH ;

insert into CHKHS_MNLPROC(MANUAL_NO,PRE_MANUAL_NO,ORDER_NO,MANUAL_SCH,M_FLAG,TRADE_NAME,OPER_ER,OPER_DATE,NOTE) select MANUAL_NO,PRE_MANUAL_NO,ORDER_NO,MANUAL_SCH,M_FLAG,TRADE_NAME,OPER_ER,OPER_DATE,NOTE from CHKHS_MNLPROC_INC_EXT where CMD_TYPE='I';

delete from CHKHS_MNLPROC_GPTMP;

\timing
