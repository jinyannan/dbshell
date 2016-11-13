\echo -----------------------CDL_COMP_COMM_OP_LOG------------------------
select now();
\timing
delete from CDL_COMP_COMM_OP_LOG using CDL_COMP_COMM_OP_LOG_GPTMP_TODAY where CDL_COMP_COMM_OP_LOG.TRADE_CO=CDL_COMP_COMM_OP_LOG_GPTMP_TODAY.TRADE_CO AND CDL_COMP_COMM_OP_LOG.PROC_DATE=CDL_COMP_COMM_OP_LOG_GPTMP_TODAY.PROC_DATE AND CDL_COMP_COMM_OP_LOG.PROC_TYPE=CDL_COMP_COMM_OP_LOG_GPTMP_TODAY.PROC_TYPE ;
insert into CDL_COMP_COMM_OP_LOG (TRADE_CO,RECORDS_NO,PRE_RECORDS_NO,CUSTOMS_CODE,RECORDS_DATE,PROC_TYPE,PROC_ER,PROC_DATE,R_NOTES) select TRADE_CO,RECORDS_NO,PRE_RECORDS_NO,CUSTOMS_CODE,RECORDS_DATE,PROC_TYPE,PROC_ER,PROC_DATE,R_NOTES from CDL_COMP_COMM_OP_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing
