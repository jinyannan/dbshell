\echo -----------------------ENTRY_CERTIFICATE------------------------
select now();
\timing
delete from ENTRY_CERTIFICATE using ENTRY_CERTIFICATE_GPTMP_TODAY where ENTRY_CERTIFICATE.ENTRY_ID=ENTRY_CERTIFICATE_GPTMP_TODAY.ENTRY_ID AND ENTRY_CERTIFICATE.DOCU_CODE=ENTRY_CERTIFICATE_GPTMP_TODAY.DOCU_CODE AND ENTRY_CERTIFICATE.CERT_CODE=ENTRY_CERTIFICATE_GPTMP_TODAY.CERT_CODE ;
insert into ENTRY_CERTIFICATE (ENTRY_ID,DOCU_CODE,CERT_CODE) select ENTRY_ID,DOCU_CODE,CERT_CODE from ENTRY_CERTIFICATE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
