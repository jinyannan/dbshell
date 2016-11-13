\timing
select now();
\echo "create index IDX_AGREEMENTGOODSLIST_D_DATE_ops on AGREEMENT_GOODS_LIST(D_DATE,AGREEMENT_ID varchar_pattern_ops,CODE_TS varchar_pattern_ops,QTY_1);"
create index IDX_AGREEMENTGOODSLIST_D_DATE_ops on AGREEMENT_GOODS_LIST(D_DATE,AGREEMENT_ID varchar_pattern_ops,CODE_TS varchar_pattern_ops,QTY_1);
\timing
select now();
\echo "create index IX_AMSLISTHEAD_LOGFLAG_ops on AMSLIST_HEAD(LOG_FLAG varchar_pattern_ops);"
create index IX_AMSLISTHEAD_LOGFLAG_ops on AMSLIST_HEAD(LOG_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_APPLY_HEAD_CONTACT_NO_ops on APPLY_HEAD(CONTACT_NO varchar_pattern_ops);"
create index IDX_APPLY_HEAD_CONTACT_NO_ops on APPLY_HEAD(CONTACT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_APPLY_HEAD_RECV_ops on APPLY_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_APPLY_HEAD_RECV_ops on APPLY_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_APPLY_HEAD_SEND_ops on APPLY_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_APPLY_HEAD_SEND_ops on APPLY_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_APPLY_HEAD_TRANS_PRE_NO_ops on APPLY_HEAD(TRANS_PRE_NO varchar_pattern_ops);"
create index IDX_APPLY_HEAD_TRANS_PRE_NO_ops on APPLY_HEAD(TRANS_PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_APPLY_LIST_CONTACT_NO_ops on APPLY_LIST(CONTACT_NO varchar_pattern_ops);"
create index IDX_APPLY_LIST_CONTACT_NO_ops on APPLY_LIST(CONTACT_NO varchar_pattern_ops);
\timing
\timing
\timing
select now();
\echo "create index IX_BAK_HEAD_PRE_NO_ops on BAK_CONTRACT_HEAD(PRE_MANUAL_NO varchar_pattern_ops);"
create index IX_BAK_HEAD_PRE_NO_ops on BAK_CONTRACT_HEAD(PRE_MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BAKDCGBILLH_DCGNO_ops on BAK_DCG_BILL_HEAD(DCG_NO varchar_pattern_ops);"
create index IX_BAKDCGBILLH_DCGNO_ops on BAK_DCG_BILL_HEAD(DCG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BAKDCGDEDUCT_DCGNO_ops on BAK_DCG_DEDUCT(DCG_NO varchar_pattern_ops);"
create index IX_BAKDCGDEDUCT_DCGNO_ops on BAK_DCG_DEDUCT(DCG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BAKDCGDEDUCTLOG_DCGNO_ops on BAK_DCG_DEDUCT_LOG(DCG_NO varchar_pattern_ops);"
create index IX_BAKDCGDEDUCTLOG_DCGNO_ops on BAK_DCG_DEDUCT_LOG(DCG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_BAKEMSCONSUME_ETLMARK_ops on BAK_EMS_CONSUME(ETL_MARK varchar_pattern_ops);"
create index IDX_BAKEMSCONSUME_ETLMARK_ops on BAK_EMS_CONSUME(ETL_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BCK_COP_HEAD_INDEX1_ops on BCK_COP_HEAD(TRADE_CODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_BCK_COP_HEAD_INDEX1_ops on BCK_COP_HEAD(TRADE_CODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BCK_HANDOVER_INDEX1_ops on BCK_HANDOVER(HANDOVER_NO varchar_pattern_ops,CREATE_DATE,HANDOVER_TYPE varchar_pattern_ops);"
create index IX_BCK_HANDOVER_INDEX1_ops on BCK_HANDOVER(HANDOVER_NO varchar_pattern_ops,CREATE_DATE,HANDOVER_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BCK_HEAD_INDEX1_ops on BCK_HEAD(APPLY_CUSTOMS_CODE varchar_pattern_ops,EXE_MARK varchar_pattern_ops,EXE_MARK_DATE,APPLY_POS varchar_pattern_ops,BCK_NO varchar_pattern_ops);"
create index IX_BCK_HEAD_INDEX1_ops on BCK_HEAD(APPLY_CUSTOMS_CODE varchar_pattern_ops,EXE_MARK varchar_pattern_ops,EXE_MARK_DATE,APPLY_POS varchar_pattern_ops,BCK_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BCK_STOCK_HEAD_INDEX1_ops on BCK_STOCK_HEAD(TRADE_CODE varchar_pattern_ops);"
create index IX_BCK_STOCK_HEAD_INDEX1_ops on BCK_STOCK_HEAD(TRADE_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BCK_WORKFLOW_INDEX1_ops on BCK_WORKFLOW(BCK_NO varchar_pattern_ops,OPER_ER varchar_pattern_ops);"
create index IX_BCK_WORKFLOW_INDEX1_ops on BCK_WORKFLOW(BCK_NO varchar_pattern_ops,OPER_ER varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_BWSDEDUCT_BWSGNO_ops on BWS_DEDUCT(BWS_NO varchar_pattern_ops,BWS_G_NO);"
create index IX_BWSDEDUCT_BWSGNO_ops on BWS_DEDUCT(BWS_NO varchar_pattern_ops,BWS_G_NO);
\timing
select now();
\echo "create index IX_BWSDEDUCT_BWSNO_ops on BWS_DEDUCT(BWS_NO varchar_pattern_ops);"
create index IX_BWSDEDUCT_BWSNO_ops on BWS_DEDUCT(BWS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BWSDEDUCT_NO_TYPE_ops on BWS_DEDUCT(BWS_NO varchar_pattern_ops,BWS_G_TYPE varchar_pattern_ops);"
create index IX_BWSDEDUCT_NO_TYPE_ops on BWS_DEDUCT(BWS_NO varchar_pattern_ops,BWS_G_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BWSEXAMCERTLST_CERTNOTP_ops on BWS_EXAM_CERT_LIST(CERT_NO varchar_pattern_ops);"
create index IX_BWSEXAMCERTLST_CERTNOTP_ops on BWS_EXAM_CERT_LIST(CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BWSEXAMGDLST_CERTNO_ops on BWS_EXAM_GOOD_LIST(CERT_NO varchar_pattern_ops);"
create index IX_BWSEXAMGDLST_CERTNO_ops on BWS_EXAM_GOOD_LIST(CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_BWSHEAD_CTCODE_ops on BWS_HEAD(MASTER_CUSTOMS varchar_pattern_ops,TRADE_CODE varchar_pattern_ops);"
create index IX_BWSHEAD_CTCODE_ops on BWS_HEAD(MASTER_CUSTOMS varchar_pattern_ops,TRADE_CODE varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IDX_CTS_ERR_ENTRY_ID_ops on CCTS_ERROR_LOG(ENTRY_ID varchar_pattern_ops);"
create index IDX_CTS_ERR_ENTRY_ID_ops on CCTS_ERROR_LOG(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_COR_ENTRY_ID_ops on CCTS_ONLINE_RESULT(ENTRY_ID varchar_pattern_ops);"
create index IDX_COR_ENTRY_ID_ops on CCTS_ONLINE_RESULT(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_COR_BAK_ENTRY_ID_ops on CCTS_ONLINE_RESULT_BAK(ENTRY_ID varchar_pattern_ops);"
create index IDX_COR_BAK_ENTRY_ID_ops on CCTS_ONLINE_RESULT_BAK(ENTRY_ID varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IDX_CTS_ENTRY_ID_ops on CCTS_PERFORMANCE(ENTRY_ID varchar_pattern_ops);"
create index IDX_CTS_ENTRY_ID_ops on CCTS_PERFORMANCE(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CDLCHK_BILL_NO_ops on CDL_CHK(BILL_NO varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,SHIP_ID varchar_pattern_ops,I_E_PORT varchar_pattern_ops);"
create index IX_CDLCHK_BILL_NO_ops on CDL_CHK(BILL_NO varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,SHIP_ID varchar_pattern_ops,I_E_PORT varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CDLCOMMODITY_TRADECO_ops on CDL_COMMODITY(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_CDLCOMMODITY_TRADECO_ops on CDL_COMMODITY(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PRE_RECORDS_NO_ops on CDL_COMMODITY(PRE_RECORDS_NO varchar_pattern_ops);"
create index IX_PRE_RECORDS_NO_ops on CDL_COMMODITY(PRE_RECORDS_NO varchar_pattern_ops);
\timing
\timing
\timing
select now();
\echo "create index IX_CDLOPLOG_OP_ops on CDL_OP_LOG(OP_TYPE varchar_pattern_ops,OP_TIME);"
create index IX_CDLOPLOG_OP_ops on CDL_OP_LOG(OP_TYPE varchar_pattern_ops,OP_TIME);
\timing
select now();
\echo "create index IX_CDLWORKFLOW_CREATEDATE_ops on CDL_WORKFLOW(CREATE_DATE,STEP_ID varchar_pattern_ops);"
create index IX_CDLWORKFLOW_CREATEDATE_ops on CDL_WORKFLOW(CREATE_DATE,STEP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CIC_HEAD_ENTRY_NO_ops on CIC_HEAD(ENTRY_NO varchar_pattern_ops);"
create index IDX_CIC_HEAD_ENTRY_NO_ops on CIC_HEAD(ENTRY_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CIC_LIST_CAR_COVER_NO_ops on CIC_LIST(CAR_COVER_NO varchar_pattern_ops);"
create index IDX_CIC_LIST_CAR_COVER_NO_ops on CIC_LIST(CAR_COVER_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CIC_SEND_REL_CIC_NO_ops on CIC_SEND_REL(CIC_NO varchar_pattern_ops);"
create index IDX_CIC_SEND_REL_CIC_NO_ops on CIC_SEND_REL(CIC_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_COMPANY_REL_COP_IO_CODE_ops on COMPANY_REL(COP_IO_CODE varchar_pattern_ops);"
create index IDX_COMPANY_REL_COP_IO_CODE_ops on COMPANY_REL(COP_IO_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CUSTOMS_CODE_ops on COMPANY_REL(CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CUSTOMS_CODE_ops on COMPANY_REL(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_FULL_NAME_ops on COMPANY_REL(FULL_NAME varchar_pattern_ops);"
create index IDX_FULL_NAME_ops on COMPANY_REL(FULL_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_GB_CODE_ops on COMPANY_REL(COP_GB_CODE varchar_pattern_ops);"
create index IDX_GB_CODE_ops on COMPANY_REL(COP_GB_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_REG_CO_ops on COMPANY_REL(REG_CO varchar_pattern_ops);"
create index IDX_REG_CO_ops on COMPANY_REL(REG_CO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_APPRDATE_ops on CONTRACT_HEAD(APPR_DATE,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_CONTRACTHEAD_APPRDATE_ops on CONTRACT_HEAD(APPR_DATE,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_CLEARAPPLDATE_ops on CONTRACT_HEAD(CLEAR_APPL_DATE,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_CONTRACTHEAD_CLEARAPPLDATE_ops on CONTRACT_HEAD(CLEAR_APPL_DATE,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_CLEARDATE_ops on CONTRACT_HEAD(CLEAR_DATE,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_CONTRACTHEAD_CLEARDATE_ops on CONTRACT_HEAD(CLEAR_DATE,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_CLOSEDATE_ops on CONTRACT_HEAD(CLOSE_DATE,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_CONTRACTHEAD_CLOSEDATE_ops on CONTRACT_HEAD(CLOSE_DATE,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_CUSTOMSCODE_ops on CONTRACT_HEAD(CUSTOMS_CODE varchar_pattern_ops);"
create index IX_CONTRACTHEAD_CUSTOMSCODE_ops on CONTRACT_HEAD(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_EDATE_ops on CONTRACT_HEAD(E_DATE,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_CONTRACTHEAD_EDATE_ops on CONTRACT_HEAD(E_DATE,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_OWNERCODE_ops on CONTRACT_HEAD(OWNER_CODE varchar_pattern_ops);"
create index IX_CONTRACTHEAD_OWNERCODE_ops on CONTRACT_HEAD(OWNER_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_PRENO_ops on CONTRACT_HEAD(PRE_MANUAL_NO varchar_pattern_ops);"
create index IX_CONTRACTHEAD_PRENO_ops on CONTRACT_HEAD(PRE_MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CONTRACTHEAD_TRADECO_ops on CONTRACT_HEAD(TRADE_CO varchar_pattern_ops);"
create index IX_CONTRACTHEAD_TRADECO_ops on CONTRACT_HEAD(TRADE_CO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CODE_TS_COP_ops on COP_CONSUME(EX_CODE_TS varchar_pattern_ops,IM_CODE_TS varchar_pattern_ops,CUS_CODE varchar_pattern_ops);"
create index IX_CODE_TS_COP_ops on COP_CONSUME(EX_CODE_TS varchar_pattern_ops,IM_CODE_TS varchar_pattern_ops,CUS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CHKRATE_LIMIT_CUSTOMS_CODE_ops on CTS_CHKRATE_LIMIT(CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CHKRATE_LIMIT_CUSTOMS_CODE_ops on CTS_CHKRATE_LIMIT(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CODE_TS_ops on CUS_GOOD_CONSUME(EX_CODE_TS varchar_pattern_ops,IM_CODE_TS varchar_pattern_ops,CUS_CODE varchar_pattern_ops);"
create index IX_CODE_TS_ops on CUS_GOOD_CONSUME(EX_CODE_TS varchar_pattern_ops,IM_CODE_TS varchar_pattern_ops,CUS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DCGBILLH_DCGNO_ops on DCG_BILL_HEAD(DCG_NO varchar_pattern_ops);"
create index IX_DCGBILLH_DCGNO_ops on DCG_BILL_HEAD(DCG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DCGDEDUCT_EMSNO_ops on DCG_DEDUCT(EMS_NO varchar_pattern_ops,EMS_G_NO);"
create index IX_DCGDEDUCT_EMSNO_ops on DCG_DEDUCT(EMS_NO varchar_pattern_ops,EMS_G_NO);
\timing
select now();
\echo "create index IX_DCGDEDUCT_NOTYPE_ops on DCG_DEDUCT(DCG_NO varchar_pattern_ops,G_TYPE varchar_pattern_ops);"
create index IX_DCGDEDUCT_NOTYPE_ops on DCG_DEDUCT(DCG_NO varchar_pattern_ops,G_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DCGDEDUCTLOG_DCGNO_ops on DCG_DEDUCT_LOG(DCG_NO varchar_pattern_ops);"
create index IX_DCGDEDUCTLOG_DCGNO_ops on DCG_DEDUCT_LOG(DCG_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_DCGHEAD_EXCUMCODE_ops on DCG_HEAD(EX_CUSTOMS_CODE varchar_pattern_ops);"
create index IX_DCGHEAD_EXCUMCODE_ops on DCG_HEAD(EX_CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DCGHEAD_EXEMSNO_ops on DCG_HEAD(EX_EMS_NO varchar_pattern_ops);"
create index IX_DCGHEAD_EXEMSNO_ops on DCG_HEAD(EX_EMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DCGHEAD_IMCUMCODE_ops on DCG_HEAD(IM_CUSTOMS_CODE varchar_pattern_ops);"
create index IX_DCGHEAD_IMCUMCODE_ops on DCG_HEAD(IM_CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DCGHEAD_EMSNO_ops on DCG_LIST(EMS_NO varchar_pattern_ops,EMS_G_NO);"
create index IX_DCGHEAD_EMSNO_ops on DCG_LIST(EMS_NO varchar_pattern_ops,EMS_G_NO);
\timing
select now();
\echo "create index IX_DCGHEAD_EXGNO_ops on DCG_LIST(DCG_NO varchar_pattern_ops,EX_G_NO);"
create index IX_DCGHEAD_EXGNO_ops on DCG_LIST(DCG_NO varchar_pattern_ops,EX_G_NO);
\timing
select now();
\echo "create index DECL_ID_CODE_INDEX_ops on DECLAR_REL(DECL_ID_CODE varchar_pattern_ops);"
create index DECL_ID_CODE_INDEX_ops on DECLAR_REL(DECL_ID_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_TRADE_INDEX_ops on DECLAR_REL(TRADE_CO varchar_pattern_ops);"
create index DECL_TRADE_INDEX_ops on DECLAR_REL(TRADE_CO varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_TYPE_INDEX_ops on DECLAR_REL(CUSTOMS_CODE varchar_pattern_ops,DECL_TYPE varchar_pattern_ops);"
create index DECL_TYPE_INDEX_ops on DECLAR_REL(CUSTOMS_CODE varchar_pattern_ops,DECL_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_ZG_CODE_INDEX_ops on DECLAR_REL(DECL_ZG_CODE varchar_pattern_ops);"
create index DECL_ZG_CODE_INDEX_ops on DECLAR_REL(DECL_ZG_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_CTRL_IDX_ops on DECLARER_REL(CUSTOMS_CODE varchar_pattern_ops,CTRL_MARK varchar_pattern_ops);"
create index DECL_CTRL_IDX_ops on DECLARER_REL(CUSTOMS_CODE varchar_pattern_ops,CTRL_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_ID_CODE_IDX_ops on DECLARER_REL(DECL_ID_CODE varchar_pattern_ops);"
create index DECL_ID_CODE_IDX_ops on DECLARER_REL(DECL_ID_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_SCORE_IDX_ops on DECLARER_REL(CUSTOMS_CODE varchar_pattern_ops,SCORE);"
create index DECL_SCORE_IDX_ops on DECLARER_REL(CUSTOMS_CODE varchar_pattern_ops,SCORE);
\timing
select now();
\echo "create index DECL_TRADE_IDX_ops on DECLARER_REL(TRADE_CO varchar_pattern_ops);"
create index DECL_TRADE_IDX_ops on DECLARER_REL(TRADE_CO varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_ZG_CODE_IDX_ops on DECLARER_REL(CUSTOMS_CODE varchar_pattern_ops,DECL_ZG_CODE varchar_pattern_ops);"
create index DECL_ZG_CODE_IDX_ops on DECLARER_REL(CUSTOMS_CODE varchar_pattern_ops,DECL_ZG_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index DECLOG_DECLCO_F_INDEX_ops on DECLOG_FULL_REL(DECL_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index DECLOG_DECLCO_F_INDEX_ops on DECLOG_FULL_REL(DECL_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index DCLMLOG_CUSTMOD_IDX_ops on DECLOG_MOD_REL(CUSTOMS_CODE varchar_pattern_ops,LOG_MODE varchar_pattern_ops);"
create index DCLMLOG_CUSTMOD_IDX_ops on DECLOG_MOD_REL(CUSTOMS_CODE varchar_pattern_ops,LOG_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index DECLOG_DECLCO_M_INDEX_ops on DECLOG_MODIFY_REL(LOG_DECL_CO varchar_pattern_ops,LOG_DECL_CUST varchar_pattern_ops);"
create index DECLOG_DECLCO_M_INDEX_ops on DECLOG_MODIFY_REL(LOG_DECL_CO varchar_pattern_ops,LOG_DECL_CUST varchar_pattern_ops);
\timing
select now();
\echo "create index DCLSLOG_CUSTOMS_IDX_ops on DECLOG_SCORE_HEAD(CUSTOMS_CODE varchar_pattern_ops);"
create index DCLSLOG_CUSTOMS_IDX_ops on DECLOG_SCORE_HEAD(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index DCLSLOG_ERRTYPE_IDX_ops on DECLOG_SCORE_LIST(ERROR_TYPE varchar_pattern_ops);"
create index DCLSLOG_ERRTYPE_IDX_ops on DECLOG_SCORE_LIST(ERROR_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index DCLSLOG_SEQNO_IDX_ops on DECLOG_SCORE_LIST(SEQ_NO varchar_pattern_ops);"
create index DCLSLOG_SEQNO_IDX_ops on DECLOG_SCORE_LIST(SEQ_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_DEDUCT_ENTRYID_ops on DST_DEDUCT(ENTRY_ID varchar_pattern_ops);"
create index IX_DEDUCT_ENTRYID_ops on DST_DEDUCT(ENTRY_ID varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_EXG_CODETS_ops on DST_EXG(CODE_TS varchar_pattern_ops);"
create index IX_EXG_CODETS_ops on DST_EXG(CODE_TS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EXG_RELNO_ops on DST_EXG(REL_NO varchar_pattern_ops);"
create index IX_EXG_RELNO_ops on DST_EXG(REL_NO varchar_pattern_ops);
\timing
\timing
\timing
select now();
\echo "create index IX_EXGENTRY_RELNO_ops on DST_EXG_ORI_ENTRY(REL_NO varchar_pattern_ops);"
create index IX_EXGENTRY_RELNO_ops on DST_EXG_ORI_ENTRY(REL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DSTHEAD_CUSCODE_ops on DST_HEAD(MASTER_CUSTOMS varchar_pattern_ops);"
create index IX_DSTHEAD_CUSCODE_ops on DST_HEAD(MASTER_CUSTOMS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DSTHEAD_EMSNO_ops on DST_HEAD(EMS_NO varchar_pattern_ops);"
create index IX_DSTHEAD_EMSNO_ops on DST_HEAD(EMS_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_IMG_CODETS_ops on DST_IMG(CODE_TS varchar_pattern_ops);"
create index IX_IMG_CODETS_ops on DST_IMG(CODE_TS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_IMG_RELNO_ops on DST_IMG(REL_NO varchar_pattern_ops);"
create index IX_IMG_RELNO_ops on DST_IMG(REL_NO varchar_pattern_ops);
\timing
\timing
\timing
select now();
\echo "create index IX_IMGENTRY_RELNO_ops on DST_IMG_ORI_ENTRY(REL_NO varchar_pattern_ops);"
create index IX_IMGENTRY_RELNO_ops on DST_IMG_ORI_ENTRY(REL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DUTYCHECKLOG_EPORTID_ops on DUTY_CHECK_LOG(EPORT_ID varchar_pattern_ops);"
create index IX_DUTYCHECKLOG_EPORTID_ops on DUTY_CHECK_LOG(EPORT_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DUTYCHECKLOG_GUAID_ops on DUTY_CHECK_LOG(GUA_ID varchar_pattern_ops);"
create index IX_DUTYCHECKLOG_GUAID_ops on DUTY_CHECK_LOG(GUA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DUTYFORMLIST_BOOK_NO_ops on DUTYFORM_LIST(BOOK_NO varchar_pattern_ops);"
create index IX_DUTYFORMLIST_BOOK_NO_ops on DUTYFORM_LIST(BOOK_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_DUTYFORMLIST_DUTYFORNO_ops on DUTYFORM_LIST(DUTYFOR_NO varchar_pattern_ops);"
create index IX_DUTYFORMLIST_DUTYFORNO_ops on DUTYFORM_LIST(DUTYFOR_NO varchar_pattern_ops);
\timing
\timing
\timing
\timing
select now();
\echo "create index IX_EGSADMITHEAD_PREADMNO_ops on EGS_ADMIT_HEAD(PRE_ADM_NO varchar_pattern_ops);"
create index IX_EGSADMITHEAD_PREADMNO_ops on EGS_ADMIT_HEAD(PRE_ADM_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_EGSARCHEAD_MASTERCUSTOMS_ops on EGS_ARC_HEAD(MASTER_CUSTOMS varchar_pattern_ops);"
create index IX_EGSARCHEAD_MASTERCUSTOMS_ops on EGS_ARC_HEAD(MASTER_CUSTOMS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EGSARCHEAD_PREEGSNO_ops on EGS_ARC_HEAD(PRE_EGS_NO varchar_pattern_ops);"
create index IX_EGSARCHEAD_PREEGSNO_ops on EGS_ARC_HEAD(PRE_EGS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EGSARCHEAD_REGCUSTOMS_ops on EGS_ARC_HEAD(REG_CUSTOMS varchar_pattern_ops);"
create index IX_EGSARCHEAD_REGCUSTOMS_ops on EGS_ARC_HEAD(REG_CUSTOMS varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_EGSDECLAREHEAD_EGSNO_ops on EGS_DECLARE_HEAD(EGS_NO varchar_pattern_ops);"
create index IX_EGSDECLAREHEAD_EGSNO_ops on EGS_DECLARE_HEAD(EGS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EGSDECLAREHEAD_MASTERCUSTOM_ops on EGS_DECLARE_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);"
create index IX_EGSDECLAREHEAD_MASTERCUSTOM_ops on EGS_DECLARE_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EGSDECLAREHEAD_PREDECLNO_ops on EGS_DECLARE_HEAD(PRE_DECL_NO varchar_pattern_ops);"
create index IX_EGSDECLAREHEAD_PREDECLNO_ops on EGS_DECLARE_HEAD(PRE_DECL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EGSDECLARELIST_FIRSTDECL_ops on EGS_DECLARE_LIST(FIRST_DECL_NO varchar_pattern_ops,FIRST_G_NO);"
create index IX_EGSDECLARELIST_FIRSTDECL_ops on EGS_DECLARE_LIST(FIRST_DECL_NO varchar_pattern_ops,FIRST_G_NO);
\timing
select now();
\echo "create index IX_EGSDEDUCT_CLR_ops on EGS_DEDUCT(CLR_NO varchar_pattern_ops,CLR_G_NO);"
create index IX_EGSDEDUCT_CLR_ops on EGS_DEDUCT(CLR_NO varchar_pattern_ops,CLR_G_NO);
\timing
select now();
\echo "create index IX_EGSLENDHEAD_EGSNO_ops on EGS_LEND_HEAD(EGS_NO varchar_pattern_ops);"
create index IX_EGSLENDHEAD_EGSNO_ops on EGS_LEND_HEAD(EGS_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_EGSLENDHEAD_MASTERCUSTOMS_ops on EGS_LEND_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);"
create index IX_EGSLENDHEAD_MASTERCUSTOMS_ops on EGS_LEND_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EGSLENDHEAD_PRELENDNO_ops on EGS_LEND_HEAD(PRE_LEND_NO varchar_pattern_ops);"
create index IX_EGSLENDHEAD_PRELENDNO_ops on EGS_LEND_HEAD(PRE_LEND_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EMS_CONSUME_EMSNO_ops on EMS_CONSUME(EMS_NO varchar_pattern_ops);"
create index IDX_EMS_CONSUME_EMSNO_ops on EMS_CONSUME(EMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EMSCONSUME_MODIFY_MARK_ops on EMS_CONSUME(EMS_NO varchar_pattern_ops,MODIFY_MARK varchar_pattern_ops);"
create index IX_EMSCONSUME_MODIFY_MARK_ops on EMS_CONSUME(EMS_NO varchar_pattern_ops,MODIFY_MARK varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_EMSDEDUCT_EMSNO_ops on EMS_DEDUCT(EMS_NO varchar_pattern_ops);"
create index IX_EMSDEDUCT_EMSNO_ops on EMS_DEDUCT(EMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EMSDEDUCTLOG_EMSGNO_ops on EMS_DEDUCT_LOG(EMS_NO varchar_pattern_ops,NOTE varchar_pattern_ops);"
create index IX_EMSDEDUCTLOG_EMSGNO_ops on EMS_DEDUCT_LOG(EMS_NO varchar_pattern_ops,NOTE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EMSHEAD_COPNO_ops on EMS_HEAD(COP_EMS_NO varchar_pattern_ops,TRADE_CODE varchar_pattern_ops);"
create index IX_EMSHEAD_COPNO_ops on EMS_HEAD(COP_EMS_NO varchar_pattern_ops,TRADE_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EMSHEAD_CUSTOMSCODE_ops on EMS_HEAD(MASTER_CUSTOMS varchar_pattern_ops);"
create index IX_EMSHEAD_CUSTOMSCODE_ops on EMS_HEAD(MASTER_CUSTOMS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EMSHEAD_ETL_MARK_ops on EMS_HEAD(ETL_MARK varchar_pattern_ops);"
create index IX_EMSHEAD_ETL_MARK_ops on EMS_HEAD(ETL_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EMSHEAD_LASTEMSNO_ops on EMS_HEAD(LAST_EMS_NO varchar_pattern_ops);"
create index IX_EMSHEAD_LASTEMSNO_ops on EMS_HEAD(LAST_EMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EMSHEAD_PRENO_ops on EMS_HEAD(PRE_EMS_NO varchar_pattern_ops);"
create index IX_EMSHEAD_PRENO_ops on EMS_HEAD(PRE_EMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EMSLIST_ETL_MARK_ops on EMS_LIST(ETL_MARK varchar_pattern_ops);"
create index IX_EMSLIST_ETL_MARK_ops on EMS_LIST(ETL_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_ENTRY_EVALUATION_ASSID_ops on ENTRY_EVALUATION(ASS_ID varchar_pattern_ops);"
create index IX_ENTRY_EVALUATION_ASSID_ops on ENTRY_EVALUATION(ASS_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_ENTRYHEAD_CONTRNO_ops on ENTRY_HEAD(CONTR_NO varchar_pattern_ops);"
create index IX_ENTRYHEAD_CONTRNO_ops on ENTRY_HEAD(CONTR_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_ENTRYHEAD_IEPORT_ops on ENTRY_HEAD(I_E_PORT varchar_pattern_ops);"
create index IX_ENTRYHEAD_IEPORT_ops on ENTRY_HEAD(I_E_PORT varchar_pattern_ops);
\timing
select now();
\echo "create index IX_ENTRYHEAD_MANUALNO_ops on ENTRY_HEAD(MANUAL_NO varchar_pattern_ops);"
create index IX_ENTRYHEAD_MANUALNO_ops on ENTRY_HEAD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_ENTRYHEAD_RELATIVEID_ops on ENTRY_HEAD(RELATIVE_ID varchar_pattern_ops);"
create index IX_ENTRYHEAD_RELATIVEID_ops on ENTRY_HEAD(RELATIVE_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_ENTRYHEAD_TRADECO_ops on ENTRY_HEAD(TRADE_CO varchar_pattern_ops);"
create index IX_ENTRYHEAD_TRADECO_ops on ENTRY_HEAD(TRADE_CO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_ENTRYPROC_DECLPORT_ops on ENTRY_PROC(DECL_PORT varchar_pattern_ops);"
create index IX_ENTRYPROC_DECLPORT_ops on ENTRY_PROC(DECL_PORT varchar_pattern_ops);
\timing
\timing
\timing
select now();
\echo "create index IX_ENTRY_WORKFLOW_ops on ENTRY_WORKFLOW(CREATE_DATE,STEP_ID varchar_pattern_ops);"
create index IX_ENTRY_WORKFLOW_ops on ENTRY_WORKFLOW(CREATE_DATE,STEP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EPA_CHK_CERT_NO_ops on EPA_CHK(CERTIFICATE_NO varchar_pattern_ops,CERT_TYPE varchar_pattern_ops);"
create index IX_EPA_CHK_CERT_NO_ops on EPA_CHK(CERTIFICATE_NO varchar_pattern_ops,CERT_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_ARV_SHIP_ops on EX_ARRIVAL_CONTA(REC_NO varchar_pattern_ops);"
create index IDX_ARV_SHIP_ops on EX_ARRIVAL_CONTA(REC_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IDX_EX_ARRIVAL_CONTA_BILL_NO_ops on EX_ARRIVAL_CONTA(BILL_NO varchar_pattern_ops);"
create index IDX_EX_ARRIVAL_CONTA_BILL_NO_ops on EX_ARRIVAL_CONTA(BILL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_ARRIVAL_CONTA_ENTRY_ID_ops on EX_ARRIVAL_CONTA(ENTRY_ID varchar_pattern_ops);"
create index IDX_EX_ARRIVAL_CONTA_ENTRY_ID_ops on EX_ARRIVAL_CONTA(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_ARRIVAL_SHIP_REC_NO_ops on EX_ARRIVAL_SHIP(REC_NO varchar_pattern_ops);"
create index IDX_EX_ARRIVAL_SHIP_REC_NO_ops on EX_ARRIVAL_SHIP(REC_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EXCDLMNLDEDUCT_ENTRYID_ops on EX_CDL_MNL_DEDUCT(ENTRY_ID varchar_pattern_ops);"
create index IX_EXCDLMNLDEDUCT_ENTRYID_ops on EX_CDL_MNL_DEDUCT(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CONTA_ENTRY_ops on EX_CONTA_ENTRY_CHK(ENTRY_ID varchar_pattern_ops);"
create index IDX_CONTA_ENTRY_ops on EX_CONTA_ENTRY_CHK(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EXCONTRACTDEDUC_ENTRYID_ops on EX_CONTRACT_DEDUC(ENTRY_ID varchar_pattern_ops);"
create index IX_EXCONTRACTDEDUC_ENTRYID_ops on EX_CONTRACT_DEDUC(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EXCONTRACTDEDUC_MANUALNO_ops on EX_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops,CONTR_ITEM);"
create index IX_EXCONTRACTDEDUC_MANUALNO_ops on EX_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops,CONTR_ITEM);
\timing
select now();
\echo "create index IDX_EX_DECL_ALARM_HEAD_RECV_ops on EX_DECL_ALARM_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_EX_DECL_ALARM_HEAD_RECV_ops on EX_DECL_ALARM_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_EX_DECL_ALARM_HEAD_SEND_ops on EX_DECL_ALARM_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_EX_DECL_ALARM_HEAD_SEND_ops on EX_DECL_ALARM_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_EX_DECL_ALARM_HEAD_TURN_NO_ops on EX_DECL_ALARM_HEAD(TURN_NO varchar_pattern_ops);"
create index IDX_EX_DECL_ALARM_HEAD_TURN_NO_ops on EX_DECL_ALARM_HEAD(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_DECL_ALARM_LIST_TURN_NO_ops on EX_DECL_ALARM_LIST(TURN_NO varchar_pattern_ops);"
create index IDX_EX_DECL_ALARM_LIST_TURN_NO_ops on EX_DECL_ALARM_LIST(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_DECL_CUR_HEAD_BAT_NO_ops on EX_DECL_CUR_HEAD(BATCH_NO varchar_pattern_ops);"
create index IDX_EX_DECL_CUR_HEAD_BAT_NO_ops on EX_DECL_CUR_HEAD(BATCH_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_DECL_CUR_HEAD_RECV_ops on EX_DECL_CUR_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_EX_DECL_CUR_HEAD_RECV_ops on EX_DECL_CUR_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_EX_DECL_CUR_HEAD_SEND_ops on EX_DECL_CUR_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_EX_DECL_CUR_HEAD_SEND_ops on EX_DECL_CUR_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_EX_DECL_CUR_HEAD_TURN_NO_ops on EX_DECL_CUR_HEAD(TURN_NO varchar_pattern_ops);"
create index IDX_EX_DECL_CUR_HEAD_TURN_NO_ops on EX_DECL_CUR_HEAD(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_DECL_CUR_LIST_TURN_NO_ops on EX_DECL_CUR_LIST(TURN_NO varchar_pattern_ops);"
create index IDX_EX_DECL_CUR_LIST_TURN_NO_ops on EX_DECL_CUR_LIST(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_DECL_HIS_HEAD_RECV_ops on EX_DECL_HIS_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_EX_DECL_HIS_HEAD_RECV_ops on EX_DECL_HIS_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_EX_DECL_HIS_HEAD_SEND_ops on EX_DECL_HIS_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_EX_DECL_HIS_HEAD_SEND_ops on EX_DECL_HIS_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_EX_DECL_HIS_HEAD_TURN_NO_ops on EX_DECL_HIS_HEAD(TURN_NO varchar_pattern_ops);"
create index IDX_EX_DECL_HIS_HEAD_TURN_NO_ops on EX_DECL_HIS_HEAD(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_DECL_HIS_LIST_TURN_NO_ops on EX_DECL_HIS_LIST(TURN_NO varchar_pattern_ops);"
create index IDX_EX_DECL_HIS_LIST_TURN_NO_ops on EX_DECL_HIS_LIST(TURN_NO varchar_pattern_ops);
\timing
\timing
\timing
select now();
\echo "create index IX_EXEXAMJOU_LICENSENO_ops on EX_EXAM_JOU(LICENSE_NO varchar_pattern_ops);"
create index IX_EXEXAMJOU_LICENSENO_ops on EX_EXAM_JOU(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EXFASCICLELIST_MANUALNO_ops on EX_FASCICLE_LIST(MANUAL_NO varchar_pattern_ops);"
create index IX_EXFASCICLELIST_MANUALNO_ops on EX_FASCICLE_LIST(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_ALARM_CONTA_REL_CONTA_N_ops on EX_TRANS_ALARM_CONTA_REL(CONTA_NO varchar_pattern_ops);"
create index IDX_EX_ALARM_CONTA_REL_CONTA_N_ops on EX_TRANS_ALARM_CONTA_REL(CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_ALARM_LIST_REL_ENTRY_NO_ops on EX_TRANS_ALARM_LIST_REL(ENTRY_NO varchar_pattern_ops);"
create index IDX_EX_ALARM_LIST_REL_ENTRY_NO_ops on EX_TRANS_ALARM_LIST_REL(ENTRY_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_CONTA_REL_CONTA_NO_ops on EX_TRANS_CONTA_REL(CONTA_NO varchar_pattern_ops);"
create index IDX_EX_CONTA_REL_CONTA_NO_ops on EX_TRANS_CONTA_REL(CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_CONTA_REL_TRANS_NAME_ops on EX_TRANS_CONTA_REL(TRANS_NAME varchar_pattern_ops);"
create index IDX_EX_CONTA_REL_TRANS_NAME_ops on EX_TRANS_CONTA_REL(TRANS_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_HIS_CONTA_REL_CONTA_NO_ops on EX_TRANS_HIS_CONTA_REL(CONTA_NO varchar_pattern_ops);"
create index IDX_EX_HIS_CONTA_REL_CONTA_NO_ops on EX_TRANS_HIS_CONTA_REL(CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_HIS_LIST_REL_ENTRY_NO_ops on EX_TRANS_HIS_LIST_REL(ENTRY_NO varchar_pattern_ops);"
create index IDX_EX_HIS_LIST_REL_ENTRY_NO_ops on EX_TRANS_HIS_LIST_REL(ENTRY_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EX_LIST_REL_ENTRY_NO_ops on EX_TRANS_LIST_REL(ENTRY_NO varchar_pattern_ops);"
create index IDX_EX_LIST_REL_ENTRY_NO_ops on EX_TRANS_LIST_REL(ENTRY_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_EX_TRN_ARV_CONTA_ENTRY_ID_ops on EX_TRN_ARRIVAL_CONTA(ENTRY_ID varchar_pattern_ops);"
create index IX_EX_TRN_ARV_CONTA_ENTRY_ID_ops on EX_TRN_ARRIVAL_CONTA(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EX_TRN_CONTA_ENTRY_ARV_M_ops on EX_TRN_CONTA_ENTRY_ARV(TRAF_NAME varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,BILL_NO varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,CONTA_ID varchar_pattern_ops);"
create index IX_EX_TRN_CONTA_ENTRY_ARV_M_ops on EX_TRN_CONTA_ENTRY_ARV(TRAF_NAME varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,BILL_NO varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EX_TRN_CONTA_ENTRY_ARV_N_ops on EX_TRN_CONTA_ENTRY_ARV(BILL_NO varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,CONTA_ID varchar_pattern_ops);"
create index IX_EX_TRN_CONTA_ENTRY_ARV_N_ops on EX_TRN_CONTA_ENTRY_ARV(BILL_NO varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EX_TRN_CONTA_ENTRY_ARV_S_ops on EX_TRN_CONTA_ENTRY_ARV(TRAF_NAME varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,CONTA_ID varchar_pattern_ops);"
create index IX_EX_TRN_CONTA_ENTRY_ARV_S_ops on EX_TRN_CONTA_ENTRY_ARV(TRAF_NAME varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_EXAM_CONTA_HEAD_ENTRY_ID_ops on EXAM_CONTA_HEAD(ENTRY_ID varchar_pattern_ops);"
create index IDX_EXAM_CONTA_HEAD_ENTRY_ID_ops on EXAM_CONTA_HEAD(ENTRY_ID varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_EXC_ELE_ops on EXC_ELE(PORT_CODE varchar_pattern_ops,RECV_DATE);"
create index IX_EXC_ELE_ops on EXC_ELE(PORT_CODE varchar_pattern_ops,RECV_DATE);
\timing
select now();
\echo "create index IX_EXC_TRADECO_ops on EXC_ELE(TRADE_CO varchar_pattern_ops);"
create index IX_EXC_TRADECO_ops on EXC_ELE(TRADE_CO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EXC_EXAM_ops on EXC_EXAM(ENTRY_ID varchar_pattern_ops);"
create index IX_EXC_EXAM_ops on EXC_EXAM(ENTRY_ID varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_FASCICLEHEAD_MANUALNO_ops on FASCICLE_HEAD(MANUAL_NO varchar_pattern_ops);"
create index IX_FASCICLEHEAD_MANUALNO_ops on FASCICLE_HEAD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_FCB_CHK_FORM_ID_ops on FCB_CHK(ENTRY_ID varchar_pattern_ops);"
create index IX_FCB_CHK_FORM_ID_ops on FCB_CHK(ENTRY_ID varchar_pattern_ops);
\timing
\timing
\timing
\timing
\timing
select now();
\echo "create index IX_FCB_MAIN_CUS_ops on FCB_HEAD(MAIN_CUS varchar_pattern_ops);"
create index IX_FCB_MAIN_CUS_ops on FCB_HEAD(MAIN_CUS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_FCB_PORT_CUS_ops on FCB_HEAD(PORT_CUS varchar_pattern_ops);"
create index IX_FCB_PORT_CUS_ops on FCB_HEAD(PORT_CUS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_FCB_PRE_NO_ops on FCB_HEAD(PRE_NO varchar_pattern_ops);"
create index IX_FCB_PRE_NO_ops on FCB_HEAD(PRE_NO varchar_pattern_ops);
\timing
\timing
\timing
select now();
\echo "create index IX_FCBWORKFLOW_CREATEDATE_ops on FCB_WORKFLOW(CREATE_DATE,STEP_ID varchar_pattern_ops);"
create index IX_FCBWORKFLOW_CREATEDATE_ops on FCB_WORKFLOW(CREATE_DATE,STEP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_FORM_CHK_BILLNO_ops on FORM_CHK(BILL_NO varchar_pattern_ops);"
create index IX_FORM_CHK_BILLNO_ops on FORM_CHK(BILL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_FORM_CHK_GEN_DATE_ops on FORM_CHK(GEN_DATE,I_E_FLAG varchar_pattern_ops,I_E_PORT varchar_pattern_ops);"
create index IX_FORM_CHK_GEN_DATE_ops on FORM_CHK(GEN_DATE,I_E_FLAG varchar_pattern_ops,I_E_PORT varchar_pattern_ops);
\timing
select now();
\echo "create index IX_FORM_CHK_SHIPID_ops on FORM_CHK(SHIP_ID varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops);"
create index IX_FORM_CHK_SHIPID_ops on FORM_CHK(SHIP_ID varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_FORM_CHK_TRANSNO_ops on FORM_CHK(TRANS_NO varchar_pattern_ops);"
create index IX_FORM_CHK_TRANSNO_ops on FORM_CHK(TRANS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_GUARANTEER_DECLPORT_ops on GUARANTEE_R(DECL_PORT varchar_pattern_ops);"
create index IX_GUARANTEER_DECLPORT_ops on GUARANTEE_R(DECL_PORT varchar_pattern_ops);
\timing
select now();
\echo "create index IX_GUARANTEER_ENTRYID_ops on GUARANTEE_R(ENTRY_ID varchar_pattern_ops);"
create index IX_GUARANTEER_ENTRYID_ops on GUARANTEE_R(ENTRY_ID varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_GUARANTEER_TRADECO_ops on GUARANTEE_R(TRADE_CO varchar_pattern_ops);"
create index IX_GUARANTEER_TRADECO_ops on GUARANTEE_R(TRADE_CO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_IMCDLMNLDEDUCT_ENTRYID_ops on IM_CDL_MNL_DEDUCT(ENTRY_ID varchar_pattern_ops);"
create index IX_IMCDLMNLDEDUCT_ENTRYID_ops on IM_CDL_MNL_DEDUCT(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_IMCONTRACTDEDUC_ENTRYID_ops on IM_CONTRACT_DEDUC(ENTRY_ID varchar_pattern_ops);"
create index IX_IMCONTRACTDEDUC_ENTRYID_ops on IM_CONTRACT_DEDUC(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_IMCONTRACTDEDUC_MANUALNO_ops on IM_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops,CONTR_ITEM);"
create index IX_IMCONTRACTDEDUC_MANUALNO_ops on IM_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops,CONTR_ITEM);
\timing
select now();
\echo "create index IDX_IM_DECL_ALARM_HEAD_RECV_ops on IM_DECL_ALARM_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_IM_DECL_ALARM_HEAD_RECV_ops on IM_DECL_ALARM_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_IM_DECL_ALARM_HEAD_SEND_ops on IM_DECL_ALARM_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_IM_DECL_ALARM_HEAD_SEND_ops on IM_DECL_ALARM_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_IM_DECL_ALARM_HEAD_TURN_NO_ops on IM_DECL_ALARM_HEAD(TURN_NO varchar_pattern_ops);"
create index IDX_IM_DECL_ALARM_HEAD_TURN_NO_ops on IM_DECL_ALARM_HEAD(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_DECL_ALARM_LIST_TURN_NO_ops on IM_DECL_ALARM_LIST(TURN_NO varchar_pattern_ops);"
create index IDX_IM_DECL_ALARM_LIST_TURN_NO_ops on IM_DECL_ALARM_LIST(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_DECL_CUR_HEAD_CONT_NO_ops on IM_DECL_CUR_HEAD(CONTACT_NO varchar_pattern_ops);"
create index IDX_IM_DECL_CUR_HEAD_CONT_NO_ops on IM_DECL_CUR_HEAD(CONTACT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_DECL_CUR_HEAD_RECV_ops on IM_DECL_CUR_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_IM_DECL_CUR_HEAD_RECV_ops on IM_DECL_CUR_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_IM_DECL_CUR_HEAD_SEND_ops on IM_DECL_CUR_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_IM_DECL_CUR_HEAD_SEND_ops on IM_DECL_CUR_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_IM_DECL_CUR_HEAD_TURN_NO_ops on IM_DECL_CUR_HEAD(TURN_NO varchar_pattern_ops);"
create index IDX_IM_DECL_CUR_HEAD_TURN_NO_ops on IM_DECL_CUR_HEAD(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_DECL_CUR_LIST_TURN_NO_ops on IM_DECL_CUR_LIST(TURN_NO varchar_pattern_ops);"
create index IDX_IM_DECL_CUR_LIST_TURN_NO_ops on IM_DECL_CUR_LIST(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_DECL_HIS_HEAD_RECV_ops on IM_DECL_HIS_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_IM_DECL_HIS_HEAD_RECV_ops on IM_DECL_HIS_HEAD(RECV_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_IM_DECL_HIS_HEAD_SEND_ops on IM_DECL_HIS_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);"
create index IDX_IM_DECL_HIS_HEAD_SEND_ops on IM_DECL_HIS_HEAD(SEND_PORT varchar_pattern_ops,EXAM_TIME);
\timing
select now();
\echo "create index IDX_IM_DECL_HIS_HEAD_TURN_NO_ops on IM_DECL_HIS_HEAD(TURN_NO varchar_pattern_ops);"
create index IDX_IM_DECL_HIS_HEAD_TURN_NO_ops on IM_DECL_HIS_HEAD(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_DECL_HIS_LIST_TURN_NO_ops on IM_DECL_HIS_LIST(TURN_NO varchar_pattern_ops);"
create index IDX_IM_DECL_HIS_LIST_TURN_NO_ops on IM_DECL_HIS_LIST(TURN_NO varchar_pattern_ops);
\timing
\timing
\timing
select now();
\echo "create index IX_IMEXAMJOU_LICENSENO_ops on IM_EXAM_JOU(LICENSE_NO varchar_pattern_ops);"
create index IX_IMEXAMJOU_LICENSENO_ops on IM_EXAM_JOU(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_IMFASCICLELIST_MANUALNO_ops on IM_FASCICLE_LIST(MANUAL_NO varchar_pattern_ops);"
create index IX_IMFASCICLELIST_MANUALNO_ops on IM_FASCICLE_LIST(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_ALARM_CONTA_REL_CONTA_N_ops on IM_TRANS_ALARM_CONTA_REL(CONTA_NO varchar_pattern_ops);"
create index IDX_IM_ALARM_CONTA_REL_CONTA_N_ops on IM_TRANS_ALARM_CONTA_REL(CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_ALARM_LIST_REL_ENTRY_NO_ops on IM_TRANS_ALARM_LIST_REL(ENTRY_NO varchar_pattern_ops);"
create index IDX_IM_ALARM_LIST_REL_ENTRY_NO_ops on IM_TRANS_ALARM_LIST_REL(ENTRY_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_CONTA_REL_CONTA_NO_ops on IM_TRANS_CONTA_REL(CONTA_NO varchar_pattern_ops);"
create index IDX_IM_CONTA_REL_CONTA_NO_ops on IM_TRANS_CONTA_REL(CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_CONTA_REL_TRANS_NAME_ops on IM_TRANS_CONTA_REL(TRANS_NAME varchar_pattern_ops);"
create index IDX_IM_CONTA_REL_TRANS_NAME_ops on IM_TRANS_CONTA_REL(TRANS_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_HIS_CONTA_REL_CONTA_NO_ops on IM_TRANS_HIS_CONTA_REL(CONTA_NO varchar_pattern_ops);"
create index IDX_IM_HIS_CONTA_REL_CONTA_NO_ops on IM_TRANS_HIS_CONTA_REL(CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_HIS_LIST_REL_ENTRY_NO_ops on IM_TRANS_HIS_LIST_REL(ENTRY_NO varchar_pattern_ops);"
create index IDX_IM_HIS_LIST_REL_ENTRY_NO_ops on IM_TRANS_HIS_LIST_REL(ENTRY_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_IM_LIST_REL_ENTRY_NO_ops on IM_TRANS_LIST_REL(ENTRY_NO varchar_pattern_ops);"
create index IDX_IM_LIST_REL_ENTRY_NO_ops on IM_TRANS_LIST_REL(ENTRY_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_LSP_CHK_ENTRY_ID_ops on LSP_CHK(ENTRY_ID varchar_pattern_ops);"
create index IX_LSP_CHK_ENTRY_ID_ops on LSP_CHK(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_LSPHEAD_ENTRYID_ops on LSP_HEAD(ENTRY_ID varchar_pattern_ops);"
create index IDX_LSPHEAD_ENTRYID_ops on LSP_HEAD(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_MANIFEST_CHK_FORM_ID_ops on MANIFEST_CHK(FORM_ID varchar_pattern_ops);"
create index IX_MANIFEST_CHK_FORM_ID_ops on MANIFEST_CHK(FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_MANIFEST_EXCH_LOG_BILL_NO_ops on MANIFEST_EXCH_LOG(BILL_NO varchar_pattern_ops);"
create index IX_MANIFEST_EXCH_LOG_BILL_NO_ops on MANIFEST_EXCH_LOG(BILL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_MANIFEST_HEAD_NAME_ops on MANIFEST_HEAD(I_E_FLAG varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,SHIP_NAME_EN varchar_pattern_ops);"
create index IX_MANIFEST_HEAD_NAME_ops on MANIFEST_HEAD(I_E_FLAG varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,SHIP_NAME_EN varchar_pattern_ops);
\timing
select now();
\echo "create index IX_MANIFESTLIST_TRANSNO_ops on MANIFEST_LIST(TRANS_NO varchar_pattern_ops);"
create index IX_MANIFESTLIST_TRANSNO_ops on MANIFEST_LIST(TRANS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_MANIFEST_LIST_BILLORI_ops on MANIFEST_LIST(BILL_NO_ORI varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_MANIFEST_LIST_BILLORI_ops on MANIFEST_LIST(BILL_NO_ORI varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_MANIFEST_LIST_I_E_DATE_ops on MANIFEST_LIST(I_E_DATE,CUSTOMS_CODE varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,I_E_FLAG varchar_pattern_ops);"
create index IX_MANIFEST_LIST_I_E_DATE_ops on MANIFEST_LIST(I_E_DATE,CUSTOMS_CODE varchar_pattern_ops,TRAF_MODE varchar_pattern_ops,I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index IX_MANIFEST_LIST_VOYAGE_NO_ops on MANIFEST_LIST(VOYAGE_NO varchar_pattern_ops,SHIP_ID varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,I_E_DATE);"
create index IX_MANIFEST_LIST_VOYAGE_NO_ops on MANIFEST_LIST(VOYAGE_NO varchar_pattern_ops,SHIP_ID varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,I_E_DATE);
\timing
select now();
\echo "create index IDX_MANIFEST_LIST_RSKINFO_LOG__ops on MANIFEST_LIST_RSKINFO_LOG(RSK_DATE,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_MANIFEST_LIST_RSKINFO_LOG__ops on MANIFEST_LIST_RSKINFO_LOG(RSK_DATE,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_EXFASCICLELIST_MANUALNO1_ops on MNLBAK_EX_FASCICLE_LIST(MANUAL_NO varchar_pattern_ops);"
create index IX_EXFASCICLELIST_MANUALNO1_ops on MNLBAK_EX_FASCICLE_LIST(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_FASCICLEHEAD_MANUALNO1_ops on MNLBAK_FASCICLE_HEAD(MANUAL_NO varchar_pattern_ops);"
create index IX_FASCICLEHEAD_MANUALNO1_ops on MNLBAK_FASCICLE_HEAD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_IMFASCICLELIST_MANUALNO1_ops on MNLBAK_IM_FASCICLE_LIST(MANUAL_NO varchar_pattern_ops);"
create index IX_IMFASCICLELIST_MANUALNO1_ops on MNLBAK_IM_FASCICLE_LIST(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_TRADE_COMPANY_ops on NORSK_COMPANY(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_TRADE_COMPANY_ops on NORSK_COMPANY(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_TRADE_COMPANY_BAK_ops on NORSK_COMPANY_BAK(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_TRADE_COMPANY_BAK_ops on NORSK_COMPANY_BAK(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CUSTOMS_CODE_ops on NORSK_CONDITION(CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CUSTOMS_CODE_ops on NORSK_CONDITION(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CUSTOMS_CODE_BAK_ops on NORSK_CONDITION_BAK(CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CUSTOMS_CODE_BAK_ops on NORSK_CONDITION_BAK(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_TRADE_CUSTOMS_ops on NORSK_TRADE_MODE(TRADE_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_TRADE_CUSTOMS_ops on NORSK_TRADE_MODE(TRADE_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_TRADE_CUSTOMS_BAK_ops on NORSK_TRADE_MODE_BAK(TRADE_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_TRADE_CUSTOMS_BAK_ops on NORSK_TRADE_MODE_BAK(TRADE_MODE varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_ENTRYID_GNO_ops on OCC_EXAM(ENTRY_ID varchar_pattern_ops,G_NO varchar_pattern_ops);"
create index IX_ENTRYID_GNO_ops on OCC_EXAM(ENTRY_ID varchar_pattern_ops,G_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_STF_OTHER_MANUAL_NO_ops on OTHER_STF_RECORD(MANUAL_NO varchar_pattern_ops);"
create index IDX_STF_OTHER_MANUAL_NO_ops on OTHER_STF_RECORD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_STF_OTHER_STF_ID_ops on OTHER_STF_RECORD(STF_ID varchar_pattern_ops);"
create index IDX_STF_OTHER_STF_ID_ops on OTHER_STF_RECORD(STF_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_PAPERLESS_SELF_RELTIME_ops on PAPERLESS_SELFSAVE_CERT(REL_TIME,DECL_PORT varchar_pattern_ops,I_E_FLAG varchar_pattern_ops);"
create index IDX_PAPERLESS_SELF_RELTIME_ops on PAPERLESS_SELFSAVE_CERT(REL_TIME,DECL_PORT varchar_pattern_ops,I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PAYOUT_ENTRY_ID_ops on PAYOUT_REMIT_LIST(ENTRY_ID varchar_pattern_ops);"
create index IX_PAYOUT_ENTRY_ID_ops on PAYOUT_REMIT_LIST(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PESCANCEL_NOTENO_ops on PES_CANCEL(NOTE_NO varchar_pattern_ops);"
create index IX_PESCANCEL_NOTENO_ops on PES_CANCEL(NOTE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_TRN_BIND_PRE_NO_ops on PORT_BIND_REL(PRE_NO varchar_pattern_ops);"
create index IDX_TRN_BIND_PRE_NO_ops on PORT_BIND_REL(PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PRECDLCOMMODITY_RECORDSDATE_ops on PRE_CDL_COMMODITY(RECORDS_DATE,PROC_FLAG varchar_pattern_ops);"
create index IX_PRECDLCOMMODITY_RECORDSDATE_ops on PRE_CDL_COMMODITY(RECORDS_DATE,PROC_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PRECDLCOMMODITY_TRADECO_ops on PRE_CDL_COMMODITY(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IX_PRECDLCOMMODITY_TRADECO_ops on PRE_CDL_COMMODITY(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RECORDS_NO_ops on PRE_CDL_COMMODITY(RECORDS_NO varchar_pattern_ops);"
create index IX_RECORDS_NO_ops on PRE_CDL_COMMODITY(RECORDS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CDLCOMPANYLOG_RECORDSDATE_ops on PRE_CDL_COMPANY(RECORDS_DATE,PROC_FLAG varchar_pattern_ops);"
create index IX_CDLCOMPANYLOG_RECORDSDATE_ops on PRE_CDL_COMPANY(RECORDS_DATE,PROC_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_ID_CODE_P_INDEX_ops on PRE_DECL_REL(DECL_ID_CODE varchar_pattern_ops);"
create index DECL_ID_CODE_P_INDEX_ops on PRE_DECL_REL(DECL_ID_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index DECL_TRADE_P_INDEX_ops on PRE_DECL_REL(TRADE_CO varchar_pattern_ops);"
create index DECL_TRADE_P_INDEX_ops on PRE_DECL_REL(TRADE_CO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_PRICELIBRARY_CODETS_ops on PRICE_LIBRARY(CODE_TS varchar_pattern_ops);"
create index IX_PRICELIBRARY_CODETS_ops on PRICE_LIBRARY(CODE_TS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PRICE_LIBRARY_ops on PRICE_LIBRARY(I_E_FLAG varchar_pattern_ops,REC_TYPE varchar_pattern_ops,CREATE_DATE,CODE_TS varchar_pattern_ops);"
create index IX_PRICE_LIBRARY_ops on PRICE_LIBRARY(I_E_FLAG varchar_pattern_ops,REC_TYPE varchar_pattern_ops,CREATE_DATE,CODE_TS varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_PRICELIBRARYENTRY_CODETS_ops on PRICE_LIBRARY_ENTRY(CODE_TS varchar_pattern_ops);"
create index IX_PRICELIBRARYENTRY_CODETS_ops on PRICE_LIBRARY_ENTRY(CODE_TS varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_PRICELIBRARYMAN_CODETS_ops on PRICE_LIBRARY_MAN(CODE_TS varchar_pattern_ops);"
create index IX_PRICELIBRARYMAN_CODETS_ops on PRICE_LIBRARY_MAN(CODE_TS varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IX_PRICELIBRARYRISK_CODETS_ops on PRICE_LIBRARY_RISK(CODE_TS varchar_pattern_ops);"
create index IX_PRICELIBRARYRISK_CODETS_ops on PRICE_LIBRARY_RISK(CODE_TS varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PROJECTHEAD_CUSTEXE_ops on PROJECT_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);"
create index IX_PROJECTHEAD_CUSTEXE_ops on PROJECT_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PROJECTHEAD_PREPROJECTID_ops on PROJECT_HEAD(PRE_PROJECT_ID varchar_pattern_ops);"
create index IX_PROJECTHEAD_PREPROJECTID_ops on PROJECT_HEAD(PRE_PROJECT_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RAMHEAD_CODENAME_ops on RAM_HEAD(OWNER_CODE varchar_pattern_ops,OWNER_NAME varchar_pattern_ops);"
create index IX_RAMHEAD_CODENAME_ops on RAM_HEAD(OWNER_CODE varchar_pattern_ops,OWNER_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RAMHEAD_CUSTEXE_ops on RAM_HEAD(MASTER_CUSTOMS varchar_pattern_ops,RAM_TYPE varchar_pattern_ops,EXE_MARK varchar_pattern_ops);"
create index IX_RAMHEAD_CUSTEXE_ops on RAM_HEAD(MASTER_CUSTOMS varchar_pattern_ops,RAM_TYPE varchar_pattern_ops,EXE_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RAMHEAD_PRERAMID_ops on RAM_HEAD(PRE_RAM_ID varchar_pattern_ops);"
create index IX_RAMHEAD_PRERAMID_ops on RAM_HEAD(PRE_RAM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RAMLIST_CUTID_ops on RAM_LIST(CUT_ID varchar_pattern_ops);"
create index IX_RAMLIST_CUTID_ops on RAM_LIST(CUT_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RGCOPINFO_COP_ops on RAM_RG_COPINFO(COP_CODE varchar_pattern_ops,COP_NAME varchar_pattern_ops);"
create index IX_RGCOPINFO_COP_ops on RAM_RG_COPINFO(COP_CODE varchar_pattern_ops,COP_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RGHEAD_CUSTEXE_ops on RAM_RG_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);"
create index IX_RGHEAD_CUSTEXE_ops on RAM_RG_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RGHEAD_PRERAMID_ops on RAM_RG_HEAD(PRE_RAM_ID varchar_pattern_ops);"
create index IX_RGHEAD_PRERAMID_ops on RAM_RG_HEAD(PRE_RAM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RNHEAD_CODENAME_ops on RAM_RN_INFO(COP_CODE varchar_pattern_ops,COP_NAME varchar_pattern_ops);"
create index IX_RNHEAD_CODENAME_ops on RAM_RN_INFO(COP_CODE varchar_pattern_ops,COP_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RNHEAD_CUSTEXE_ops on RAM_RN_INFO(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);"
create index IX_RNHEAD_CUSTEXE_ops on RAM_RN_INFO(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RNHEAD_PRERAMID_ops on RAM_RN_INFO(PRE_RAM_ID varchar_pattern_ops);"
create index IX_RNHEAD_PRERAMID_ops on RAM_RN_INFO(PRE_RAM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RYCOMMUNICATION_RECCUSTOMS_ops on RAM_RY_COMMUNICATION(REC_CUSTOMS_CODE varchar_pattern_ops);"
create index IX_RYCOMMUNICATION_RECCUSTOMS_ops on RAM_RY_COMMUNICATION(REC_CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RAMSTATUS_OWNER_ops on RAM_STATUS(OWNER_CODE varchar_pattern_ops,OWNER_NAME varchar_pattern_ops);"
create index IX_RAMSTATUS_OWNER_ops on RAM_STATUS(OWNER_CODE varchar_pattern_ops,OWNER_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IX_REDENTRYHEAD_MANUALNO_ops on RED_ENTRY_HEAD(MANUAL_NO varchar_pattern_ops);"
create index IX_REDENTRYHEAD_MANUALNO_ops on RED_ENTRY_HEAD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_REDHEAD_CUSTEXE_ops on RED_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);"
create index IX_REDHEAD_CUSTEXE_ops on RED_HEAD(MASTER_CUSTOMS varchar_pattern_ops,EXE_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index IX_REDHEAD_PRECUTID_ops on RED_HEAD(PRE_CUT_ID varchar_pattern_ops);"
create index IX_REDHEAD_PRECUTID_ops on RED_HEAD(PRE_CUT_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_REDHEAD_PROJECTID_ops on RED_HEAD(PROJECT_ID varchar_pattern_ops);"
create index IX_REDHEAD_PROJECTID_ops on RED_HEAD(PROJECT_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_REL_ALC_WORK_STEP_ID_ops on REL_ALC_WORK(STEP_ID varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,TRAF_NAME varchar_pattern_ops);"
create index IX_REL_ALC_WORK_STEP_ID_ops on REL_ALC_WORK(STEP_ID varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops,VOYAGE_NO varchar_pattern_ops,TRAF_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_ENTRY_ID_FEEDBACK_LIST_ops on RSK_CASE_FEEDBACK_LIST(ENTRY_ID varchar_pattern_ops,CASE_ID varchar_pattern_ops);"
create index IDX_ENTRY_ID_FEEDBACK_LIST_ops on RSK_CASE_FEEDBACK_LIST(ENTRY_ID varchar_pattern_ops,CASE_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_ENTRY_ID_LIST_CERT_ops on RSK_CASE_FEEDBACK_LIST_CERT(ENTRY_ID varchar_pattern_ops,CASE_ID varchar_pattern_ops);"
create index IDX_ENTRY_ID_LIST_CERT_ops on RSK_CASE_FEEDBACK_LIST_CERT(ENTRY_ID varchar_pattern_ops,CASE_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_ENTRY_ID_G_NO_ops on RSK_CASE_TRANSFER_G_NO(ENTRY_ID varchar_pattern_ops,CASE_ID varchar_pattern_ops);"
create index IDX_ENTRY_ID_G_NO_ops on RSK_CASE_TRANSFER_G_NO(ENTRY_ID varchar_pattern_ops,CASE_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_ENTRY_ID_TRANSFER_LIST_ops on RSK_CASE_TRANSFER_LIST(ENTRY_ID varchar_pattern_ops,CASE_ID varchar_pattern_ops);"
create index IDX_ENTRY_ID_TRANSFER_LIST_ops on RSK_CASE_TRANSFER_LIST(ENTRY_ID varchar_pattern_ops,CASE_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CODE_CUSTOMS_ops on RSK_CODE_TS(CODE_TS varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CODE_CUSTOMS_ops on RSK_CODE_TS(CODE_TS varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CODE_CUSTOMS_BAK_ops on RSK_CODE_TS_BAK(CODE_TS varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CODE_CUSTOMS_BAK_ops on RSK_CODE_TS_BAK(CODE_TS varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CORP_CUSTOMS_ops on RSK_CONDITION(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CORP_CUSTOMS_ops on RSK_CONDITION(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CORP_CUSTOMS_BAK_ops on RSK_CONDITION_BAK(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CORP_CUSTOMS_BAK_ops on RSK_CONDITION_BAK(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CONTA_CUSTOMS_ops on RSK_CONTA_CAPACITY(CONTA_MODEL varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CONTA_CUSTOMS_ops on RSK_CONTA_CAPACITY(CONTA_MODEL varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CONTA_CUSTOMS_BAK_ops on RSK_CONTA_CAPACITY_BAK(CONTA_MODEL varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CONTA_CUSTOMS_BAK_ops on RSK_CONTA_CAPACITY_BAK(CONTA_MODEL varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IDX_RSK_EXAM_HEAD_FORMID_RSKNO_ops on RSK_EXAM_HEAD_REL(FORM_ID varchar_pattern_ops,RSK_NO varchar_pattern_ops);"
create index IDX_RSK_EXAM_HEAD_FORMID_RSKNO_ops on RSK_EXAM_HEAD_REL(FORM_ID varchar_pattern_ops,RSK_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_RSK_EXAM_HEAD_FORM_ID_ops on RSK_EXAM_HEAD_REL(FORM_ID varchar_pattern_ops);"
create index IDX_RSK_EXAM_HEAD_FORM_ID_ops on RSK_EXAM_HEAD_REL(FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_RSK_EXAM_HEAD_RSKNO_ops on RSK_EXAM_HEAD_REL(RSK_NO varchar_pattern_ops);"
create index IDX_RSK_EXAM_HEAD_RSKNO_ops on RSK_EXAM_HEAD_REL(RSK_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_RSKEXAMOPLOG_FORM_ID_ops on RSK_EXAM_OP_LOG(FORM_ID varchar_pattern_ops);"
create index IX_RSKEXAMOPLOG_FORM_ID_ops on RSK_EXAM_OP_LOG(FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CODE_TS_ops on RSK_FAKE_CODE_TS(CODE_TS varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CODE_TS_ops on RSK_FAKE_CODE_TS(CODE_TS varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_CODE_TS_BAK_ops on RSK_FAKE_CODE_TS_BAK(CODE_TS varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_CODE_TS_BAK_ops on RSK_FAKE_CODE_TS_BAK(CODE_TS varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_RSK_FIT_LOG_FORM_ID_ops on RSK_FIT_LOG_REL(FORM_ID varchar_pattern_ops);"
create index IDX_RSK_FIT_LOG_FORM_ID_ops on RSK_FIT_LOG_REL(FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_RSK_INSTR_ATTR_CUS_STAT_ops on RSK_INSTR_ATTR_REL(RSK_CUSTOMS varchar_pattern_ops,RSK_INSTR_STAT varchar_pattern_ops);"
create index IDX_RSK_INSTR_ATTR_CUS_STAT_ops on RSK_INSTR_ATTR_REL(RSK_CUSTOMS varchar_pattern_ops,RSK_INSTR_STAT varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_RSK_INSTR_ATTR_OPID_ops on RSK_INSTR_ATTR_REL(IN_OP_ID varchar_pattern_ops);"
create index IDX_RSK_INSTR_ATTR_OPID_ops on RSK_INSTR_ATTR_REL(IN_OP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_RSK_RESULT_EXAM_REC_ID_ops on RSK_RESULT_REL(EXAM_REC_ID varchar_pattern_ops);"
create index IDX_RSK_RESULT_EXAM_REC_ID_ops on RSK_RESULT_REL(EXAM_REC_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_RSK_RESULT_FORM_ID_ops on RSK_RESULT_REL(FORM_ID varchar_pattern_ops);"
create index IDX_RSK_RESULT_FORM_ID_ops on RSK_RESULT_REL(FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_TRADE_CO_ops on RSK_TRADE_CO(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_TRADE_CO_ops on RSK_TRADE_CO(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_CTS_TRADE_CO_BAK_ops on RSK_TRADE_CO_BAK(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_CTS_TRADE_CO_BAK_ops on RSK_TRADE_CO_BAK(TRADE_CO varchar_pattern_ops,CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_RSK_WORKFLOW_CUSTOMSCODE_ops on RSK_WORKFLOW(INPUT_DATE,CHK_CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_RSK_WORKFLOW_CUSTOMSCODE_ops on RSK_WORKFLOW(INPUT_DATE,CHK_CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_SHIP_TONNAGE_DUTYFORM_ops on SHIP_TONNAGE(DUTYFORM_NO varchar_pattern_ops);"
create index IX_SHIP_TONNAGE_DUTYFORM_ops on SHIP_TONNAGE(DUTYFORM_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_STF_RECORD_MANUAL_NO_ops on STF_RECORD(MANUAL_NO varchar_pattern_ops);"
create index IDX_STF_RECORD_MANUAL_NO_ops on STF_RECORD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_STF_RECORD_STF_ID_ops on STF_RECORD(STF_ID varchar_pattern_ops);"
create index IDX_STF_RECORD_STF_ID_ops on STF_RECORD(STF_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_STLDATAHEAD_DESTINATIONCUS_ops on STL_DATA_HEAD(DESTINATION_CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_STLDATAHEAD_DESTINATIONCUS_ops on STL_DATA_HEAD(DESTINATION_CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_STLDATAHEAD_ENTRYID_ops on STL_DATA_HEAD(ENTRY_ID varchar_pattern_ops);"
create index IDX_STLDATAHEAD_ENTRYID_ops on STL_DATA_HEAD(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_STLREQUESTCHK_ENTRYID_ops on STL_REQUEST_CHK(ENTRY_ID varchar_pattern_ops);"
create index IDX_STLREQUESTCHK_ENTRYID_ops on STL_REQUEST_CHK(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_TCSDETAILHEAD_MSGID_ops on TCS_DETAIL_HEAD(MSG_ID varchar_pattern_ops);"
create index IX_TCSDETAILHEAD_MSGID_ops on TCS_DETAIL_HEAD(MSG_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_TCSDETAILHEAD_RECEIVE_ops on TCS_DETAIL_HEAD(RECEIVE_DATE varchar_pattern_ops,ACCOUNT_ORG_CODE varchar_pattern_ops);"
create index IX_TCSDETAILHEAD_RECEIVE_ops on TCS_DETAIL_HEAD(RECEIVE_DATE varchar_pattern_ops,ACCOUNT_ORG_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_TCSERRORLOG_BIZIDCREATETIME_ops on TCS_ERROR_LOG(BIZ_ID varchar_pattern_ops,CREATE_TIME);"
create index IX_TCSERRORLOG_BIZIDCREATETIME_ops on TCS_ERROR_LOG(BIZ_ID varchar_pattern_ops,CREATE_TIME);
\timing
select now();
\echo "create index IX_TCSSENDLOG_ENTRYID_ops on TCS_SEND_LOG(ENTRY_ID varchar_pattern_ops,TAX_ID varchar_pattern_ops);"
create index IX_TCSSENDLOG_ENTRYID_ops on TCS_SEND_LOG(ENTRY_ID varchar_pattern_ops,TAX_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_TCSSENDLOG_SENDDATE_ops on TCS_SEND_LOG(SEND_DATE,ACCOUNT_ORG_CODE varchar_pattern_ops);"
create index IX_TCSSENDLOG_SENDDATE_ops on TCS_SEND_LOG(SEND_DATE,ACCOUNT_ORG_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_TEPCOMPANY_TRADECODE_ops on TEP_COMPANY(TRADE_CODE varchar_pattern_ops);"
create index IX_TEPCOMPANY_TRADECODE_ops on TEP_COMPANY(TRADE_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_TEPPAYLOG_ENTRYID_TAXID_ops on TEP_PAY_LOG(ENTRY_ID varchar_pattern_ops,TAX_ID varchar_pattern_ops);"
create index IX_TEPPAYLOG_ENTRYID_TAXID_ops on TEP_PAY_LOG(ENTRY_ID varchar_pattern_ops,TAX_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_TEPPAYLOG_GUAID_ops on TEP_PAY_LOG(GUA_ID varchar_pattern_ops);"
create index IX_TEPPAYLOG_GUAID_ops on TEP_PAY_LOG(GUA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IX_TEPPAYLOG_PRINT_ops on TEP_PAY_LOG(CUSTOMS_CODE varchar_pattern_ops,TAX_TYPE varchar_pattern_ops,PAYER_BANK_CODE varchar_pattern_ops,REC_DATE,BATCH_PRINT_DATE);"
create index IX_TEPPAYLOG_PRINT_ops on TEP_PAY_LOG(CUSTOMS_CODE varchar_pattern_ops,TAX_TYPE varchar_pattern_ops,PAYER_BANK_CODE varchar_pattern_ops,REC_DATE,BATCH_PRINT_DATE);
\timing
\timing
select now();
\echo "create index IX_TEPRECLOG_RECDATE_RESULTNO_ops on TEP_REC_LOG(REC_DATE,RESULT_NO varchar_pattern_ops);"
create index IX_TEPRECLOG_RECDATE_RESULTNO_ops on TEP_REC_LOG(REC_DATE,RESULT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IX_CUSTOMSCODE_ops on TEP_VOUCHER_REC_LIST(CUSTOMS_CODE varchar_pattern_ops);"
create index IX_CUSTOMSCODE_ops on TEP_VOUCHER_REC_LIST(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PAYEEBANKACCOUNT_ops on TEP_VOUCHER_REC_LIST_DETAIL(PAYEE_BANK_ACCOUNT varchar_pattern_ops);"
create index IX_PAYEEBANKACCOUNT_ops on TEP_VOUCHER_REC_LIST_DETAIL(PAYEE_BANK_ACCOUNT varchar_pattern_ops);
\timing
select now();
\echo "create index IX_PAYEEBRANCHCODE_ops on TEP_VOUCHER_REC_LIST_DETAIL(PAYEE_BRANCH_CODE varchar_pattern_ops);"
create index IX_PAYEEBRANCHCODE_ops on TEP_VOUCHER_REC_LIST_DETAIL(PAYEE_BRANCH_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_TRN_COP_REL_ops on TRN_COP_REL(CO_CUSTOMS_NO varchar_pattern_ops);"
create index IDX_TRN_COP_REL_ops on TRN_COP_REL(CO_CUSTOMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_TRN_COP_REL_PORT_ops on TRN_COP_REL(MAIN_PORT varchar_pattern_ops);"
create index IDX_TRN_COP_REL_PORT_ops on TRN_COP_REL(MAIN_PORT varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_TRN_DR_VEL_IDNO_ops on TRN_DR_REL(DR_IDCARD_NO varchar_pattern_ops);"
create index IDX_TRN_DR_VEL_IDNO_ops on TRN_DR_REL(DR_IDCARD_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_ESEAL_CO_REG_NO_ops on TRN_ESEAL_REL(CO_REG_NO varchar_pattern_ops);"
create index IDX_ESEAL_CO_REG_NO_ops on TRN_ESEAL_REL(CO_REG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_ESEAL_CUSTOMS_CODE_ops on TRN_ESEAL_REL(CUSTOMS_CODE varchar_pattern_ops);"
create index IDX_ESEAL_CUSTOMS_CODE_ops on TRN_ESEAL_REL(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_ESEAL_REL_CUSTOMS_ops on TRN_ESEAL_REL(VE_CUSTOMS_NO varchar_pattern_ops);"
create index IDX_ESEAL_REL_CUSTOMS_ops on TRN_ESEAL_REL(VE_CUSTOMS_NO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index IDX_TOP_ENTRY_ID_ops on TRN_POP_LIST(ENTRY_ID varchar_pattern_ops);"
create index IDX_TOP_ENTRY_ID_ops on TRN_POP_LIST(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_TRN_VE_MOTOR_NO_ops on TRN_VE_REL(VE_MOTOR_NO varchar_pattern_ops);"
create index IDX_TRN_VE_MOTOR_NO_ops on TRN_VE_REL(VE_MOTOR_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_TRN_VE_REL_ops on TRN_VE_REL(VE_NAME varchar_pattern_ops);"
create index IDX_TRN_VE_REL_ops on TRN_VE_REL(VE_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_TRN_VE_REL_EC_ops on TRN_VE_REL(CAR_EC_NO varchar_pattern_ops);"
create index IDX_TRN_VE_REL_EC_ops on TRN_VE_REL(CAR_EC_NO varchar_pattern_ops);
\timing
select now();
\echo "create index IDX_TRN_VE_REL_PORT_ops on TRN_VE_REL(MAIN_PORT varchar_pattern_ops);"
create index IDX_TRN_VE_REL_PORT_ops on TRN_VE_REL(MAIN_PORT varchar_pattern_ops);
\timing
select now();
\echo "create index TRADE_CO_INDEX_ops on YD_DECLARE_REL(TRADE_CO varchar_pattern_ops);"
create index TRADE_CO_INDEX_ops on YD_DECLARE_REL(TRADE_CO varchar_pattern_ops);

