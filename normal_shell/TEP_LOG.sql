\echo ------------------TEP_LOG----------------
select now();
\timing
insert into TEP_LOG_GPTMP (CMD_TYPE,STEP_ID, BIZ_ID, CREATE_DATE) select CMD_TYPE,STEP_ID, BIZ_ID, CREATE_DATE from TEP_LOG_INC_EXT;

delete from TEP_LOG using TEP_LOG_GPTMP where TEP_LOG_GPTMP.STEP_ID=TEP_LOG.STEP_ID AND TEP_LOG_GPTMP.BIZ_ID=TEP_LOG.BIZ_ID AND TEP_LOG_GPTMP.CREATE_DATE=TEP_LOG.CREATE_DATE ;

insert into TEP_LOG(STEP_ID,BIZ_ID,CREATE_DATE,OPER_ID,OPER_DECRIPTION,NOTE_S) select STEP_ID,BIZ_ID,CREATE_DATE,OPER_ID,OPER_DECRIPTION,NOTE_S from TEP_LOG_INC_EXT where CMD_TYPE='I';

delete from TEP_LOG_GPTMP;

\timing
