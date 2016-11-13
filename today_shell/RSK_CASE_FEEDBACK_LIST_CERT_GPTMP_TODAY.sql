\echo ------------------RSK_CASE_FEEDBACK_LIST_CERT----------------
select now();
\timing
delete from RSK_CASE_FEEDBACK_LIST_CERT_GPTMP;
insert into RSK_CASE_FEEDBACK_LIST_CERT_GPTMP (CMD_TYPE,ENTRY_ID, CASE_ID, CERT_NO) select CMD_TYPE,ENTRY_ID, CASE_ID, CERT_NO from RSK_CASE_FEEDBACK_LIST_CERT_INC_EXT;
delete from RSK_CASE_FEEDBACK_LIST_CERT_GPTMP_TODAY using RSK_CASE_FEEDBACK_LIST_CERT_GPTMP where RSK_CASE_FEEDBACK_LIST_CERT_GPTMP.ENTRY_ID=RSK_CASE_FEEDBACK_LIST_CERT_GPTMP_TODAY.ENTRY_ID AND RSK_CASE_FEEDBACK_LIST_CERT_GPTMP.CASE_ID=RSK_CASE_FEEDBACK_LIST_CERT_GPTMP_TODAY.CASE_ID AND RSK_CASE_FEEDBACK_LIST_CERT_GPTMP.CERT_NO=RSK_CASE_FEEDBACK_LIST_CERT_GPTMP_TODAY.CERT_NO ;
insert into RSK_CASE_FEEDBACK_LIST_CERT_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,CASE_ID,CERT_NO,CERT_NAME,CERT_NUM,CERT_TOTAL_PAGE) select CMD_TYPE,ENTRY_ID,CASE_ID,CERT_NO,CERT_NAME,CERT_NUM,CERT_TOTAL_PAGE from RSK_CASE_FEEDBACK_LIST_CERT_INC_EXT;
delete from RSK_CASE_FEEDBACK_LIST_CERT_GPTMP;
\timing
