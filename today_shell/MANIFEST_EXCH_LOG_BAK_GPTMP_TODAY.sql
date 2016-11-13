\echo ------------------MANIFEST_EXCH_LOG_BAK----------------
select now();
\timing
delete from MANIFEST_EXCH_LOG_BAK_GPTMP;
insert into MANIFEST_EXCH_LOG_BAK_GPTMP (CMD_TYPE,CUSTOMS_CODE, SHIP_ID, VOYAGE_NO, BILL_NO, I_E_DATE, CREATE_DATE) select CMD_TYPE,CUSTOMS_CODE, SHIP_ID, VOYAGE_NO, BILL_NO, I_E_DATE, CREATE_DATE from MANIFEST_EXCH_LOG_BAK_INC_EXT;
delete from MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY using MANIFEST_EXCH_LOG_BAK_GPTMP where MANIFEST_EXCH_LOG_BAK_GPTMP.CUSTOMS_CODE=MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY.CUSTOMS_CODE AND MANIFEST_EXCH_LOG_BAK_GPTMP.SHIP_ID=MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY.SHIP_ID AND MANIFEST_EXCH_LOG_BAK_GPTMP.VOYAGE_NO=MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY.VOYAGE_NO AND MANIFEST_EXCH_LOG_BAK_GPTMP.BILL_NO=MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY.BILL_NO AND MANIFEST_EXCH_LOG_BAK_GPTMP.I_E_DATE=MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY.I_E_DATE AND MANIFEST_EXCH_LOG_BAK_GPTMP.CREATE_DATE=MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY.CREATE_DATE ;
insert into MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY (CMD_TYPE,CUSTOMS_CODE,VOYAGE_NO,SHIP_ID,BILL_NO,I_E_DATE,CREATE_DATE,I_E_FLAG,TRAF_MODE,SHIP_NAME_EN,NOTICE_DATE,FILE_NAME,MANTFEST_NO,OP_MODE,MODIFY_TIMES,INSE_NOTICE_DATE,INSE_FILE_NAME,INSE_CHANNEL,NOTES) select CMD_TYPE,CUSTOMS_CODE,VOYAGE_NO,SHIP_ID,BILL_NO,I_E_DATE,CREATE_DATE,I_E_FLAG,TRAF_MODE,SHIP_NAME_EN,NOTICE_DATE,FILE_NAME,MANTFEST_NO,OP_MODE,MODIFY_TIMES,INSE_NOTICE_DATE,INSE_FILE_NAME,INSE_CHANNEL,NOTES from MANIFEST_EXCH_LOG_BAK_INC_EXT;
delete from MANIFEST_EXCH_LOG_BAK_GPTMP;
\timing