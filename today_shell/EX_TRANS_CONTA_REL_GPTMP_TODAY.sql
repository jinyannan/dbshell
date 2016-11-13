\echo ------------------EX_TRANS_CONTA_REL----------------
select now();
\timing
delete from EX_TRANS_CONTA_REL_GPTMP;
insert into EX_TRANS_CONTA_REL_GPTMP (CMD_TYPE,PRE_NO, RECORD_NUMBER, CONTA_NO) select CMD_TYPE,PRE_NO, RECORD_NUMBER, CONTA_NO from EX_TRANS_CONTA_REL_INC_EXT;
delete from EX_TRANS_CONTA_REL_GPTMP_TODAY using EX_TRANS_CONTA_REL_GPTMP where EX_TRANS_CONTA_REL_GPTMP.PRE_NO=EX_TRANS_CONTA_REL_GPTMP_TODAY.PRE_NO AND EX_TRANS_CONTA_REL_GPTMP.RECORD_NUMBER=EX_TRANS_CONTA_REL_GPTMP_TODAY.RECORD_NUMBER AND EX_TRANS_CONTA_REL_GPTMP.CONTA_NO=EX_TRANS_CONTA_REL_GPTMP_TODAY.CONTA_NO ;
insert into EX_TRANS_CONTA_REL_GPTMP_TODAY (CMD_TYPE,PRE_NO,RECORD_NUMBER,CONTA_NO,TRANS_NAME,TRANS_WEIGHT,CONTA_MODEL,SEAL_NO,SEAL_NUM,CONTA_CHECK_MARK,CONTA_CHK_ER,CONTA_CHK_TIME,EXAM_FLAG,CONTA1,SEND_PORT,RECV_PORT,ESEAL_ID) select CMD_TYPE,PRE_NO,RECORD_NUMBER,CONTA_NO,TRANS_NAME,TRANS_WEIGHT,CONTA_MODEL,SEAL_NO,SEAL_NUM,CONTA_CHECK_MARK,CONTA_CHK_ER,CONTA_CHK_TIME,EXAM_FLAG,CONTA1,SEND_PORT,RECV_PORT,ESEAL_ID from EX_TRANS_CONTA_REL_INC_EXT;
delete from EX_TRANS_CONTA_REL_GPTMP;
\timing
