\echo -----------------------RSK_CASE_TRANSFER_LIST------------------------
select now();
\timing
delete from RSK_CASE_TRANSFER_LIST using RSK_CASE_TRANSFER_LIST_GPTMP_TODAY where RSK_CASE_TRANSFER_LIST.ENTRY_ID=RSK_CASE_TRANSFER_LIST_GPTMP_TODAY.ENTRY_ID AND RSK_CASE_TRANSFER_LIST.CASE_ID=RSK_CASE_TRANSFER_LIST_GPTMP_TODAY.CASE_ID AND RSK_CASE_TRANSFER_LIST.CERT_NO=RSK_CASE_TRANSFER_LIST_GPTMP_TODAY.CERT_NO ;
insert into RSK_CASE_TRANSFER_LIST (ENTRY_ID,CASE_ID,CERT_NO,CERT_NAME,CERT_NUM,CERT_TOTAL_PAGE) select ENTRY_ID,CASE_ID,CERT_NO,CERT_NAME,CERT_NUM,CERT_TOTAL_PAGE from RSK_CASE_TRANSFER_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
