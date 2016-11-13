\echo ------------------CDL_OP_LOG----------------
select now();
\timing
insert into CDL_OP_LOG_GPTMP (CMD_TYPE,LIST_NO, OP_TIME) select CMD_TYPE,LIST_NO, OP_TIME from CDL_OP_LOG_INC_EXT;

delete from CDL_OP_LOG using CDL_OP_LOG_GPTMP where CDL_OP_LOG_GPTMP.LIST_NO=CDL_OP_LOG.LIST_NO AND CDL_OP_LOG_GPTMP.OP_TIME=CDL_OP_LOG.OP_TIME ;

insert into CDL_OP_LOG(LIST_NO,OP_TIME,OP_TYPE,OP_ER,SRV_PORT) select LIST_NO,OP_TIME,OP_TYPE,OP_ER,SRV_PORT from CDL_OP_LOG_INC_EXT where CMD_TYPE='I';

delete from CDL_OP_LOG_GPTMP;

\timing
