\echo ------------------EPA_CHK----------------
select now();
\timing
insert into EPA_CHK_GPTMP (CMD_TYPE,ENTRY_ID, CERTIFICATE_NO, CERT_TYPE) select CMD_TYPE,ENTRY_ID, CERTIFICATE_NO, CERT_TYPE from EPA_CHK_INC_EXT;

delete from EPA_CHK using EPA_CHK_GPTMP where EPA_CHK_GPTMP.ENTRY_ID=EPA_CHK.ENTRY_ID AND EPA_CHK_GPTMP.CERTIFICATE_NO=EPA_CHK.CERTIFICATE_NO AND EPA_CHK_GPTMP.CERT_TYPE=EPA_CHK.CERT_TYPE ;

insert into EPA_CHK(ENTRY_ID,CERTIFICATE_NO,CERT_TYPE,CHK_ER,CHK_DATE,REL_ER,REL_DATE,REL_QTY,NOTE) select ENTRY_ID,CERTIFICATE_NO,CERT_TYPE,CHK_ER,CHK_DATE,REL_ER,REL_DATE,REL_QTY,NOTE from EPA_CHK_INC_EXT where CMD_TYPE='I';

delete from EPA_CHK_GPTMP;

\timing
