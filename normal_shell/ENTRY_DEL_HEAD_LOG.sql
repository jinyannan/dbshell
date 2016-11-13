\echo ------------------ENTRY_DEL_HEAD_LOG----------------
select now();
\timing
insert into ENTRY_DEL_HEAD_LOG_GPTMP (CMD_TYPE,ENTRY_ID, OP_TIME) select CMD_TYPE,ENTRY_ID, OP_TIME from ENTRY_DEL_HEAD_LOG_INC_EXT;

delete from ENTRY_DEL_HEAD_LOG using ENTRY_DEL_HEAD_LOG_GPTMP where ENTRY_DEL_HEAD_LOG_GPTMP.ENTRY_ID=ENTRY_DEL_HEAD_LOG.ENTRY_ID AND ENTRY_DEL_HEAD_LOG_GPTMP.OP_TIME=ENTRY_DEL_HEAD_LOG.OP_TIME ;

insert into ENTRY_DEL_HEAD_LOG(ENTRY_ID,PRE_ENTRY_ID,ID_CHK,I_E_FLAG,I_E_PORT,I_E_DATE,D_DATE,DESTINATION_PORT,TRAF_NAME,VOYAGE_NO,TRAF_MODE,TRADE_CO,TRADE_NAME,DISTRICT_CODE,OWNER_CODE,OWNER_NAME,AGENT_CODE,AGENT_NAME,CONTR_NO,IN_RATIO,BILL_NO,TRADE_COUNTRY,TRADE_MODE,CUT_MODE,TRANS_MODE,CONTAINER_NO,PAY_WAY,FEE_MARK,FEE_CURR,FEE_RATE,INSUR_MARK,INSUR_CURR,INSUR_RATE,OTHER_MARK,OTHER_CURR,OTHER_RATE,PACK_NO,GROSS_WT,NET_WT,WRAP_TYPE,MANUAL_NO,LICENSE_NO,APPR_NO,NOTE_S,DECL_PORT,CO_OWNER,TAXY_RG_NO,MNL_JGF_FLAG,SERVICE_FEE,SERVICE_RATE,RELATIVE_ID,BONDED_NO,BP_NO,TYPIST_NO,INPUT_NO,P_DATE,CTA_CHK_RESULT,MODI_NO,EDI_ID,STATUS_RESULT,DECLARE_NO,JOU_EVENT,JOU_FLAG,EDI_REMARK,PARTNER_ID,CUSTOMS_FIELD,ENTRY_TYPE,RELATIVE_MANUAL_NO,PRICE_RANGE,SPECIAL_FLAG,DELAY_DAYS,DELAY_ACCOUNT,HASH_SIGN,OP_TIME) select ENTRY_ID,PRE_ENTRY_ID,ID_CHK,I_E_FLAG,I_E_PORT,I_E_DATE,D_DATE,DESTINATION_PORT,TRAF_NAME,VOYAGE_NO,TRAF_MODE,TRADE_CO,TRADE_NAME,DISTRICT_CODE,OWNER_CODE,OWNER_NAME,AGENT_CODE,AGENT_NAME,CONTR_NO,IN_RATIO,BILL_NO,TRADE_COUNTRY,TRADE_MODE,CUT_MODE,TRANS_MODE,CONTAINER_NO,PAY_WAY,FEE_MARK,FEE_CURR,FEE_RATE,INSUR_MARK,INSUR_CURR,INSUR_RATE,OTHER_MARK,OTHER_CURR,OTHER_RATE,PACK_NO,GROSS_WT,NET_WT,WRAP_TYPE,MANUAL_NO,LICENSE_NO,APPR_NO,NOTE_S,DECL_PORT,CO_OWNER,TAXY_RG_NO,MNL_JGF_FLAG,SERVICE_FEE,SERVICE_RATE,RELATIVE_ID,BONDED_NO,BP_NO,TYPIST_NO,INPUT_NO,P_DATE,CTA_CHK_RESULT,MODI_NO,EDI_ID,STATUS_RESULT,DECLARE_NO,JOU_EVENT,JOU_FLAG,EDI_REMARK,PARTNER_ID,CUSTOMS_FIELD,ENTRY_TYPE,RELATIVE_MANUAL_NO,PRICE_RANGE,SPECIAL_FLAG,DELAY_DAYS,DELAY_ACCOUNT,HASH_SIGN,OP_TIME from ENTRY_DEL_HEAD_LOG_INC_EXT where CMD_TYPE='I';

delete from ENTRY_DEL_HEAD_LOG_GPTMP;

\timing
