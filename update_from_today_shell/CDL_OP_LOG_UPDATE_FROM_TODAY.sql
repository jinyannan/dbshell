\echo -----------------------CDL_OP_LOG------------------------
select now();
\timing
delete from CDL_OP_LOG using CDL_OP_LOG_GPTMP_TODAY where CDL_OP_LOG.LIST_NO=CDL_OP_LOG_GPTMP_TODAY.LIST_NO AND CDL_OP_LOG.OP_TIME=CDL_OP_LOG_GPTMP_TODAY.OP_TIME ;
insert into CDL_OP_LOG (LIST_NO,OP_TIME,OP_TYPE,OP_ER,SRV_PORT) select LIST_NO,OP_TIME,OP_TYPE,OP_ER,SRV_PORT from CDL_OP_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing
