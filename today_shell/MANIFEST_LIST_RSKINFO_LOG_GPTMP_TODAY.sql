\echo ------------------MANIFEST_LIST_RSKINFO_LOG----------------
select now();
\timing
delete from MANIFEST_LIST_RSKINFO_LOG_GPTMP;
insert into MANIFEST_LIST_RSKINFO_LOG_GPTMP (CMD_TYPE,BILL_NO, CUSTOMS_CODE, VOYAGE_NO, SHIP_ID, I_E_DATE, TRAF_MODE, I_E_FLAG, RSK_DATE) select CMD_TYPE,BILL_NO, CUSTOMS_CODE, VOYAGE_NO, SHIP_ID, I_E_DATE, TRAF_MODE, I_E_FLAG, RSK_DATE from MANIFEST_LIST_RSKINFO_LOG_INC_EXT;
delete from MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY using MANIFEST_LIST_RSKINFO_LOG_GPTMP where MANIFEST_LIST_RSKINFO_LOG_GPTMP.BILL_NO=MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.BILL_NO AND MANIFEST_LIST_RSKINFO_LOG_GPTMP.CUSTOMS_CODE=MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.CUSTOMS_CODE AND MANIFEST_LIST_RSKINFO_LOG_GPTMP.VOYAGE_NO=MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.VOYAGE_NO AND MANIFEST_LIST_RSKINFO_LOG_GPTMP.SHIP_ID=MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.SHIP_ID AND MANIFEST_LIST_RSKINFO_LOG_GPTMP.I_E_DATE=MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.I_E_DATE AND MANIFEST_LIST_RSKINFO_LOG_GPTMP.TRAF_MODE=MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.TRAF_MODE AND MANIFEST_LIST_RSKINFO_LOG_GPTMP.I_E_FLAG=MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.I_E_FLAG AND MANIFEST_LIST_RSKINFO_LOG_GPTMP.RSK_DATE=MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.RSK_DATE ;
insert into MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY (CMD_TYPE,BILL_NO,CUSTOMS_CODE,VOYAGE_NO,SHIP_ID,I_E_DATE,TRAF_MODE,I_E_FLAG,SHIP_NAME_EN,RSK_ER,RSK_DATE,RSK_CODE,RSK_LEVEL,RSK_RESULT,RSKAPPLY_ER,RELEASE_ER,RELEASE_DATE) select CMD_TYPE,BILL_NO,CUSTOMS_CODE,VOYAGE_NO,SHIP_ID,I_E_DATE,TRAF_MODE,I_E_FLAG,SHIP_NAME_EN,RSK_ER,RSK_DATE,RSK_CODE,RSK_LEVEL,RSK_RESULT,RSKAPPLY_ER,RELEASE_ER,RELEASE_DATE from MANIFEST_LIST_RSKINFO_LOG_INC_EXT;
delete from MANIFEST_LIST_RSKINFO_LOG_GPTMP;
\timing
