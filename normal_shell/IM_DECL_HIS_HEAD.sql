\echo ------------------IM_DECL_HIS_HEAD----------------
select now();
\timing
insert into IM_DECL_HIS_HEAD_GPTMP (CMD_TYPE,PRE_NO) select CMD_TYPE,PRE_NO from IM_DECL_HIS_HEAD_INC_EXT;

delete from IM_DECL_HIS_HEAD using IM_DECL_HIS_HEAD_GPTMP where IM_DECL_HIS_HEAD_GPTMP.PRE_NO=IM_DECL_HIS_HEAD.PRE_NO ;

insert into IM_DECL_HIS_HEAD(PRE_NO,TURN_NO,CONTACT_NO,CONTR_NO,LICENSE_NO,MANUAL_NO,TRADE_MODE,OWNER_NAME,VALID_TIME,APPL_NAME,APPL_CODE,IN_TRAF_NAME,IMPORT_DATE,CONTRACTOR,CONTRACTOR_CODE,DRIVER_CODE,TRAF_WAY,CUSTOMS_NO,TRANS_NO,NATIVE_VOYAGE_NO,BILL_NO,BILL_COUNT,CONTA_NO,CONTA_TYPE,CONTA_AMOUNT,CONTA_INI_COUNT,CONTA_EMPTY_COUNT,SEAL_NO,GOODS_NOTE,INPUT_OP_ID,INPUT_TIME,EXAM_OP_ID,EXAM_TIME,REC_MARK,CHECK_OP_ID,CHECK_TIME,CHECK_MARK,DEL_OP_ID,DEL_TIME,DEL_REASON,DELI_MARK,REL_OP_ID,REL_TIME,PRE_FIEL,MFT_VOYAGE_NO,MFT_BILL_NO,MFT_TRAF_WAY,MFT_GOODS_PIECE,MFT_GROSS_WEIGHT,MFT_REC_MARK,SEND_PORT,RECV_PORT,APP_TELE,FOR_PORT_NAME,R_PORT_NAME,GOODS_CHK_FLAG,OTHER_CHK_MARK,TRN_MODE,ADV_MARK,ENTRY_NO,SEAL_NO2,TRANS_PRE_NO,TRANS_PRE_MARK,STF_DATE,STF_NO,PRE_FIELD1,PRE_FIELD2,CA_KEY,HASH_SIGN) select PRE_NO,TURN_NO,CONTACT_NO,CONTR_NO,LICENSE_NO,MANUAL_NO,TRADE_MODE,OWNER_NAME,VALID_TIME,APPL_NAME,APPL_CODE,IN_TRAF_NAME,IMPORT_DATE,CONTRACTOR,CONTRACTOR_CODE,DRIVER_CODE,TRAF_WAY,CUSTOMS_NO,TRANS_NO,NATIVE_VOYAGE_NO,BILL_NO,BILL_COUNT,CONTA_NO,CONTA_TYPE,CONTA_AMOUNT,CONTA_INI_COUNT,CONTA_EMPTY_COUNT,SEAL_NO,GOODS_NOTE,INPUT_OP_ID,INPUT_TIME,EXAM_OP_ID,EXAM_TIME,REC_MARK,CHECK_OP_ID,CHECK_TIME,CHECK_MARK,DEL_OP_ID,DEL_TIME,DEL_REASON,DELI_MARK,REL_OP_ID,REL_TIME,PRE_FIEL,MFT_VOYAGE_NO,MFT_BILL_NO,MFT_TRAF_WAY,MFT_GOODS_PIECE,MFT_GROSS_WEIGHT,MFT_REC_MARK,SEND_PORT,RECV_PORT,APP_TELE,FOR_PORT_NAME,R_PORT_NAME,GOODS_CHK_FLAG,OTHER_CHK_MARK,TRN_MODE,ADV_MARK,ENTRY_NO,SEAL_NO2,TRANS_PRE_NO,TRANS_PRE_MARK,STF_DATE,STF_NO,PRE_FIELD1,PRE_FIELD2,CA_KEY,HASH_SIGN from IM_DECL_HIS_HEAD_INC_EXT where CMD_TYPE='I';

delete from IM_DECL_HIS_HEAD_GPTMP;

\timing