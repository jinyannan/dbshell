\echo -----------------------MANIFEST_CHK_LOG------------------------
select now();
\timing
delete from MANIFEST_CHK_LOG using MANIFEST_CHK_LOG_GPTMP_TODAY where MANIFEST_CHK_LOG.FORM_ID=MANIFEST_CHK_LOG_GPTMP_TODAY.FORM_ID AND MANIFEST_CHK_LOG.CREATE_DATE=MANIFEST_CHK_LOG_GPTMP_TODAY.CREATE_DATE AND MANIFEST_CHK_LOG.BILL_NO=MANIFEST_CHK_LOG_GPTMP_TODAY.BILL_NO ;
insert into MANIFEST_CHK_LOG (FORM_ID,CREATE_DATE,OPER_FLAG,OPER_ER,FORM_FLAG,SHIP_ID,VOYAGE_NO,SHIP_NAME_EN,BILL_NO,TRAF_MODE,CUSTOMS_CODE,I_E_FLAG,PACK_NO,GROSS_WT,CHK_MARK,CHK_ER,CHK_DATE,REL_ER,REL_DATE,COUNTRY_CODE,NOTES) select FORM_ID,CREATE_DATE,OPER_FLAG,OPER_ER,FORM_FLAG,SHIP_ID,VOYAGE_NO,SHIP_NAME_EN,BILL_NO,TRAF_MODE,CUSTOMS_CODE,I_E_FLAG,PACK_NO,GROSS_WT,CHK_MARK,CHK_ER,CHK_DATE,REL_ER,REL_DATE,COUNTRY_CODE,NOTES from MANIFEST_CHK_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing