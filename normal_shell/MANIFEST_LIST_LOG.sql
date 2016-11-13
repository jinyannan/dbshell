\echo ------------------MANIFEST_LIST_LOG----------------
select now();
\timing
insert into MANIFEST_LIST_LOG_GPTMP (CMD_TYPE,I_E_FLAG, CUSTOMS_CODE, TRAF_MODE, VOYAGE_NO, BILL_NO, SHIP_ID, CREATE_DATE, I_E_DATE) select CMD_TYPE,I_E_FLAG, CUSTOMS_CODE, TRAF_MODE, VOYAGE_NO, BILL_NO, SHIP_ID, CREATE_DATE, I_E_DATE from MANIFEST_LIST_LOG_INC_EXT;

delete from MANIFEST_LIST_LOG using MANIFEST_LIST_LOG_GPTMP where MANIFEST_LIST_LOG_GPTMP.I_E_FLAG=MANIFEST_LIST_LOG.I_E_FLAG AND MANIFEST_LIST_LOG_GPTMP.CUSTOMS_CODE=MANIFEST_LIST_LOG.CUSTOMS_CODE AND MANIFEST_LIST_LOG_GPTMP.TRAF_MODE=MANIFEST_LIST_LOG.TRAF_MODE AND MANIFEST_LIST_LOG_GPTMP.VOYAGE_NO=MANIFEST_LIST_LOG.VOYAGE_NO AND MANIFEST_LIST_LOG_GPTMP.BILL_NO=MANIFEST_LIST_LOG.BILL_NO AND MANIFEST_LIST_LOG_GPTMP.SHIP_ID=MANIFEST_LIST_LOG.SHIP_ID AND MANIFEST_LIST_LOG_GPTMP.CREATE_DATE=MANIFEST_LIST_LOG.CREATE_DATE AND MANIFEST_LIST_LOG_GPTMP.I_E_DATE=MANIFEST_LIST_LOG.I_E_DATE ;

insert into MANIFEST_LIST_LOG(I_E_FLAG,CUSTOMS_CODE,TRAF_MODE,VOYAGE_NO,BILL_NO,SHIP_ID,CREATE_DATE,OPER_FLAG,OPER_ER,BILL_FLAG,SHIP_NAME_EN,CONSIGNOR,CONSIGNEE,LOADING_PORT,DESTINATION_PORT,DISTRICT_CODE,DISCHARGE_PLACE,I_E_DATE,MAIN_G_NAME,PACK_NO,WRAP_TYPE,VOLUME,MARK_CONTR,CONTA_NUM,GROSS_WT,BILL_PACK_NO,BILL_GROSS_WT,TAL_FLAG,TAL_DATE,TAL_ER,SUR_DATE,SUR_ER,EXAM_FLAG,URG_DATE,URG_ER,SEL_DATE,SEL_ER,ITEMS_NO,TOTAL_VALUE,CURR_CODE,I_E_PORT,DISTRIBUTE_FLAG,DISTRIBUTE_DATE,TRANS_NO,ARRIVE_DATE,RSK_ER,RSK_DATE,RSK_CODE,RSK_LEVEL,RELEASE_ER,RELEASE_DATE,DISCHARGE_PLACE_ORI,CN_SHIP_ID,CN_SHIP_ER,CN_SHIP_DATE,D_DATE,RSK_PHONE,RSK_RESULT,RSKAPPLY_ER,NOTES) select I_E_FLAG,CUSTOMS_CODE,TRAF_MODE,VOYAGE_NO,BILL_NO,SHIP_ID,CREATE_DATE,OPER_FLAG,OPER_ER,BILL_FLAG,SHIP_NAME_EN,CONSIGNOR,CONSIGNEE,LOADING_PORT,DESTINATION_PORT,DISTRICT_CODE,DISCHARGE_PLACE,I_E_DATE,MAIN_G_NAME,PACK_NO,WRAP_TYPE,VOLUME,MARK_CONTR,CONTA_NUM,GROSS_WT,BILL_PACK_NO,BILL_GROSS_WT,TAL_FLAG,TAL_DATE,TAL_ER,SUR_DATE,SUR_ER,EXAM_FLAG,URG_DATE,URG_ER,SEL_DATE,SEL_ER,ITEMS_NO,TOTAL_VALUE,CURR_CODE,I_E_PORT,DISTRIBUTE_FLAG,DISTRIBUTE_DATE,TRANS_NO,ARRIVE_DATE,RSK_ER,RSK_DATE,RSK_CODE,RSK_LEVEL,RELEASE_ER,RELEASE_DATE,DISCHARGE_PLACE_ORI,CN_SHIP_ID,CN_SHIP_ER,CN_SHIP_DATE,D_DATE,RSK_PHONE,RSK_RESULT,RSKAPPLY_ER,NOTES from MANIFEST_LIST_LOG_INC_EXT where CMD_TYPE='I';

delete from MANIFEST_LIST_LOG_GPTMP;

\timing