\echo ------------------IM_TRANS_CONTA_REL----------------
select now();
\timing
delete from IM_TRANS_CONTA_REL_GPTMP;
insert into IM_TRANS_CONTA_REL_GPTMP (CMD_TYPE,PRE_NO, RECORD_NUMBER, CONTA_NO) select CMD_TYPE,PRE_NO, RECORD_NUMBER, CONTA_NO from IM_TRANS_CONTA_REL_INC_EXT;
delete from IM_TRANS_CONTA_REL_GPTMP_TODAY using IM_TRANS_CONTA_REL_GPTMP where IM_TRANS_CONTA_REL_GPTMP.PRE_NO=IM_TRANS_CONTA_REL_GPTMP_TODAY.PRE_NO AND IM_TRANS_CONTA_REL_GPTMP.RECORD_NUMBER=IM_TRANS_CONTA_REL_GPTMP_TODAY.RECORD_NUMBER AND IM_TRANS_CONTA_REL_GPTMP.CONTA_NO=IM_TRANS_CONTA_REL_GPTMP_TODAY.CONTA_NO ;
insert into IM_TRANS_CONTA_REL_GPTMP_TODAY (CMD_TYPE,PRE_NO,RECORD_NUMBER,CONTA_NO,TRANS_NAME,TRANS_WEIGHT,CONTA_MODEL,SEAL_NO,SEAL_NUM,CONTA_CHECK_MARK,CONTA_CHK_ER,CONTA_CHK_TIME,EXAM_FLAG,CONTA1,SEND_PORT,RECV_PORT,ESEAL_ID) select CMD_TYPE,PRE_NO,RECORD_NUMBER,CONTA_NO,TRANS_NAME,TRANS_WEIGHT,CONTA_MODEL,SEAL_NO,SEAL_NUM,CONTA_CHECK_MARK,CONTA_CHK_ER,CONTA_CHK_TIME,EXAM_FLAG,CONTA1,SEND_PORT,RECV_PORT,ESEAL_ID from IM_TRANS_CONTA_REL_INC_EXT;
delete from IM_TRANS_CONTA_REL_GPTMP;
\timing
