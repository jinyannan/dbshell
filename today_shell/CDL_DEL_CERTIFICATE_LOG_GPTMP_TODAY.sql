\echo ------------------CDL_DEL_CERTIFICATE_LOG----------------
select now();
\timing
delete from CDL_DEL_CERTIFICATE_LOG_GPTMP;
insert into CDL_DEL_CERTIFICATE_LOG_GPTMP (CMD_TYPE,LIST_NO, DOCU_CODE, CERT_CODE) select CMD_TYPE,LIST_NO, DOCU_CODE, CERT_CODE from CDL_DEL_CERTIFICATE_LOG_INC_EXT;
delete from CDL_DEL_CERTIFICATE_LOG_GPTMP_TODAY using CDL_DEL_CERTIFICATE_LOG_GPTMP where CDL_DEL_CERTIFICATE_LOG_GPTMP.LIST_NO=CDL_DEL_CERTIFICATE_LOG_GPTMP_TODAY.LIST_NO AND CDL_DEL_CERTIFICATE_LOG_GPTMP.DOCU_CODE=CDL_DEL_CERTIFICATE_LOG_GPTMP_TODAY.DOCU_CODE AND CDL_DEL_CERTIFICATE_LOG_GPTMP.CERT_CODE=CDL_DEL_CERTIFICATE_LOG_GPTMP_TODAY.CERT_CODE ;
insert into CDL_DEL_CERTIFICATE_LOG_GPTMP_TODAY (CMD_TYPE,LIST_NO,DOCU_CODE,CERT_CODE) select CMD_TYPE,LIST_NO,DOCU_CODE,CERT_CODE from CDL_DEL_CERTIFICATE_LOG_INC_EXT;
delete from CDL_DEL_CERTIFICATE_LOG_GPTMP;
\timing
