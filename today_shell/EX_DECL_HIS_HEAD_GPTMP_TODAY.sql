\echo ------------------EX_DECL_HIS_HEAD----------------
select now();
\timing
delete from EX_DECL_HIS_HEAD_GPTMP;
insert into EX_DECL_HIS_HEAD_GPTMP (CMD_TYPE,PRE_NO) select CMD_TYPE,PRE_NO from EX_DECL_HIS_HEAD_INC_EXT;
delete from EX_DECL_HIS_HEAD_GPTMP_TODAY using EX_DECL_HIS_HEAD_GPTMP where EX_DECL_HIS_HEAD_GPTMP.PRE_NO=EX_DECL_HIS_HEAD_GPTMP_TODAY.PRE_NO ;
insert into EX_DECL_HIS_HEAD_GPTMP_TODAY (CMD_TYPE,PRE_NO,TURN_NO,BATCH_NO,ENTRY_NO,APPL_NAME,APPL_CODE,SEAL_NO_1,SEAL_NO_2,EXPORT_PLACE,DELIVER_CO,DELIVER_PLACE,CONTR_NO,LICENSE_NO,MANUAL_NO,RATION_CARD,CHK_PROOF_NO,TRADE_MODE,CONTRACTOR,CONTRACTOR_CODE,TRAF_WAY,CUSTOMS_NO,TRANS_NO,NATIVE_VOYAGE_NO,BILL_NO,BILL_COUNT,CONTA_NO,CONTA_TYPE,CONTA_AMOUNT,CONTA_INI_COUNT,CONTA_EMPTY_COUNT,VALID_TIME,GOODS_NOTE,PRE_NAME,INPUT_OP_ID,INPUT_TIME,REC_MARK,EXAM_OP_ID,EXAM_TIME,CHECK_OP_ID,CHECK_TIME,CHECK_MARK,DEL_OP_ID,DEL_TIME,DEL_REASON,DELI_MARK,REL_OP_ID,REL_TIME,PRE_FIEL,MFT_VOYAGE_NO,MFT_TRAF_NAME,MFT_BILL_NO,MFT_TRAF_WAY,MFT_GOODS_PIECE,MFT_GROSS_WEIGHT,MFT_REC_MARK,SEND_PORT,RECV_PORT,GOODS_CHK_FLAG,OTHER_CHK_MARK,TRN_MODE,ADV_MARK,TRANS_PRE_NO,TRANS_PRE_MARK,STF_DATE,STF_NO,PRE_FIELD1,PRE_FIELD2,CA_KEY,HASH_SIGN) select CMD_TYPE,PRE_NO,TURN_NO,BATCH_NO,ENTRY_NO,APPL_NAME,APPL_CODE,SEAL_NO_1,SEAL_NO_2,EXPORT_PLACE,DELIVER_CO,DELIVER_PLACE,CONTR_NO,LICENSE_NO,MANUAL_NO,RATION_CARD,CHK_PROOF_NO,TRADE_MODE,CONTRACTOR,CONTRACTOR_CODE,TRAF_WAY,CUSTOMS_NO,TRANS_NO,NATIVE_VOYAGE_NO,BILL_NO,BILL_COUNT,CONTA_NO,CONTA_TYPE,CONTA_AMOUNT,CONTA_INI_COUNT,CONTA_EMPTY_COUNT,VALID_TIME,GOODS_NOTE,PRE_NAME,INPUT_OP_ID,INPUT_TIME,REC_MARK,EXAM_OP_ID,EXAM_TIME,CHECK_OP_ID,CHECK_TIME,CHECK_MARK,DEL_OP_ID,DEL_TIME,DEL_REASON,DELI_MARK,REL_OP_ID,REL_TIME,PRE_FIEL,MFT_VOYAGE_NO,MFT_TRAF_NAME,MFT_BILL_NO,MFT_TRAF_WAY,MFT_GOODS_PIECE,MFT_GROSS_WEIGHT,MFT_REC_MARK,SEND_PORT,RECV_PORT,GOODS_CHK_FLAG,OTHER_CHK_MARK,TRN_MODE,ADV_MARK,TRANS_PRE_NO,TRANS_PRE_MARK,STF_DATE,STF_NO,PRE_FIELD1,PRE_FIELD2,CA_KEY,HASH_SIGN from EX_DECL_HIS_HEAD_INC_EXT;
delete from EX_DECL_HIS_HEAD_GPTMP;
\timing
