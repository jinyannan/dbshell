\echo -----------------------TEP_LOG------------------------
select now();
\timing
delete from TEP_LOG using TEP_LOG_GPTMP_TODAY where TEP_LOG.STEP_ID=TEP_LOG_GPTMP_TODAY.STEP_ID AND TEP_LOG.BIZ_ID=TEP_LOG_GPTMP_TODAY.BIZ_ID AND TEP_LOG.CREATE_DATE=TEP_LOG_GPTMP_TODAY.CREATE_DATE ;
insert into TEP_LOG (STEP_ID,BIZ_ID,CREATE_DATE,OPER_ID,OPER_DECRIPTION,NOTE_S) select STEP_ID,BIZ_ID,CREATE_DATE,OPER_ID,OPER_DECRIPTION,NOTE_S from TEP_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing
