\echo -----------------------CDL_CERTIFICATE------------------------
select now();
\timing
delete from CDL_CERTIFICATE using CDL_CERTIFICATE_GPTMP_TODAY where CDL_CERTIFICATE.LIST_NO=CDL_CERTIFICATE_GPTMP_TODAY.LIST_NO AND CDL_CERTIFICATE.DOCU_CODE=CDL_CERTIFICATE_GPTMP_TODAY.DOCU_CODE AND CDL_CERTIFICATE.CERT_CODE=CDL_CERTIFICATE_GPTMP_TODAY.CERT_CODE ;
insert into CDL_CERTIFICATE (LIST_NO,DOCU_CODE,CERT_CODE) select LIST_NO,DOCU_CODE,CERT_CODE from CDL_CERTIFICATE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
