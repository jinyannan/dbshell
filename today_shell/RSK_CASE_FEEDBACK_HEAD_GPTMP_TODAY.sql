\echo ------------------RSK_CASE_FEEDBACK_HEAD----------------
select now();
\timing
delete from RSK_CASE_FEEDBACK_HEAD_GPTMP;
insert into RSK_CASE_FEEDBACK_HEAD_GPTMP (CMD_TYPE,ENTRY_ID, CASE_ID) select CMD_TYPE,ENTRY_ID, CASE_ID from RSK_CASE_FEEDBACK_HEAD_INC_EXT;
delete from RSK_CASE_FEEDBACK_HEAD_GPTMP_TODAY using RSK_CASE_FEEDBACK_HEAD_GPTMP where RSK_CASE_FEEDBACK_HEAD_GPTMP.ENTRY_ID=RSK_CASE_FEEDBACK_HEAD_GPTMP_TODAY.ENTRY_ID AND RSK_CASE_FEEDBACK_HEAD_GPTMP.CASE_ID=RSK_CASE_FEEDBACK_HEAD_GPTMP_TODAY.CASE_ID ;
insert into RSK_CASE_FEEDBACK_HEAD_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,CASE_ID,TRADE_NAME,AGENT_NAME,BILL_NO,D_DATE,I_E_DATE,EXAM_ER1,EXAM_PROC_TIME,CASE_PROPERTY,ADMIN_PUNISH_CERT_NO,NOTE_S,OP_ER,CASE_VALUE,TRANSFER_DEPARTMENT,RECEIVE_DEPARTMENT) select CMD_TYPE,ENTRY_ID,CASE_ID,TRADE_NAME,AGENT_NAME,BILL_NO,D_DATE,I_E_DATE,EXAM_ER1,EXAM_PROC_TIME,CASE_PROPERTY,ADMIN_PUNISH_CERT_NO,NOTE_S,OP_ER,CASE_VALUE,TRANSFER_DEPARTMENT,RECEIVE_DEPARTMENT from RSK_CASE_FEEDBACK_HEAD_INC_EXT;
delete from RSK_CASE_FEEDBACK_HEAD_GPTMP;
\timing