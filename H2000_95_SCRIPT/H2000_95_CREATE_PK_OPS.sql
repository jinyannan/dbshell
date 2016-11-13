\timing
select now();
\echo "create index idx_pk_account_ops on ACCOUNT(MANUAL_NO varchar_pattern_ops, ID_STAT varchar_pattern_ops);"
create index idx_pk_account_ops on ACCOUNT(MANUAL_NO varchar_pattern_ops, ID_STAT varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_agreement_goods_list_ops on AGREEMENT_GOODS_LIST(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_agreement_goods_list_ops on AGREEMENT_GOODS_LIST(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ams_modi_log_ops on AMS_MODI_LOG(EMS_NO varchar_pattern_ops, OP_TIME, MODI_TYPE, ITEM_NAME varchar_pattern_ops);"
create index idx_pk_ams_modi_log_ops on AMS_MODI_LOG(EMS_NO varchar_pattern_ops, OP_TIME, MODI_TYPE, ITEM_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_amslist_body_ops on AMSLIST_BODY(LIST_ID varchar_pattern_ops, G_NO);"
create index idx_pk_amslist_body_ops on AMSLIST_BODY(LIST_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_amslist_head_ops on AMSLIST_HEAD(LIST_ID varchar_pattern_ops);"
create index idx_pk_amslist_head_ops on AMSLIST_HEAD(LIST_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_appl_close_ops on APPL_CLOSE(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_appl_close_ops on APPL_CLOSE(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_appl_close_consume_ops on APPL_CLOSE_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);"
create index idx_pk_appl_close_consume_ops on APPL_CLOSE_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);
\timing
select now();
\echo "create index idx_pk_apply_head_ops on APPLY_HEAD(APPL_NO varchar_pattern_ops);"
create index idx_pk_apply_head_ops on APPLY_HEAD(APPL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_apply_list_ops on APPLY_LIST(APPL_NO varchar_pattern_ops, G_NO);"
create index idx_pk_apply_list_ops on APPLY_LIST(APPL_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_arrival_info_head_ops on ARRIVAL_INFO_HEAD(VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops);"
create index idx_pk_arrival_info_head_ops on ARRIVAL_INFO_HEAD(VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_arrival_info_list_ops on ARRIVAL_INFO_LIST(BILL_NO varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops);"
create index idx_pk_arrival_info_list_ops on ARRIVAL_INFO_LIST(BILL_NO varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bak_bws_exam_cert_list_ops on BAK_BWS_EXAM_CERT_LIST(BWS_EXAM_NO varchar_pattern_ops, G_NO);"
create index idx_pk_bak_bws_exam_cert_list_ops on BAK_BWS_EXAM_CERT_LIST(BWS_EXAM_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bak_bws_exam_good_list_ops on BAK_BWS_EXAM_GOOD_LIST(BWS_EXAM_NO varchar_pattern_ops, G_NO);"
create index idx_pk_bak_bws_exam_good_list_ops on BAK_BWS_EXAM_GOOD_LIST(BWS_EXAM_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bak_bws_exam_head_ops on BAK_BWS_EXAM_HEAD(BWS_EXAM_NO varchar_pattern_ops);"
create index idx_pk_bak_bws_exam_head_ops on BAK_BWS_EXAM_HEAD(BWS_EXAM_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bak_consume_ops on BAK_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);"
create index idx_pk_bak_consume_ops on BAK_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);
\timing
select now();
\echo "create index idx_pk_bak_contract_head_ops on BAK_CONTRACT_HEAD(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_bak_contract_head_ops on BAK_CONTRACT_HEAD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bak_dcg_bill_head_ops on BAK_DCG_BILL_HEAD(BILL_NO varchar_pattern_ops);"
create index idx_pk_bak_dcg_bill_head_ops on BAK_DCG_BILL_HEAD(BILL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bak_dcg_bill_list_ops on BAK_DCG_BILL_LIST(BILL_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_bak_dcg_bill_list_ops on BAK_DCG_BILL_LIST(BILL_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bak_dcg_deduct_ops on BAK_DCG_DEDUCT(ENTRY_ID varchar_pattern_ops, DCG_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_bak_dcg_deduct_ops on BAK_DCG_DEDUCT(ENTRY_ID varchar_pattern_ops, DCG_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_bak_dcg_deduct_log_ops on BAK_DCG_DEDUCT_LOG(ENTRY_ID varchar_pattern_ops, DCG_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);"
create index idx_pk_bak_dcg_deduct_log_ops on BAK_DCG_DEDUCT_LOG(ENTRY_ID varchar_pattern_ops, DCG_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bak_dcg_head_ops on BAK_DCG_HEAD(DCG_NO varchar_pattern_ops);"
create index idx_pk_bak_dcg_head_ops on BAK_DCG_HEAD(DCG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bak_dcg_list_ops on BAK_DCG_LIST(DCG_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_bak_dcg_list_ops on BAK_DCG_LIST(DCG_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bak_ems_appr_head_ops on BAK_EMS_APPR_HEAD(APPR_NO varchar_pattern_ops, RECEIVE_TIMES);"
create index idx_pk_bak_ems_appr_head_ops on BAK_EMS_APPR_HEAD(APPR_NO varchar_pattern_ops, RECEIVE_TIMES);
\timing
select now();
\echo "create index idx_pk_bak_ems_appr_list_ops on BAK_EMS_APPR_LIST(APPR_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO, RECEIVE_TIMES);"
create index idx_pk_bak_ems_appr_list_ops on BAK_EMS_APPR_LIST(APPR_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO, RECEIVE_TIMES);
\timing
select now();
\echo "create index idx_pk_bak_ems_consume_ops on BAK_EMS_CONSUME(EMS_NO varchar_pattern_ops, EXG_NO, EXG_VERSION varchar_pattern_ops, IMG_NO, MODIFY_TIMES);"
create index idx_pk_bak_ems_consume_ops on BAK_EMS_CONSUME(EMS_NO varchar_pattern_ops, EXG_NO, EXG_VERSION varchar_pattern_ops, IMG_NO, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_bak_ems_deduct_clr_ops on BAK_EMS_DEDUCT_CLR(EMS_NO varchar_pattern_ops, IMG_NO, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_bak_ems_deduct_clr_ops on BAK_EMS_DEDUCT_CLR(EMS_NO varchar_pattern_ops, IMG_NO, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_bak_ems_head_ops on BAK_EMS_HEAD(EMS_NO varchar_pattern_ops, MODIFY_TIMES);"
create index idx_pk_bak_ems_head_ops on BAK_EMS_HEAD(EMS_NO varchar_pattern_ops, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_bak_ems_list_ops on BAK_EMS_LIST(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO, MODIFY_TIMES);"
create index idx_pk_bak_ems_list_ops on BAK_EMS_LIST(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_bak_ex_contract_list_ops on BAK_EX_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_bak_ex_contract_list_ops on BAK_EX_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_bak_ex_fascicle_list_ops on BAK_EX_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_bak_ex_fascicle_list_ops on BAK_EX_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_bak_fascicle_head_ops on BAK_FASCICLE_HEAD(FASCICLE_NO varchar_pattern_ops);"
create index idx_pk_bak_fascicle_head_ops on BAK_FASCICLE_HEAD(FASCICLE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bak_im_contract_list_ops on BAK_IM_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_bak_im_contract_list_ops on BAK_IM_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_bak_im_fascicle_list_ops on BAK_IM_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_bak_im_fascicle_list_ops on BAK_IM_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_bank_account_ops on BANK_ACCOUNT(MANUAL_NO varchar_pattern_ops, ID_STAT varchar_pattern_ops, RECEIVE_DATE);"
create index idx_pk_bank_account_ops on BANK_ACCOUNT(MANUAL_NO varchar_pattern_ops, ID_STAT varchar_pattern_ops, RECEIVE_DATE);
\timing
select now();
\echo "create index idx_pk_bck_cop_head_ops on BCK_COP_HEAD(TRADE_CODE varchar_pattern_ops);"
create index idx_pk_bck_cop_head_ops on BCK_COP_HEAD(TRADE_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_cop_list_ops on BCK_COP_LIST(TRADE_CODE varchar_pattern_ops, RISK_NO, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_bck_cop_list_ops on BCK_COP_LIST(TRADE_CODE varchar_pattern_ops, RISK_NO, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_cop_list_temp_ops on BCK_COP_LIST_TEMP(TRADE_CO varchar_pattern_ops, RISK_NO, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_bck_cop_list_temp_ops on BCK_COP_LIST_TEMP(TRADE_CO varchar_pattern_ops, RISK_NO, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_cop_para_head_ops on BCK_COP_PARA_HEAD(RISK_NO, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_bck_cop_para_head_ops on BCK_COP_PARA_HEAD(RISK_NO, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_cop_para_list_ops on BCK_COP_PARA_LIST(RISK_NO, RISK_VALUE, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_bck_cop_para_list_ops on BCK_COP_PARA_LIST(RISK_NO, RISK_VALUE, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_executor_ops on BCK_EXECUTOR(BCK_NO varchar_pattern_ops, EXECUTOR varchar_pattern_ops);"
create index idx_pk_bck_executor_ops on BCK_EXECUTOR(BCK_NO varchar_pattern_ops, EXECUTOR varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_handover_ops on BCK_HANDOVER(HANDOVER_NO varchar_pattern_ops);"
create index idx_pk_bck_handover_ops on BCK_HANDOVER(HANDOVER_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_handover_type_ops on BCK_HANDOVER_TYPE(HANDOVER_TYPE varchar_pattern_ops, ID);"
create index idx_pk_bck_handover_type_ops on BCK_HANDOVER_TYPE(HANDOVER_TYPE varchar_pattern_ops, ID);
\timing
select now();
\echo "create index idx_pk_bck_head_ops on BCK_HEAD(BCK_NO varchar_pattern_ops);"
create index idx_pk_bck_head_ops on BCK_HEAD(BCK_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_seq_ops on BCK_SEQ(BCK_KEY varchar_pattern_ops);"
create index idx_pk_bck_seq_ops on BCK_SEQ(BCK_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_stock_head_ops on BCK_STOCK_HEAD(SEQ_NO varchar_pattern_ops);"
create index idx_pk_bck_stock_head_ops on BCK_STOCK_HEAD(SEQ_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bck_stock_list_ops on BCK_STOCK_LIST(SEQ_NO varchar_pattern_ops, LIST_NO);"
create index idx_pk_bck_stock_list_ops on BCK_STOCK_LIST(SEQ_NO varchar_pattern_ops, LIST_NO);
\timing
select now();
\echo "create index idx_pk_bck_workflow_ops on BCK_WORKFLOW(BCK_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, OPER_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_bck_workflow_ops on BCK_WORKFLOW(BCK_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, OPER_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_bti_data_conta_list_ops on BTI_DATA_CONTA_LIST(UCR_CODE varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);"
create index idx_pk_bti_data_conta_list_ops on BTI_DATA_CONTA_LIST(UCR_CODE varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bti_data_head_ops on BTI_DATA_HEAD(UCR_CODE varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_bti_data_head_ops on BTI_DATA_HEAD(UCR_CODE varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_bti_data_ts_list_ops on BTI_DATA_TS_LIST(UCR_CODE varchar_pattern_ops, G_NO);"
create index idx_pk_bti_data_ts_list_ops on BTI_DATA_TS_LIST(UCR_CODE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_audit_head_ops on BWS_AUDIT_HEAD(AUDIT_NO varchar_pattern_ops);"
create index idx_pk_bws_audit_head_ops on BWS_AUDIT_HEAD(AUDIT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_audit_list_ops on BWS_AUDIT_LIST(AUDIT_NO varchar_pattern_ops, G_NO);"
create index idx_pk_bws_audit_list_ops on BWS_AUDIT_LIST(AUDIT_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_dcr_bill_list_ops on BWS_DCR_BILL_LIST(BWS_NO varchar_pattern_ops, DCR_TIMES, G_TYPE varchar_pattern_ops, G_NO varchar_pattern_ops);"
create index idx_pk_bws_dcr_bill_list_ops on BWS_DCR_BILL_LIST(BWS_NO varchar_pattern_ops, DCR_TIMES, G_TYPE varchar_pattern_ops, G_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_dcr_head_ops on BWS_DCR_HEAD(BWS_NO varchar_pattern_ops, DCR_TIMES, DCR_TYPE varchar_pattern_ops);"
create index idx_pk_bws_dcr_head_ops on BWS_DCR_HEAD(BWS_NO varchar_pattern_ops, DCR_TIMES, DCR_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_dcr_list_ops on BWS_DCR_LIST(BWS_NO varchar_pattern_ops, DCR_TIMES, G_NO);"
create index idx_pk_bws_dcr_list_ops on BWS_DCR_LIST(BWS_NO varchar_pattern_ops, DCR_TIMES, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_deduct_ops on BWS_DEDUCT(BWS_ID varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_bws_deduct_ops on BWS_DEDUCT(BWS_ID varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_bws_deduct_log_ops on BWS_DEDUCT_LOG(BWS_ID varchar_pattern_ops, BWS_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);"
create index idx_pk_bws_deduct_log_ops on BWS_DEDUCT_LOG(BWS_ID varchar_pattern_ops, BWS_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_exam_cert_list_ops on BWS_EXAM_CERT_LIST(BWS_EXAM_NO varchar_pattern_ops, G_NO);"
create index idx_pk_bws_exam_cert_list_ops on BWS_EXAM_CERT_LIST(BWS_EXAM_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_exam_good_list_ops on BWS_EXAM_GOOD_LIST(BWS_EXAM_NO varchar_pattern_ops, G_NO);"
create index idx_pk_bws_exam_good_list_ops on BWS_EXAM_GOOD_LIST(BWS_EXAM_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_exam_head_ops on BWS_EXAM_HEAD(BWS_EXAM_NO varchar_pattern_ops);"
create index idx_pk_bws_exam_head_ops on BWS_EXAM_HEAD(BWS_EXAM_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_exam_passcert_ops on BWS_EXAM_PASSCERT(CERT_NO varchar_pattern_ops);"
create index idx_pk_bws_exam_passcert_ops on BWS_EXAM_PASSCERT(CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_form_head_ops on BWS_FORM_HEAD(FORM_ID varchar_pattern_ops);"
create index idx_pk_bws_form_head_ops on BWS_FORM_HEAD(FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_form_list_ops on BWS_FORM_LIST(FORM_ID varchar_pattern_ops, G_NO);"
create index idx_pk_bws_form_list_ops on BWS_FORM_LIST(FORM_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_gb_list_ops on BWS_GB_LIST(BWS_NO varchar_pattern_ops, G_NO);"
create index idx_pk_bws_gb_list_ops on BWS_GB_LIST(BWS_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_head_ops on BWS_HEAD(BWS_NO varchar_pattern_ops);"
create index idx_pk_bws_head_ops on BWS_HEAD(BWS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_list_ops on BWS_LIST(BWS_NO varchar_pattern_ops, G_NO);"
create index idx_pk_bws_list_ops on BWS_LIST(BWS_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_manifest_head_ops on BWS_MANIFEST_HEAD(BWS_MANIFEST_NO varchar_pattern_ops);"
create index idx_pk_bws_manifest_head_ops on BWS_MANIFEST_HEAD(BWS_MANIFEST_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_manifest_list_ops on BWS_MANIFEST_LIST(BWS_MANIFEST_NO varchar_pattern_ops, G_NO);"
create index idx_pk_bws_manifest_list_ops on BWS_MANIFEST_LIST(BWS_MANIFEST_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_bws_seq_ops on BWS_SEQ(BWS_KEY varchar_pattern_ops);"
create index idx_pk_bws_seq_ops on BWS_SEQ(BWS_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_var_ops on BWS_VAR(VAR_TYPE varchar_pattern_ops, VAR_ID varchar_pattern_ops, VAR_SUB_ID varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_bws_var_ops on BWS_VAR(VAR_TYPE varchar_pattern_ops, VAR_ID varchar_pattern_ops, VAR_SUB_ID varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_bws_workflow_ops on BWS_WORKFLOW(BWS_ID varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_bws_workflow_ops on BWS_WORKFLOW(BWS_ID varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_ccts_error_log_ops on CCTS_ERROR_LOG(SEQUENCE_NO varchar_pattern_ops);"
create index idx_pk_ccts_error_log_ops on CCTS_ERROR_LOG(SEQUENCE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ccts_online_result_ops on CCTS_ONLINE_RESULT(SEQUENCE_NO varchar_pattern_ops);"
create index idx_pk_ccts_online_result_ops on CCTS_ONLINE_RESULT(SEQUENCE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ccts_online_result_bak_ops on CCTS_ONLINE_RESULT_BAK(SEQUENCE_NO varchar_pattern_ops);"
create index idx_pk_ccts_online_result_bak_ops on CCTS_ONLINE_RESULT_BAK(SEQUENCE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ccts_performance_ops on CCTS_PERFORMANCE(SEQUENCE_NO varchar_pattern_ops);"
create index idx_pk_ccts_performance_ops on CCTS_PERFORMANCE(SEQUENCE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ccts_rsk_result_ops on CCTS_RSK_RESULT(CCTS_CODE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_ccts_rsk_result_ops on CCTS_RSK_RESULT(CCTS_CODE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ccts_rsk_result_bak_ops on CCTS_RSK_RESULT_BAK(CCTS_CODE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_ccts_rsk_result_bak_ops on CCTS_RSK_RESULT_BAK(CCTS_CODE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_cdl_certificate_ops on CDL_CERTIFICATE(LIST_NO varchar_pattern_ops, DOCU_CODE varchar_pattern_ops, CERT_CODE varchar_pattern_ops);"
create index idx_pk_cdl_certificate_ops on CDL_CERTIFICATE(LIST_NO varchar_pattern_ops, DOCU_CODE varchar_pattern_ops, CERT_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_chk_ops on CDL_CHK(LIST_NO varchar_pattern_ops);"
create index idx_pk_cdl_chk_ops on CDL_CHK(LIST_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_commodity_ops on CDL_COMMODITY(RECORDS_NO varchar_pattern_ops, G_NO);"
create index idx_pk_cdl_commodity_ops on CDL_COMMODITY(RECORDS_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_cdl_comp_comm_modify_log_ops on CDL_COMP_COMM_MODIFY_LOG(TRADE_CO varchar_pattern_ops, OP_TIME, MODI_TYPE, ITEM_NAME varchar_pattern_ops);"
create index idx_pk_cdl_comp_comm_modify_log_ops on CDL_COMP_COMM_MODIFY_LOG(TRADE_CO varchar_pattern_ops, OP_TIME, MODI_TYPE, ITEM_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_comp_comm_op_log_ops on CDL_COMP_COMM_OP_LOG(TRADE_CO varchar_pattern_ops, PROC_DATE, PROC_TYPE varchar_pattern_ops);"
create index idx_pk_cdl_comp_comm_op_log_ops on CDL_COMP_COMM_OP_LOG(TRADE_CO varchar_pattern_ops, PROC_DATE, PROC_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_company_ops on CDL_COMPANY(TRADE_CO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRADE_BONDED_FLAG varchar_pattern_ops);"
create index idx_pk_cdl_company_ops on CDL_COMPANY(TRADE_CO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRADE_BONDED_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_container_ops on CDL_CONTAINER(LIST_NO varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);"
create index idx_pk_cdl_container_ops on CDL_CONTAINER(LIST_NO varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_del_certificate_log_ops on CDL_DEL_CERTIFICATE_LOG(LIST_NO varchar_pattern_ops, DOCU_CODE varchar_pattern_ops, CERT_CODE varchar_pattern_ops);"
create index idx_pk_cdl_del_certificate_log_ops on CDL_DEL_CERTIFICATE_LOG(LIST_NO varchar_pattern_ops, DOCU_CODE varchar_pattern_ops, CERT_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_del_container_log_ops on CDL_DEL_CONTAINER_LOG(LIST_NO varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops, CONTAINER_WT);"
create index idx_pk_cdl_del_container_log_ops on CDL_DEL_CONTAINER_LOG(LIST_NO varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops, CONTAINER_WT);
\timing
select now();
\echo "create index idx_pk_cdl_del_head_log_ops on CDL_DEL_HEAD_LOG(LIST_NO varchar_pattern_ops);"
create index idx_pk_cdl_del_head_log_ops on CDL_DEL_HEAD_LOG(LIST_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_del_list_log_ops on CDL_DEL_LIST_LOG(LIST_NO varchar_pattern_ops, G_NO);"
create index idx_pk_cdl_del_list_log_ops on CDL_DEL_LIST_LOG(LIST_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_cdl_edi_mess_ops on CDL_EDI_MESS(MESS_CODE varchar_pattern_ops);"
create index idx_pk_cdl_edi_mess_ops on CDL_EDI_MESS(MESS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_ems_deduct_ops on CDL_EMS_DEDUCT(ENTRY_ID varchar_pattern_ops, EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_cdl_ems_deduct_ops on CDL_EMS_DEDUCT(ENTRY_ID varchar_pattern_ops, EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_cdl_ems_deduct_log_ops on CDL_EMS_DEDUCT_LOG(ENTRY_ID varchar_pattern_ops, EMS_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);"
create index idx_pk_cdl_ems_deduct_log_ops on CDL_EMS_DEDUCT_LOG(ENTRY_ID varchar_pattern_ops, EMS_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_entry_head_ops on CDL_ENTRY_HEAD(PRE_ENTRY_ID varchar_pattern_ops);"
create index idx_pk_cdl_entry_head_ops on CDL_ENTRY_HEAD(PRE_ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_entry_list_ops on CDL_ENTRY_LIST(PRE_ENTRY_ID varchar_pattern_ops, ENTRY_G_NO, LIST_NO varchar_pattern_ops, LIST_G_NO);"
create index idx_pk_cdl_entry_list_ops on CDL_ENTRY_LIST(PRE_ENTRY_ID varchar_pattern_ops, ENTRY_G_NO, LIST_NO varchar_pattern_ops, LIST_G_NO);
\timing
select now();
\echo "create index idx_pk_cdl_head_ops on CDL_HEAD(LIST_NO varchar_pattern_ops);"
create index idx_pk_cdl_head_ops on CDL_HEAD(LIST_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_license_deduct_ops on CDL_LICENSE_DEDUCT(LIST_NO varchar_pattern_ops, G_NO, TRADE_CO varchar_pattern_ops, OP_TIME);"
create index idx_pk_cdl_license_deduct_ops on CDL_LICENSE_DEDUCT(LIST_NO varchar_pattern_ops, G_NO, TRADE_CO varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_cdl_list_ops on CDL_LIST(LIST_NO varchar_pattern_ops, G_NO);"
create index idx_pk_cdl_list_ops on CDL_LIST(LIST_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_cdl_lock_commodity_ops on CDL_LOCK_COMMODITY(CODE_TS varchar_pattern_ops, CONTROL_COUNTRY varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, TRADE_MODE varchar_pattern_ops);"
create index idx_pk_cdl_lock_commodity_ops on CDL_LOCK_COMMODITY(CODE_TS varchar_pattern_ops, CONTROL_COUNTRY varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, TRADE_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_modi_log_ops on CDL_MODI_LOG(LIST_NO varchar_pattern_ops, OP_TIME, MODI_TYPE, ITEM_NAME varchar_pattern_ops);"
create index idx_pk_cdl_modi_log_ops on CDL_MODI_LOG(LIST_NO varchar_pattern_ops, OP_TIME, MODI_TYPE, ITEM_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_op_log_ops on CDL_OP_LOG(LIST_NO varchar_pattern_ops, OP_TIME);"
create index idx_pk_cdl_op_log_ops on CDL_OP_LOG(LIST_NO varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_cdl_overdue_list_ops on CDL_OVERDUE_LIST(TRADE_CO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops);"
create index idx_pk_cdl_overdue_list_ops on CDL_OVERDUE_LIST(TRADE_CO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cdl_status_detail_ops on CDL_STATUS_DETAIL(LIST_NO varchar_pattern_ops, DETAIL_COUNT);"
create index idx_pk_cdl_status_detail_ops on CDL_STATUS_DETAIL(LIST_NO varchar_pattern_ops, DETAIL_COUNT);
\timing
select now();
\echo "create index idx_pk_cdl_workflow_ops on CDL_WORKFLOW(LIST_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_cdl_workflow_ops on CDL_WORKFLOW(LIST_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_chk_cop_ratio_ops on CHK_COP_RATIO(CORP_CODE varchar_pattern_ops);"
create index idx_pk_chk_cop_ratio_ops on CHK_COP_RATIO(CORP_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_chk_counter_ops on CHK_COUNTER(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, COUNTER_TYPE varchar_pattern_ops, COUNT_DATE);"
create index idx_pk_chk_counter_ops on CHK_COUNTER(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, COUNTER_TYPE varchar_pattern_ops, COUNT_DATE);
\timing
select now();
\echo "create index idx_pk_chk_rate_limit_ops on CHK_RATE_LIMIT(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);"
create index idx_pk_chk_rate_limit_ops on CHK_RATE_LIMIT(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_chkhs_mnlproc_ops on CHKHS_MNLPROC(ORDER_NO varchar_pattern_ops, MANUAL_SCH varchar_pattern_ops);"
create index idx_pk_chkhs_mnlproc_ops on CHKHS_MNLPROC(ORDER_NO varchar_pattern_ops, MANUAL_SCH varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cic_code_ops on CIC_CODE(FIRST_NO varchar_pattern_ops);"
create index idx_pk_cic_code_ops on CIC_CODE(FIRST_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cic_head_ops on CIC_HEAD(CPT_NO varchar_pattern_ops);"
create index idx_pk_cic_head_ops on CIC_HEAD(CPT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cic_list_ops on CIC_LIST(CPT_NO varchar_pattern_ops, ITEM_NO);"
create index idx_pk_cic_list_ops on CIC_LIST(CPT_NO varchar_pattern_ops, ITEM_NO);
\timing
select now();
\echo "create index idx_pk_cic_maxid_ops on CIC_MAXID(CUS_ID varchar_pattern_ops);"
create index idx_pk_cic_maxid_ops on CIC_MAXID(CUS_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cic_send_rel_ops on CIC_SEND_REL(CPT_NO varchar_pattern_ops, SEND_TIMES);"
create index idx_pk_cic_send_rel_ops on CIC_SEND_REL(CPT_NO varchar_pattern_ops, SEND_TIMES);
\timing
select now();
\echo "create index idx_pk_claim_ops on CLAIM(GUARANTEE_NO varchar_pattern_ops);"
create index idx_pk_claim_ops on CLAIM(GUARANTEE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_clc_chkrate_limit_ops on CLC_CHKRATE_LIMIT(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);"
create index idx_pk_clc_chkrate_limit_ops on CLC_CHKRATE_LIMIT(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_clc_gpr_ratio_ops on CLC_GPR_RATIO(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);"
create index idx_pk_clc_gpr_ratio_ops on CLC_GPR_RATIO(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_clc_gpr_ratio_bak_ops on CLC_GPR_RATIO_BAK(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, OP_TIME);"
create index idx_pk_clc_gpr_ratio_bak_ops on CLC_GPR_RATIO_BAK(CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_cns_counter_table_ops on CNS_COUNTER_TABLE(CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_cns_counter_table_ops on CNS_COUNTER_TABLE(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_co_class_rel_ops on CO_CLASS_REL(TRADE_CO varchar_pattern_ops, CLASS_NO);"
create index idx_pk_co_class_rel_ops on CO_CLASS_REL(TRADE_CO varchar_pattern_ops, CLASS_NO);
\timing
select now();
\echo "create index idx_pk_company_rel_ops on COMPANY_REL(TRADE_CO varchar_pattern_ops);"
create index idx_pk_company_rel_ops on COMPANY_REL(TRADE_CO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_consume_ops on CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);"
create index idx_pk_consume_ops on CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);
\timing
select now();
\echo "create index idx_pk_consume_db_ops on CONSUME_DB(EX_CODE_TS varchar_pattern_ops, EX_NO, IM_CODE_TS varchar_pattern_ops, IM_NO);"
create index idx_pk_consume_db_ops on CONSUME_DB(EX_CODE_TS varchar_pattern_ops, EX_NO, IM_CODE_TS varchar_pattern_ops, IM_NO);
\timing
select now();
\echo "create index idx_pk_consume_goods_ops on CONSUME_GOODS(CODE_TS varchar_pattern_ops, G_NO, G_FLAG varchar_pattern_ops);"
create index idx_pk_consume_goods_ops on CONSUME_GOODS(CODE_TS varchar_pattern_ops, G_NO, G_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_conta_ops on CONTA(FORM_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);"
create index idx_pk_conta_ops on CONTA(FORM_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_conta_monitor_ops on CONTA_MONITOR(I_E_FLAG varchar_pattern_ops, CONTA_ID varchar_pattern_ops, DISTRIBUTIVE_NO varchar_pattern_ops, IN_OUT_FLAG varchar_pattern_ops);"
create index idx_pk_conta_monitor_ops on CONTA_MONITOR(I_E_FLAG varchar_pattern_ops, CONTA_ID varchar_pattern_ops, DISTRIBUTIVE_NO varchar_pattern_ops, IN_OUT_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_contract_head_ops on CONTRACT_HEAD(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_contract_head_ops on CONTRACT_HEAD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_contract_workflow_ops on CONTRACT_WORKFLOW(MANUAL_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, PROC_DATE);"
create index idx_pk_contract_workflow_ops on CONTRACT_WORKFLOW(MANUAL_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, PROC_DATE);
\timing
select now();
\echo "create index idx_pk_conveyance_ops on CONVEYANCE(SHIP_ID varchar_pattern_ops, TRAF_MODE varchar_pattern_ops);"
create index idx_pk_conveyance_ops on CONVEYANCE(SHIP_ID varchar_pattern_ops, TRAF_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_conveyance_segment_ops on CONVEYANCE_SEGMENT(SHIP_ID varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, LOAD_PORT varchar_pattern_ops, DESTINATION_PORT varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, I_E_DATE);"
create index idx_pk_conveyance_segment_ops on CONVEYANCE_SEGMENT(SHIP_ID varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, LOAD_PORT varchar_pattern_ops, DESTINATION_PORT varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, I_E_DATE);
\timing
select now();
\echo "create index idx_pk_cop_consume_ops on COP_CONSUME(REC_NUM varchar_pattern_ops);"
create index idx_pk_cop_consume_ops on COP_CONSUME(REC_NUM varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cop_spec_rel_ops on COP_SPEC_REL(ENTRY_ID varchar_pattern_ops, AUTH_ID);"
create index idx_pk_cop_spec_rel_ops on COP_SPEC_REL(ENTRY_ID varchar_pattern_ops, AUTH_ID);
\timing
\timing
\timing
\timing
\timing
\timing
select now();
\echo "create index idx_pk_corp_type_ops on CORP_TYPE(CORP_TYPE varchar_pattern_ops);"
create index idx_pk_corp_type_ops on CORP_TYPE(CORP_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_counter_table_ops on COUNTER_TABLE(COUNTER_TYPE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, C_DATE);"
create index idx_pk_counter_table_ops on COUNTER_TABLE(COUNTER_TYPE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, C_DATE);
\timing
select now();
\echo "create index idx_pk_credit_info_ops on CREDIT_INFO(RPTNO varchar_pattern_ops);"
create index idx_pk_credit_info_ops on CREDIT_INFO(RPTNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cts_chkrate_limit_ops on CTS_CHKRATE_LIMIT(ID varchar_pattern_ops);"
create index idx_pk_cts_chkrate_limit_ops on CTS_CHKRATE_LIMIT(ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cts_chkrate_limit_bak_ops on CTS_CHKRATE_LIMIT_BAK(ID varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_cts_chkrate_limit_bak_ops on CTS_CHKRATE_LIMIT_BAK(ID varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_cts_period_ops on CTS_PERIOD(CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_cts_period_ops on CTS_PERIOD(CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_cus_good_consume_ops on CUS_GOOD_CONSUME(REC_NUM varchar_pattern_ops);"
create index idx_pk_cus_good_consume_ops on CUS_GOOD_CONSUME(REC_NUM varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_customs_default_ops on CUSTOMS_DEFAULT(MASTER_CUSTOMS varchar_pattern_ops);"
create index idx_pk_customs_default_ops on CUSTOMS_DEFAULT(MASTER_CUSTOMS varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_customs_eseal_config_ops on CUSTOMS_ESEAL_CONFIG(CUSTOMS_CODE varchar_pattern_ops, FLAG_TYPE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);"
create index idx_pk_customs_eseal_config_ops on CUSTOMS_ESEAL_CONFIG(CUSTOMS_CODE varchar_pattern_ops, FLAG_TYPE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dcg_bak_list_ops on DCG_BAK_LIST(DCG_NO varchar_pattern_ops);"
create index idx_pk_dcg_bak_list_ops on DCG_BAK_LIST(DCG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dcg_bill_head_ops on DCG_BILL_HEAD(BILL_NO varchar_pattern_ops);"
create index idx_pk_dcg_bill_head_ops on DCG_BILL_HEAD(BILL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dcg_bill_list_ops on DCG_BILL_LIST(BILL_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_dcg_bill_list_ops on DCG_BILL_LIST(BILL_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_dcg_copr_info_ops on DCG_COPR_INFO(CORP_NO varchar_pattern_ops);"
create index idx_pk_dcg_copr_info_ops on DCG_COPR_INFO(CORP_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dcg_deduct_ops on DCG_DEDUCT(ENTRY_ID varchar_pattern_ops, DCG_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_dcg_deduct_ops on DCG_DEDUCT(ENTRY_ID varchar_pattern_ops, DCG_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_dcg_deduct_log_ops on DCG_DEDUCT_LOG(ENTRY_ID varchar_pattern_ops, DCG_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);"
create index idx_pk_dcg_deduct_log_ops on DCG_DEDUCT_LOG(ENTRY_ID varchar_pattern_ops, DCG_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dcg_head_ops on DCG_HEAD(DCG_NO varchar_pattern_ops);"
create index idx_pk_dcg_head_ops on DCG_HEAD(DCG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dcg_list_ops on DCG_LIST(DCG_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_dcg_list_ops on DCG_LIST(DCG_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_dcg_seq_ops on DCG_SEQ(DCG_KEY varchar_pattern_ops);"
create index idx_pk_dcg_seq_ops on DCG_SEQ(DCG_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dcg_workflow_ops on DCG_WORKFLOW(DCG_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_dcg_workflow_ops on DCG_WORKFLOW(DCG_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_decl_co_entry_count_ops on DECL_CO_ENTRY_COUNT(DECL_CO varchar_pattern_ops, RANDOM);"
create index idx_pk_decl_co_entry_count_ops on DECL_CO_ENTRY_COUNT(DECL_CO varchar_pattern_ops, RANDOM);
\timing
select now();
\echo "create index idx_pk_decl_co_entry_count_temp_ops on DECL_CO_ENTRY_COUNT_TEMP(GEN_DATE, DECL_CO varchar_pattern_ops, RANDOM);"
create index idx_pk_decl_co_entry_count_temp_ops on DECL_CO_ENTRY_COUNT_TEMP(GEN_DATE, DECL_CO varchar_pattern_ops, RANDOM);
\timing
select now();
\echo "create index idx_pk_declar_counter_rel_ops on DECLAR_COUNTER_REL(DECL_KEY varchar_pattern_ops);"
create index idx_pk_declar_counter_rel_ops on DECLAR_COUNTER_REL(DECL_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_declar_rel_ops on DECLAR_REL(DECL_CO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_declar_rel_ops on DECLAR_REL(DECL_CO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_declarer_rel_ops on DECLARER_REL(DECL_CO varchar_pattern_ops);"
create index idx_pk_declarer_rel_ops on DECLARER_REL(DECL_CO varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index idx_pk_declog_mod_rel_ops on DECLOG_MOD_REL(DECL_CO varchar_pattern_ops, MOD_TIMES);"
create index idx_pk_declog_mod_rel_ops on DECLOG_MOD_REL(DECL_CO varchar_pattern_ops, MOD_TIMES);
\timing
\timing
select now();
\echo "create index idx_pk_declog_score_head_ops on DECLOG_SCORE_HEAD(DECL_CO varchar_pattern_ops, FORM_ID varchar_pattern_ops, SCORE_TIME);"
create index idx_pk_declog_score_head_ops on DECLOG_SCORE_HEAD(DECL_CO varchar_pattern_ops, FORM_ID varchar_pattern_ops, SCORE_TIME);
\timing
select now();
\echo "create index idx_pk_declog_score_list_ops on DECLOG_SCORE_LIST(DECL_CO varchar_pattern_ops, FORM_ID varchar_pattern_ops, SCORE_TIME, ITEM_NO);"
create index idx_pk_declog_score_list_ops on DECLOG_SCORE_LIST(DECL_CO varchar_pattern_ops, FORM_ID varchar_pattern_ops, SCORE_TIME, ITEM_NO);
\timing
select now();
\echo "create index idx_pk_del_egs_arc_agent_list_ops on DEL_EGS_ARC_AGENT_LIST(EGS_NO varchar_pattern_ops, AGENT_NO);"
create index idx_pk_del_egs_arc_agent_list_ops on DEL_EGS_ARC_AGENT_LIST(EGS_NO varchar_pattern_ops, AGENT_NO);
\timing
select now();
\echo "create index idx_pk_del_egs_arc_head_ops on DEL_EGS_ARC_HEAD(EGS_NO varchar_pattern_ops);"
create index idx_pk_del_egs_arc_head_ops on DEL_EGS_ARC_HEAD(EGS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_del_egs_arc_list_ops on DEL_EGS_ARC_LIST(EGS_NO varchar_pattern_ops, G_NO);"
create index idx_pk_del_egs_arc_list_ops on DEL_EGS_ARC_LIST(EGS_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_del_egs_arc_merchant_list_ops on DEL_EGS_ARC_MERCHANT_LIST(EGS_NO varchar_pattern_ops, AGENT_CODE varchar_pattern_ops, MERCHANT_NO);"
create index idx_pk_del_egs_arc_merchant_list_ops on DEL_EGS_ARC_MERCHANT_LIST(EGS_NO varchar_pattern_ops, AGENT_CODE varchar_pattern_ops, MERCHANT_NO);
\timing
select now();
\echo "create index idx_pk_del_egs_clear_cert_ops on DEL_EGS_CLEAR_CERT(CLR_NO varchar_pattern_ops, CERT_CODE varchar_pattern_ops, CERT_NO varchar_pattern_ops);"
create index idx_pk_del_egs_clear_cert_ops on DEL_EGS_CLEAR_CERT(CLR_NO varchar_pattern_ops, CERT_CODE varchar_pattern_ops, CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_del_egs_clear_head_ops on DEL_EGS_CLEAR_HEAD(CLR_NO varchar_pattern_ops);"
create index idx_pk_del_egs_clear_head_ops on DEL_EGS_CLEAR_HEAD(CLR_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_del_egs_clear_list_ops on DEL_EGS_CLEAR_LIST(CLR_NO varchar_pattern_ops, G_NO);"
create index idx_pk_del_egs_clear_list_ops on DEL_EGS_CLEAR_LIST(CLR_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_del_egs_declare_cert_ops on DEL_EGS_DECLARE_CERT(DECL_NO varchar_pattern_ops, CERT_CODE varchar_pattern_ops, CERT_NO varchar_pattern_ops);"
create index idx_pk_del_egs_declare_cert_ops on DEL_EGS_DECLARE_CERT(DECL_NO varchar_pattern_ops, CERT_CODE varchar_pattern_ops, CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_del_egs_declare_head_ops on DEL_EGS_DECLARE_HEAD(DECL_NO varchar_pattern_ops);"
create index idx_pk_del_egs_declare_head_ops on DEL_EGS_DECLARE_HEAD(DECL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_del_egs_declare_list_ops on DEL_EGS_DECLARE_LIST(DECL_NO varchar_pattern_ops, G_NO);"
create index idx_pk_del_egs_declare_list_ops on DEL_EGS_DECLARE_LIST(DECL_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_del_mod_apply_ops on DEL_MOD_APPLY(ENTRY_ID varchar_pattern_ops, APPLY_TIME);"
create index idx_pk_del_mod_apply_ops on DEL_MOD_APPLY(ENTRY_ID varchar_pattern_ops, APPLY_TIME);
\timing
select now();
\echo "create index idx_pk_distributive_bill_declare_ops on DISTRIBUTIVE_BILL_DECLARE(DISTRIBUTIVE_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, BILL_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE);"
create index idx_pk_distributive_bill_declare_ops on DISTRIBUTIVE_BILL_DECLARE(DISTRIBUTIVE_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, BILL_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE);
\timing
select now();
\echo "create index idx_pk_distributive_declare_ops on DISTRIBUTIVE_DECLARE(DISTRIBUTIVE_NO varchar_pattern_ops);"
create index idx_pk_distributive_declare_ops on DISTRIBUTIVE_DECLARE(DISTRIBUTIVE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_distributive_transit_way_ops on DISTRIBUTIVE_TRANSIT_WAY(DISTRIBUTIVE_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops);"
create index idx_pk_distributive_transit_way_ops on DISTRIBUTIVE_TRANSIT_WAY(DISTRIBUTIVE_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dst_counter_table_ops on DST_COUNTER_TABLE(EMS_NO varchar_pattern_ops, COUNTER varchar_pattern_ops, SUB_COUNTER);"
create index idx_pk_dst_counter_table_ops on DST_COUNTER_TABLE(EMS_NO varchar_pattern_ops, COUNTER varchar_pattern_ops, SUB_COUNTER);
\timing
select now();
\echo "create index idx_pk_dst_deduct_ops on DST_DEDUCT(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_dst_deduct_ops on DST_DEDUCT(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_dst_exg_ops on DST_EXG(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops);"
create index idx_pk_dst_exg_ops on DST_EXG(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dst_exg_ori_entry_ops on DST_EXG_ORI_ENTRY(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_dst_exg_ori_entry_ops on DST_EXG_ORI_ENTRY(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_dst_head_ops on DST_HEAD(PRE_NO varchar_pattern_ops);"
create index idx_pk_dst_head_ops on DST_HEAD(PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dst_img_ops on DST_IMG(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops);"
create index idx_pk_dst_img_ops on DST_IMG(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dst_img_ori_entry_ops on DST_IMG_ORI_ENTRY(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_dst_img_ori_entry_ops on DST_IMG_ORI_ENTRY(PRE_NO varchar_pattern_ops, G_NO, ORIGIN_COUNTRY varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_dtt_cop_param_ops on DTT_COP_PARAM(CORP_CODE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_dtt_cop_param_ops on DTT_COP_PARAM(CORP_CODE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_duty_check_log_ops on DUTY_CHECK_LOG(ENTRY_ID varchar_pattern_ops, TAX_ID varchar_pattern_ops, PROC_TIME);"
create index idx_pk_duty_check_log_ops on DUTY_CHECK_LOG(ENTRY_ID varchar_pattern_ops, TAX_ID varchar_pattern_ops, PROC_TIME);
\timing
select now();
\echo "create index idx_pk_dutyform_head_ops on DUTYFORM_HEAD(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_dutyform_head_ops on DUTYFORM_HEAD(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_dutyform_list_ops on DUTYFORM_LIST(ENTRY_ID varchar_pattern_ops, TAX_ID varchar_pattern_ops);"
create index idx_pk_dutyform_list_ops on DUTYFORM_LIST(ENTRY_ID varchar_pattern_ops, TAX_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_eco_head_ops on ECO_HEAD(CERTIFICATE_NO varchar_pattern_ops);"
create index idx_pk_eco_head_ops on ECO_HEAD(CERTIFICATE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_eco_list_ops on ECO_LIST(CERTIFICATE_NO varchar_pattern_ops, G_NO);"
create index idx_pk_eco_list_ops on ECO_LIST(CERTIFICATE_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_eco_parts_ops on ECO_PARTS(CERTIFICATE_NO varchar_pattern_ops, G_NO, PART_SEQ);"
create index idx_pk_eco_parts_ops on ECO_PARTS(CERTIFICATE_NO varchar_pattern_ops, G_NO, PART_SEQ);
\timing
select now();
\echo "create index idx_pk_eco_workflow_ops on ECO_WORKFLOW(CERTIFICATE_NO varchar_pattern_ops, TRANSFER_NUM, PROCESS_STATUS varchar_pattern_ops, PROCESS_DATE);"
create index idx_pk_eco_workflow_ops on ECO_WORKFLOW(CERTIFICATE_NO varchar_pattern_ops, TRANSFER_NUM, PROCESS_STATUS varchar_pattern_ops, PROCESS_DATE);
\timing
select now();
\echo "create index idx_pk_egs_admit_head_ops on EGS_ADMIT_HEAD(ADM_NO varchar_pattern_ops);"
create index idx_pk_egs_admit_head_ops on EGS_ADMIT_HEAD(ADM_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_admit_hs_ops on EGS_ADMIT_HS(ADM_NO varchar_pattern_ops, CODE_TS varchar_pattern_ops);"
create index idx_pk_egs_admit_hs_ops on EGS_ADMIT_HS(ADM_NO varchar_pattern_ops, CODE_TS varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_admit_list_ops on EGS_ADMIT_LIST(ADM_NO varchar_pattern_ops, G_NO);"
create index idx_pk_egs_admit_list_ops on EGS_ADMIT_LIST(ADM_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_egs_arc_agent_list_ops on EGS_ARC_AGENT_LIST(EGS_NO varchar_pattern_ops, AGENT_NO);"
create index idx_pk_egs_arc_agent_list_ops on EGS_ARC_AGENT_LIST(EGS_NO varchar_pattern_ops, AGENT_NO);
\timing
select now();
\echo "create index idx_pk_egs_arc_head_ops on EGS_ARC_HEAD(EGS_NO varchar_pattern_ops);"
create index idx_pk_egs_arc_head_ops on EGS_ARC_HEAD(EGS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_arc_list_ops on EGS_ARC_LIST(EGS_NO varchar_pattern_ops, G_NO);"
create index idx_pk_egs_arc_list_ops on EGS_ARC_LIST(EGS_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_egs_arc_merchant_list_ops on EGS_ARC_MERCHANT_LIST(EGS_NO varchar_pattern_ops, AGENT_CODE varchar_pattern_ops, MERCHANT_NO);"
create index idx_pk_egs_arc_merchant_list_ops on EGS_ARC_MERCHANT_LIST(EGS_NO varchar_pattern_ops, AGENT_CODE varchar_pattern_ops, MERCHANT_NO);
\timing
select now();
\echo "create index idx_pk_egs_check_log_ops on EGS_CHECK_LOG(EGS_NO varchar_pattern_ops, CHK_TIMES, FORM_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_egs_check_log_ops on EGS_CHECK_LOG(EGS_NO varchar_pattern_ops, CHK_TIMES, FORM_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_egs_clear_cert_ops on EGS_CLEAR_CERT(CLR_NO varchar_pattern_ops, CERT_CODE varchar_pattern_ops, CERT_NO varchar_pattern_ops);"
create index idx_pk_egs_clear_cert_ops on EGS_CLEAR_CERT(CLR_NO varchar_pattern_ops, CERT_CODE varchar_pattern_ops, CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_clear_head_ops on EGS_CLEAR_HEAD(CLR_NO varchar_pattern_ops);"
create index idx_pk_egs_clear_head_ops on EGS_CLEAR_HEAD(CLR_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_clear_list_ops on EGS_CLEAR_LIST(CLR_NO varchar_pattern_ops, G_NO);"
create index idx_pk_egs_clear_list_ops on EGS_CLEAR_LIST(CLR_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_egs_declare_cert_ops on EGS_DECLARE_CERT(DECL_NO varchar_pattern_ops, CERT_CODE varchar_pattern_ops, CERT_NO varchar_pattern_ops);"
create index idx_pk_egs_declare_cert_ops on EGS_DECLARE_CERT(DECL_NO varchar_pattern_ops, CERT_CODE varchar_pattern_ops, CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_declare_head_ops on EGS_DECLARE_HEAD(DECL_NO varchar_pattern_ops);"
create index idx_pk_egs_declare_head_ops on EGS_DECLARE_HEAD(DECL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_declare_list_ops on EGS_DECLARE_LIST(DECL_NO varchar_pattern_ops, G_NO);"
create index idx_pk_egs_declare_list_ops on EGS_DECLARE_LIST(DECL_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_egs_deduct_ops on EGS_DEDUCT(DECL_NO varchar_pattern_ops, DECL_G_NO, CLR_NO varchar_pattern_ops, CLR_G_NO);"
create index idx_pk_egs_deduct_ops on EGS_DEDUCT(DECL_NO varchar_pattern_ops, DECL_G_NO, CLR_NO varchar_pattern_ops, CLR_G_NO);
\timing
select now();
\echo "create index idx_pk_egs_lend_head_ops on EGS_LEND_HEAD(LEND_NO varchar_pattern_ops);"
create index idx_pk_egs_lend_head_ops on EGS_LEND_HEAD(LEND_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_lend_list_ops on EGS_LEND_LIST(LEND_NO varchar_pattern_ops, G_NO);"
create index idx_pk_egs_lend_list_ops on EGS_LEND_LIST(LEND_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_egs_patrol_head_ops on EGS_PATROL_HEAD(PAT_NO varchar_pattern_ops);"
create index idx_pk_egs_patrol_head_ops on EGS_PATROL_HEAD(PAT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_patrol_list_ops on EGS_PATROL_LIST(PAT_NO varchar_pattern_ops, G_NO);"
create index idx_pk_egs_patrol_list_ops on EGS_PATROL_LIST(PAT_NO varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_egs_seq_ops on EGS_SEQ(EGS_KEY varchar_pattern_ops);"
create index idx_pk_egs_seq_ops on EGS_SEQ(EGS_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_egs_workflow_ops on EGS_WORKFLOW(EGS_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_egs_workflow_ops on EGS_WORKFLOW(EGS_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_ems_account_ops on EMS_ACCOUNT(EMS_NO varchar_pattern_ops, ID_STAT varchar_pattern_ops);"
create index idx_pk_ems_account_ops on EMS_ACCOUNT(EMS_NO varchar_pattern_ops, ID_STAT varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_appr_head_ops on EMS_APPR_HEAD(APPR_NO varchar_pattern_ops, RECEIVE_TIMES);"
create index idx_pk_ems_appr_head_ops on EMS_APPR_HEAD(APPR_NO varchar_pattern_ops, RECEIVE_TIMES);
\timing
select now();
\echo "create index idx_pk_ems_appr_list_ops on EMS_APPR_LIST(APPR_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO, RECEIVE_TIMES);"
create index idx_pk_ems_appr_list_ops on EMS_APPR_LIST(APPR_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO, RECEIVE_TIMES);
\timing
select now();
\echo "create index idx_pk_ems_claim_ops on EMS_CLAIM(GUARANTEE_NO varchar_pattern_ops);"
create index idx_pk_ems_claim_ops on EMS_CLAIM(GUARANTEE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_clr_list_ops on EMS_CLR_LIST(EMS_NO varchar_pattern_ops, DCR_TIMES, G_TYPE varchar_pattern_ops, G_NO, DU_CODE varchar_pattern_ops);"
create index idx_pk_ems_clr_list_ops on EMS_CLR_LIST(EMS_NO varchar_pattern_ops, DCR_TIMES, G_TYPE varchar_pattern_ops, G_NO, DU_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_clr_tmp_ops on EMS_CLR_TMP(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_ems_clr_tmp_ops on EMS_CLR_TMP(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ems_complex_ops on EMS_COMPLEX(GOODS_TYPE varchar_pattern_ops, G_TYPE varchar_pattern_ops, CODE_TS varchar_pattern_ops, CLASSIFY varchar_pattern_ops);"
create index idx_pk_ems_complex_ops on EMS_COMPLEX(GOODS_TYPE varchar_pattern_ops, G_TYPE varchar_pattern_ops, CODE_TS varchar_pattern_ops, CLASSIFY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_complex2_ops on EMS_COMPLEX2(ICODE_TS varchar_pattern_ops, ECODE_TS varchar_pattern_ops);"
create index idx_pk_ems_complex2_ops on EMS_COMPLEX2(ICODE_TS varchar_pattern_ops, ECODE_TS varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_consume_ops on EMS_CONSUME(EMS_NO varchar_pattern_ops, EXG_NO, EXG_VERSION varchar_pattern_ops, IMG_NO);"
create index idx_pk_ems_consume_ops on EMS_CONSUME(EMS_NO varchar_pattern_ops, EXG_NO, EXG_VERSION varchar_pattern_ops, IMG_NO);
\timing
select now();
\echo "create index idx_pk_ems_consume_clr_ops on EMS_CONSUME_CLR(EMS_NO varchar_pattern_ops, IMG_NO);"
create index idx_pk_ems_consume_clr_ops on EMS_CONSUME_CLR(EMS_NO varchar_pattern_ops, IMG_NO);
\timing
select now();
\echo "create index idx_pk_ems_consume_clr_d_ops on EMS_CONSUME_CLR_D(EMS_NO varchar_pattern_ops, IMG_NO, EXG_NO, EXG_VERSION varchar_pattern_ops);"
create index idx_pk_ems_consume_clr_d_ops on EMS_CONSUME_CLR_D(EMS_NO varchar_pattern_ops, IMG_NO, EXG_NO, EXG_VERSION varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_dcr_consume_ops on EMS_DCR_CONSUME(EMS_NO varchar_pattern_ops, EXG_NO, EXG_VERSION varchar_pattern_ops, IMG_NO, MODIFY_TIMES);"
create index idx_pk_ems_dcr_consume_ops on EMS_DCR_CONSUME(EMS_NO varchar_pattern_ops, EXG_NO, EXG_VERSION varchar_pattern_ops, IMG_NO, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_ems_dcr_ent_ops on EMS_DCR_ENT(EMS_NO varchar_pattern_ops, DCR_TIMES, ENTRY_ID varchar_pattern_ops);"
create index idx_pk_ems_dcr_ent_ops on EMS_DCR_ENT(EMS_NO varchar_pattern_ops, DCR_TIMES, ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_dcr_head_ops on EMS_DCR_HEAD(EMS_NO varchar_pattern_ops, DCR_TIMES);"
create index idx_pk_ems_dcr_head_ops on EMS_DCR_HEAD(EMS_NO varchar_pattern_ops, DCR_TIMES);
\timing
select now();
\echo "create index idx_pk_ems_dcr_list_ops on EMS_DCR_LIST(EMS_NO varchar_pattern_ops, DCR_TIMES, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_ems_dcr_list_ops on EMS_DCR_LIST(EMS_NO varchar_pattern_ops, DCR_TIMES, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ems_dcr_rub_list_ops on EMS_DCR_RUB_LIST(EMS_NO varchar_pattern_ops, DCR_TIMES, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_ems_dcr_rub_list_ops on EMS_DCR_RUB_LIST(EMS_NO varchar_pattern_ops, DCR_TIMES, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ems_deduct_ops on EMS_DEDUCT(ENTRY_ID varchar_pattern_ops, EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_ems_deduct_ops on EMS_DEDUCT(ENTRY_ID varchar_pattern_ops, EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_ems_deduct_clr_ops on EMS_DEDUCT_CLR(EMS_NO varchar_pattern_ops, IMG_NO, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_ems_deduct_clr_ops on EMS_DEDUCT_CLR(EMS_NO varchar_pattern_ops, IMG_NO, ENTRY_ID varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_ems_deduct_log_ops on EMS_DEDUCT_LOG(ENTRY_ID varchar_pattern_ops, EMS_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);"
create index idx_pk_ems_deduct_log_ops on EMS_DEDUCT_LOG(ENTRY_ID varchar_pattern_ops, EMS_NO varchar_pattern_ops, CREATE_DATE, JOU_MARK varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_enp_ops on EMS_ENP(ENP_ID varchar_pattern_ops);"
create index idx_pk_ems_enp_ops on EMS_ENP(ENP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_enp_jou_ops on EMS_ENP_JOU(ENP_ID varchar_pattern_ops, ENP_SEQ, ENP_NO);"
create index idx_pk_ems_enp_jou_ops on EMS_ENP_JOU(ENP_ID varchar_pattern_ops, ENP_SEQ, ENP_NO);
\timing
select now();
\echo "create index idx_pk_ems_head_ops on EMS_HEAD(EMS_NO varchar_pattern_ops);"
create index idx_pk_ems_head_ops on EMS_HEAD(EMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_list_ops on EMS_LIST(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_ems_list_ops on EMS_LIST(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ems_message_log_ops on EMS_MESSAGE_LOG(EMS_NO varchar_pattern_ops, SEND_CUSTOMS varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, H2000_RECEIVE_DATE);"
create index idx_pk_ems_message_log_ops on EMS_MESSAGE_LOG(EMS_NO varchar_pattern_ops, SEND_CUSTOMS varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, H2000_RECEIVE_DATE);
\timing
select now();
\echo "create index idx_pk_ems_press_ops on EMS_PRESS(PARA_TYPE varchar_pattern_ops, PARA_NAME varchar_pattern_ops);"
create index idx_pk_ems_press_ops on EMS_PRESS(PARA_TYPE varchar_pattern_ops, PARA_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_press_clear_ops on EMS_PRESS_CLEAR(EMS_NO varchar_pattern_ops, PR_NO varchar_pattern_ops);"
create index idx_pk_ems_press_clear_ops on EMS_PRESS_CLEAR(EMS_NO varchar_pattern_ops, PR_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_seq_ops on EMS_SEQ(EMS_KEY varchar_pattern_ops);"
create index idx_pk_ems_seq_ops on EMS_SEQ(EMS_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_tmp_clr_ops on EMS_TMP_CLR(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_ems_tmp_clr_ops on EMS_TMP_CLR(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ems_var_ops on EMS_VAR(VAR_TYPE varchar_pattern_ops, VAR_ID varchar_pattern_ops, VAR_SUB_ID varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_ems_var_ops on EMS_VAR(VAR_TYPE varchar_pattern_ops, VAR_ID varchar_pattern_ops, VAR_SUB_ID varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_verify_ops on EMS_VERIFY(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_ems_verify_ops on EMS_VERIFY(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ems_verify_detail_ops on EMS_VERIFY_DETAIL(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO, D_TYPE varchar_pattern_ops, E_TYPE varchar_pattern_ops);"
create index idx_pk_ems_verify_detail_ops on EMS_VERIFY_DETAIL(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO, D_TYPE varchar_pattern_ops, E_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ems_workflow_ops on EMS_WORKFLOW(EMS_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_ems_workflow_ops on EMS_WORKFLOW(EMS_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_entry_autorel_err_list_ops on ENTRY_AUTOREL_ERR_LIST(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_entry_autorel_err_list_ops on ENTRY_AUTOREL_ERR_LIST(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_entry_autorel_err_log_ops on ENTRY_AUTOREL_ERR_LOG(ENTRY_ID varchar_pattern_ops, DEL_TIME);"
create index idx_pk_entry_autorel_err_log_ops on ENTRY_AUTOREL_ERR_LOG(ENTRY_ID varchar_pattern_ops, DEL_TIME);
\timing
select now();
\echo "create index idx_pk_entry_centry_select_ops on ENTRY_CENTRY_SELECT(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_entry_centry_select_ops on ENTRY_CENTRY_SELECT(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_entry_centry_select_del_ops on ENTRY_CENTRY_SELECT_DEL(ENTRY_ID varchar_pattern_ops, OP_TIME);"
create index idx_pk_entry_centry_select_del_ops on ENTRY_CENTRY_SELECT_DEL(ENTRY_ID varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_entry_certificate_ops on ENTRY_CERTIFICATE(ENTRY_ID varchar_pattern_ops, DOCU_CODE varchar_pattern_ops, CERT_CODE varchar_pattern_ops);"
create index idx_pk_entry_certificate_ops on ENTRY_CERTIFICATE(ENTRY_ID varchar_pattern_ops, DOCU_CODE varchar_pattern_ops, CERT_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_entry_certificate_log_ops on ENTRY_CERTIFICATE_LOG(ENTRY_ID varchar_pattern_ops, DOCU_CODE varchar_pattern_ops, CERT_CODE varchar_pattern_ops, OP_TIME);"
create index idx_pk_entry_certificate_log_ops on ENTRY_CERTIFICATE_LOG(ENTRY_ID varchar_pattern_ops, DOCU_CODE varchar_pattern_ops, CERT_CODE varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_entry_container_ops on ENTRY_CONTAINER(ENTRY_ID varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);"
create index idx_pk_entry_container_ops on ENTRY_CONTAINER(ENTRY_ID varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_entry_container_log_ops on ENTRY_CONTAINER_LOG(ENTRY_ID varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops, OP_TIME);"
create index idx_pk_entry_container_log_ops on ENTRY_CONTAINER_LOG(ENTRY_ID varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_entry_del_head_log_ops on ENTRY_DEL_HEAD_LOG(ENTRY_ID varchar_pattern_ops, OP_TIME);"
create index idx_pk_entry_del_head_log_ops on ENTRY_DEL_HEAD_LOG(ENTRY_ID varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_entry_del_list_log_ops on ENTRY_DEL_LIST_LOG(ENTRY_ID varchar_pattern_ops, G_NO, OP_TIME);"
create index idx_pk_entry_del_list_log_ops on ENTRY_DEL_LIST_LOG(ENTRY_ID varchar_pattern_ops, G_NO, OP_TIME);
\timing
select now();
\echo "create index idx_pk_entry_evaluation_ops on ENTRY_EVALUATION(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_entry_evaluation_ops on ENTRY_EVALUATION(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_entry_gpm_rtx_ops on ENTRY_GPM_RTX(SIGN_TYPE varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, PROC_MODE varchar_pattern_ops);"
create index idx_pk_entry_gpm_rtx_ops on ENTRY_GPM_RTX(SIGN_TYPE varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, PROC_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_entry_gpm_rtx_printlog_ops on ENTRY_GPM_RTX_PRINTLOG(ENTRY_ID varchar_pattern_ops, PRINT_TYPE varchar_pattern_ops, PRINT_DATE);"
create index idx_pk_entry_gpm_rtx_printlog_ops on ENTRY_GPM_RTX_PRINTLOG(ENTRY_ID varchar_pattern_ops, PRINT_TYPE varchar_pattern_ops, PRINT_DATE);
\timing
select now();
\echo "create index idx_pk_entry_gpm_rtx_sendlog_ops on ENTRY_GPM_RTX_SENDLOG(ENTRY_ID varchar_pattern_ops, SIGN_TYPE varchar_pattern_ops, PROC_MODE varchar_pattern_ops, SEND_DATE);"
create index idx_pk_entry_gpm_rtx_sendlog_ops on ENTRY_GPM_RTX_SENDLOG(ENTRY_ID varchar_pattern_ops, SIGN_TYPE varchar_pattern_ops, PROC_MODE varchar_pattern_ops, SEND_DATE);
\timing
select now();
\echo "create index idx_pk_entry_head_ops on ENTRY_HEAD(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_entry_head_ops on ENTRY_HEAD(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_entry_list_ops on ENTRY_LIST(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_entry_list_ops on ENTRY_LIST(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_entry_modi_log_ops on ENTRY_MODI_LOG(ENTRY_ID varchar_pattern_ops, OP_TIME, MODI_TYPE, ITEM_NAME varchar_pattern_ops);"
create index idx_pk_entry_modi_log_ops on ENTRY_MODI_LOG(ENTRY_ID varchar_pattern_ops, OP_TIME, MODI_TYPE, ITEM_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_entry_op_log_ops on ENTRY_OP_LOG(ENTRY_ID varchar_pattern_ops, OP_TIME);"
create index idx_pk_entry_op_log_ops on ENTRY_OP_LOG(ENTRY_ID varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_entry_proc_ops on ENTRY_PROC(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_entry_proc_ops on ENTRY_PROC(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_entry_workflow_ops on ENTRY_WORKFLOW(ENTRY_ID varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_entry_workflow_ops on ENTRY_WORKFLOW(ENTRY_ID varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_epa_chem_cert_ops on EPA_CHEM_CERT(CERTIFICATE_NO varchar_pattern_ops);"
create index idx_pk_epa_chem_cert_ops on EPA_CHEM_CERT(CERTIFICATE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_epa_chk_ops on EPA_CHK(ENTRY_ID varchar_pattern_ops, CERTIFICATE_NO varchar_pattern_ops, CERT_TYPE varchar_pattern_ops);"
create index idx_pk_epa_chk_ops on EPA_CHK(ENTRY_ID varchar_pattern_ops, CERTIFICATE_NO varchar_pattern_ops, CERT_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_epa_scarp_cert_ops on EPA_SCARP_CERT(CERTIFICATE_NO varchar_pattern_ops);"
create index idx_pk_epa_scarp_cert_ops on EPA_SCARP_CERT(CERTIFICATE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_err_log_ops on ERR_LOG(ENTRY_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_err_log_ops on ERR_LOG(ENTRY_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_ex_appl_close_ops on EX_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_ex_appl_close_ops on EX_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_ex_arrival_conta_ops on EX_ARRIVAL_CONTA(CONTA_ID varchar_pattern_ops, BILL_NO varchar_pattern_ops, REC_NO varchar_pattern_ops);"
create index idx_pk_ex_arrival_conta_ops on EX_ARRIVAL_CONTA(CONTA_ID varchar_pattern_ops, BILL_NO varchar_pattern_ops, REC_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_arrival_err_chk_ops on EX_ARRIVAL_ERR_CHK(ENTRY_ID varchar_pattern_ops, CHK_DATE);"
create index idx_pk_ex_arrival_err_chk_ops on EX_ARRIVAL_ERR_CHK(ENTRY_ID varchar_pattern_ops, CHK_DATE);
\timing
select now();
\echo "create index idx_pk_ex_arrival_ship_ops on EX_ARRIVAL_SHIP(VOYAGE_NO varchar_pattern_ops, SHIP_NAME_EN varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, SHIP_ID varchar_pattern_ops);"
create index idx_pk_ex_arrival_ship_ops on EX_ARRIVAL_SHIP(VOYAGE_NO varchar_pattern_ops, SHIP_NAME_EN varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, SHIP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_cdl_mnl_deduct_ops on EX_CDL_MNL_DEDUCT(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_ex_cdl_mnl_deduct_ops on EX_CDL_MNL_DEDUCT(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ex_conta_entry_chk_ops on EX_CONTA_ENTRY_CHK(CONTA_ID varchar_pattern_ops, BILL_NO varchar_pattern_ops, REC_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops);"
create index idx_pk_ex_conta_entry_chk_ops on EX_CONTA_ENTRY_CHK(CONTA_ID varchar_pattern_ops, BILL_NO varchar_pattern_ops, REC_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_contract_clear_ops on EX_CONTRACT_CLEAR(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_ex_contract_clear_ops on EX_CONTRACT_CLEAR(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_ex_contract_deduc_ops on EX_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_ex_contract_deduc_ops on EX_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ex_contract_list_ops on EX_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_ex_contract_list_ops on EX_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_ex_cop_rate_ops on EX_COP_RATE(TRADE_CO varchar_pattern_ops, CHKSTDATE, CHKENDDATE);"
create index idx_pk_ex_cop_rate_ops on EX_COP_RATE(TRADE_CO varchar_pattern_ops, CHKSTDATE, CHKENDDATE);
\timing
select now();
\echo "create index idx_pk_ex_decl_alarm_head_ops on EX_DECL_ALARM_HEAD(PRE_NO varchar_pattern_ops);"
create index idx_pk_ex_decl_alarm_head_ops on EX_DECL_ALARM_HEAD(PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_decl_alarm_list_ops on EX_DECL_ALARM_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);"
create index idx_pk_ex_decl_alarm_list_ops on EX_DECL_ALARM_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ex_decl_cur_head_ops on EX_DECL_CUR_HEAD(PRE_NO varchar_pattern_ops);"
create index idx_pk_ex_decl_cur_head_ops on EX_DECL_CUR_HEAD(PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_decl_cur_list_ops on EX_DECL_CUR_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);"
create index idx_pk_ex_decl_cur_list_ops on EX_DECL_CUR_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ex_decl_his_head_ops on EX_DECL_HIS_HEAD(PRE_NO varchar_pattern_ops);"
create index idx_pk_ex_decl_his_head_ops on EX_DECL_HIS_HEAD(PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_decl_his_list_ops on EX_DECL_HIS_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);"
create index idx_pk_ex_decl_his_list_ops on EX_DECL_HIS_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ex_ele_head_ops on EX_ELE_HEAD(LICENSE_NO varchar_pattern_ops);"
create index idx_pk_ex_ele_head_ops on EX_ELE_HEAD(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_ele_list_ops on EX_ELE_LIST(LICENSE_NO varchar_pattern_ops, L_G_NO);"
create index idx_pk_ex_ele_list_ops on EX_ELE_LIST(LICENSE_NO varchar_pattern_ops, L_G_NO);
\timing
select now();
\echo "create index idx_pk_ex_exam_jou_ops on EX_EXAM_JOU(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_ex_exam_jou_ops on EX_EXAM_JOU(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ex_exam_mana_head_ops on EX_EXAM_MANA_HEAD(LICENSE_NO varchar_pattern_ops);"
create index idx_pk_ex_exam_mana_head_ops on EX_EXAM_MANA_HEAD(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_exam_mana_list_ops on EX_EXAM_MANA_LIST(LICENSE_NO varchar_pattern_ops, L_G_NO);"
create index idx_pk_ex_exam_mana_list_ops on EX_EXAM_MANA_LIST(LICENSE_NO varchar_pattern_ops, L_G_NO);
\timing
select now();
\echo "create index idx_pk_ex_fascicle_list_ops on EX_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_ex_fascicle_list_ops on EX_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_ex_lic_code_ts_ops on EX_LIC_CODE_TS(LICENSE_NO varchar_pattern_ops);"
create index idx_pk_ex_lic_code_ts_ops on EX_LIC_CODE_TS(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_tran_jou_ops on EX_TRAN_JOU(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_ex_tran_jou_ops on EX_TRAN_JOU(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ex_trans_alarm_conta_rel_ops on EX_TRANS_ALARM_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);"
create index idx_pk_ex_trans_alarm_conta_rel_ops on EX_TRANS_ALARM_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trans_alarm_goods_conta_rel_ops on EX_TRANS_ALARM_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);"
create index idx_pk_ex_trans_alarm_goods_conta_rel_ops on EX_TRANS_ALARM_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trans_alarm_list_rel_ops on EX_TRANS_ALARM_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);"
create index idx_pk_ex_trans_alarm_list_rel_ops on EX_TRANS_ALARM_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trans_conta_rel_ops on EX_TRANS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);"
create index idx_pk_ex_trans_conta_rel_ops on EX_TRANS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trans_goods_conta_rel_ops on EX_TRANS_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);"
create index idx_pk_ex_trans_goods_conta_rel_ops on EX_TRANS_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trans_his_conta_rel_ops on EX_TRANS_HIS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);"
create index idx_pk_ex_trans_his_conta_rel_ops on EX_TRANS_HIS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trans_his_goods_conta_rel_ops on EX_TRANS_HIS_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);"
create index idx_pk_ex_trans_his_goods_conta_rel_ops on EX_TRANS_HIS_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trans_his_list_rel_ops on EX_TRANS_HIS_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);"
create index idx_pk_ex_trans_his_list_rel_ops on EX_TRANS_HIS_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trans_list_rel_ops on EX_TRANS_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);"
create index idx_pk_ex_trans_list_rel_ops on EX_TRANS_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trn_arrival_conta_ops on EX_TRN_ARRIVAL_CONTA(ARRIVE_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops);"
create index idx_pk_ex_trn_arrival_conta_ops on EX_TRN_ARRIVAL_CONTA(ARRIVE_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trn_conta_entry_arv_ops on EX_TRN_CONTA_ENTRY_ARV(ENTRY_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);"
create index idx_pk_ex_trn_conta_entry_arv_ops on EX_TRN_CONTA_ENTRY_ARV(ENTRY_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ex_trn_conta_entry_chk_ops on EX_TRN_CONTA_ENTRY_CHK(ENTRY_ID varchar_pattern_ops, ARRIVE_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops);"
create index idx_pk_ex_trn_conta_entry_chk_ops on EX_TRN_CONTA_ENTRY_CHK(ENTRY_ID varchar_pattern_ops, ARRIVE_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_exa_appl_close_ops on EXA_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_exa_appl_close_ops on EXA_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_exam_conta_end_log_ops on EXAM_CONTA_END_LOG(EXAM_REC_ID varchar_pattern_ops, END_TIME);"
create index idx_pk_exam_conta_end_log_ops on EXAM_CONTA_END_LOG(EXAM_REC_ID varchar_pattern_ops, END_TIME);
\timing
select now();
\echo "create index idx_pk_exam_conta_head_ops on EXAM_CONTA_HEAD(EXAM_REC_ID varchar_pattern_ops);"
create index idx_pk_exam_conta_head_ops on EXAM_CONTA_HEAD(EXAM_REC_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_exam_conta_list_ops on EXAM_CONTA_LIST(EXAM_REC_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);"
create index idx_pk_exam_conta_list_ops on EXAM_CONTA_LIST(EXAM_REC_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_exc_ele_ops on EXC_ELE(HXD_NO varchar_pattern_ops);"
create index idx_pk_exc_ele_ops on EXC_ELE(HXD_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_exc_ex_chk_ops on EXC_EX_CHK(HXD_NO varchar_pattern_ops);"
create index idx_pk_exc_ex_chk_ops on EXC_EX_CHK(HXD_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_exc_exam_ops on EXC_EXAM(HXD_NO varchar_pattern_ops);"
create index idx_pk_exc_exam_ops on EXC_EXAM(HXD_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_exp_mft_chk_result_ops on EXP_MFT_CHK_RESULT(VOYAGE_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_exp_mft_chk_result_ops on EXP_MFT_CHK_RESULT(VOYAGE_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_external_jou_ops on EXTERNAL_JOU(MANUAL_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, APPL_NO);"
create index idx_pk_external_jou_ops on EXTERNAL_JOU(MANUAL_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, APPL_NO);
\timing
select now();
\echo "create index idx_pk_fascicle_head_ops on FASCICLE_HEAD(FASCICLE_NO varchar_pattern_ops);"
create index idx_pk_fascicle_head_ops on FASCICLE_HEAD(FASCICLE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_fcb_chk_ops on FCB_CHK(FCB_ID varchar_pattern_ops, FORM_FLAG varchar_pattern_ops, ENTRY_ID varchar_pattern_ops);"
create index idx_pk_fcb_chk_ops on FCB_CHK(FCB_ID varchar_pattern_ops, FORM_FLAG varchar_pattern_ops, ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_fcb_conta_ops on FCB_CONTA(FCB_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);"
create index idx_pk_fcb_conta_ops on FCB_CONTA(FCB_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_fcb_conta_modi_ops on FCB_CONTA_MODI(FCB_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);"
create index idx_pk_fcb_conta_modi_ops on FCB_CONTA_MODI(FCB_ID varchar_pattern_ops, CONTA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_fcb_head_ops on FCB_HEAD(FCB_ID varchar_pattern_ops);"
create index idx_pk_fcb_head_ops on FCB_HEAD(FCB_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_fcb_head_modi_ops on FCB_HEAD_MODI(FCB_ID varchar_pattern_ops);"
create index idx_pk_fcb_head_modi_ops on FCB_HEAD_MODI(FCB_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_fcb_list_ops on FCB_LIST(FCB_ID varchar_pattern_ops, G_NO);"
create index idx_pk_fcb_list_ops on FCB_LIST(FCB_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_fcb_list_modi_ops on FCB_LIST_MODI(FCB_ID varchar_pattern_ops, G_NO);"
create index idx_pk_fcb_list_modi_ops on FCB_LIST_MODI(FCB_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_fcb_rsk_ops on FCB_RSK(FCB_ID varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_fcb_rsk_ops on FCB_RSK(FCB_ID varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_fcb_workflow_ops on FCB_WORKFLOW(FCB_ID varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_fcb_workflow_ops on FCB_WORKFLOW(FCB_ID varchar_pattern_ops, STEP_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_fee_invoice_ops on FEE_INVOICE(MANUAL_NO varchar_pattern_ops, F_NO);"
create index idx_pk_fee_invoice_ops on FEE_INVOICE(MANUAL_NO varchar_pattern_ops, F_NO);
\timing
select now();
\echo "create index idx_pk_forfeit_form_ops on FORFEIT_FORM(FMS_ID varchar_pattern_ops);"
create index idx_pk_forfeit_form_ops on FORFEIT_FORM(FMS_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_form_chk_ops on FORM_CHK(FORM_ID varchar_pattern_ops);"
create index idx_pk_form_chk_ops on FORM_CHK(FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_guarantee_del_log_ops on GUARANTEE_DEL_LOG(GUA_ID varchar_pattern_ops, DEL_DATETIME);"
create index idx_pk_guarantee_del_log_ops on GUARANTEE_DEL_LOG(GUA_ID varchar_pattern_ops, DEL_DATETIME);
\timing
select now();
\echo "create index idx_pk_guarantee_list_ops on GUARANTEE_LIST(ENTRY_ID varchar_pattern_ops, G_NO, TAX_TYPE varchar_pattern_ops);"
create index idx_pk_guarantee_list_ops on GUARANTEE_LIST(ENTRY_ID varchar_pattern_ops, G_NO, TAX_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_guarantee_r_ops on GUARANTEE_R(GUA_ID varchar_pattern_ops);"
create index idx_pk_guarantee_r_ops on GUARANTEE_R(GUA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_h2000_sms_send_ops on H2000_SMS_SEND(SEQUENCE_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, SYSTEM_ID varchar_pattern_ops, POS_ID varchar_pattern_ops, OP_TIME, PHONE_NO varchar_pattern_ops);"
create index idx_pk_h2000_sms_send_ops on H2000_SMS_SEND(SEQUENCE_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, SYSTEM_ID varchar_pattern_ops, POS_ID varchar_pattern_ops, OP_TIME, PHONE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_h2000_sms_sendlog_ops on H2000_SMS_SENDLOG(SEQUENCE_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, SYSTEM_ID varchar_pattern_ops, POS_ID varchar_pattern_ops, OP_TIME, PHONE_NO varchar_pattern_ops);"
create index idx_pk_h2000_sms_sendlog_ops on H2000_SMS_SENDLOG(SEQUENCE_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, SYSTEM_ID varchar_pattern_ops, POS_ID varchar_pattern_ops, OP_TIME, PHONE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_his_trn_cop_rel_ops on HIS_TRN_COP_REL(CO_REG_NO varchar_pattern_ops, MODI_COUNT);"
create index idx_pk_his_trn_cop_rel_ops on HIS_TRN_COP_REL(CO_REG_NO varchar_pattern_ops, MODI_COUNT);
\timing
select now();
\echo "create index idx_pk_his_trn_dr_rel_ops on HIS_TRN_DR_REL(DR_CUSTOMS_NO varchar_pattern_ops, MODI_COUNT);"
create index idx_pk_his_trn_dr_rel_ops on HIS_TRN_DR_REL(DR_CUSTOMS_NO varchar_pattern_ops, MODI_COUNT);
\timing
select now();
\echo "create index idx_pk_his_trn_eseal_rel_ops on HIS_TRN_ESEAL_REL(ESEAL_ID varchar_pattern_ops, MODI_TIME);"
create index idx_pk_his_trn_eseal_rel_ops on HIS_TRN_ESEAL_REL(ESEAL_ID varchar_pattern_ops, MODI_TIME);
\timing
select now();
\echo "create index idx_pk_his_trn_ve_rel_ops on HIS_TRN_VE_REL(VE_CUSTOMS_NO varchar_pattern_ops, MODI_COUNT);"
create index idx_pk_his_trn_ve_rel_ops on HIS_TRN_VE_REL(VE_CUSTOMS_NO varchar_pattern_ops, MODI_COUNT);
\timing
select now();
\echo "create index idx_pk_im_appl_close_ops on IM_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_im_appl_close_ops on IM_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_im_cdl_mnl_deduct_ops on IM_CDL_MNL_DEDUCT(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_im_cdl_mnl_deduct_ops on IM_CDL_MNL_DEDUCT(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_im_contract_clear_ops on IM_CONTRACT_CLEAR(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_im_contract_clear_ops on IM_CONTRACT_CLEAR(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_im_contract_deduc_ops on IM_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_im_contract_deduc_ops on IM_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_im_contract_list_ops on IM_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_im_contract_list_ops on IM_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_im_cop_rate_ops on IM_COP_RATE(TRADE_CO varchar_pattern_ops, CHKSTDATE, CHKENDDATE);"
create index idx_pk_im_cop_rate_ops on IM_COP_RATE(TRADE_CO varchar_pattern_ops, CHKSTDATE, CHKENDDATE);
\timing
select now();
\echo "create index idx_pk_im_decl_alarm_head_ops on IM_DECL_ALARM_HEAD(PRE_NO varchar_pattern_ops);"
create index idx_pk_im_decl_alarm_head_ops on IM_DECL_ALARM_HEAD(PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_decl_alarm_list_ops on IM_DECL_ALARM_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);"
create index idx_pk_im_decl_alarm_list_ops on IM_DECL_ALARM_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_im_decl_cur_head_ops on IM_DECL_CUR_HEAD(PRE_NO varchar_pattern_ops);"
create index idx_pk_im_decl_cur_head_ops on IM_DECL_CUR_HEAD(PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_decl_cur_list_ops on IM_DECL_CUR_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);"
create index idx_pk_im_decl_cur_list_ops on IM_DECL_CUR_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_im_decl_his_head_ops on IM_DECL_HIS_HEAD(PRE_NO varchar_pattern_ops);"
create index idx_pk_im_decl_his_head_ops on IM_DECL_HIS_HEAD(PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_decl_his_list_ops on IM_DECL_HIS_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);"
create index idx_pk_im_decl_his_list_ops on IM_DECL_HIS_LIST(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_im_ele_head_ops on IM_ELE_HEAD(LICENSE_NO varchar_pattern_ops);"
create index idx_pk_im_ele_head_ops on IM_ELE_HEAD(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_ele_list_ops on IM_ELE_LIST(LICENSE_NO varchar_pattern_ops, L_G_NO);"
create index idx_pk_im_ele_list_ops on IM_ELE_LIST(LICENSE_NO varchar_pattern_ops, L_G_NO);
\timing
select now();
\echo "create index idx_pk_im_exam_jou_ops on IM_EXAM_JOU(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_im_exam_jou_ops on IM_EXAM_JOU(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_im_exam_mana_head_ops on IM_EXAM_MANA_HEAD(LICENSE_NO varchar_pattern_ops);"
create index idx_pk_im_exam_mana_head_ops on IM_EXAM_MANA_HEAD(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_exam_mana_list_ops on IM_EXAM_MANA_LIST(LICENSE_NO varchar_pattern_ops, L_G_NO);"
create index idx_pk_im_exam_mana_list_ops on IM_EXAM_MANA_LIST(LICENSE_NO varchar_pattern_ops, L_G_NO);
\timing
select now();
\echo "create index idx_pk_im_fascicle_list_ops on IM_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_im_fascicle_list_ops on IM_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_im_lic_code_ts_ops on IM_LIC_CODE_TS(LICENSE_NO varchar_pattern_ops);"
create index idx_pk_im_lic_code_ts_ops on IM_LIC_CODE_TS(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_tran_jou_ops on IM_TRAN_JOU(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_im_tran_jou_ops on IM_TRAN_JOU(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_im_trans_alarm_conta_rel_ops on IM_TRANS_ALARM_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);"
create index idx_pk_im_trans_alarm_conta_rel_ops on IM_TRANS_ALARM_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_trans_alarm_goods_conta_rel_ops on IM_TRANS_ALARM_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);"
create index idx_pk_im_trans_alarm_goods_conta_rel_ops on IM_TRANS_ALARM_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_trans_alarm_list_rel_ops on IM_TRANS_ALARM_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);"
create index idx_pk_im_trans_alarm_list_rel_ops on IM_TRANS_ALARM_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_trans_conta_rel_ops on IM_TRANS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);"
create index idx_pk_im_trans_conta_rel_ops on IM_TRANS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_trans_goods_conta_rel_ops on IM_TRANS_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);"
create index idx_pk_im_trans_goods_conta_rel_ops on IM_TRANS_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_trans_his_conta_rel_ops on IM_TRANS_HIS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);"
create index idx_pk_im_trans_his_conta_rel_ops on IM_TRANS_HIS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_trans_his_goods_conta_rel_ops on IM_TRANS_HIS_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);"
create index idx_pk_im_trans_his_goods_conta_rel_ops on IM_TRANS_HIS_GOODS_CONTA_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops, G_NO, CONTA_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_trans_his_list_rel_ops on IM_TRANS_HIS_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);"
create index idx_pk_im_trans_his_list_rel_ops on IM_TRANS_HIS_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_im_trans_list_rel_ops on IM_TRANS_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);"
create index idx_pk_im_trans_list_rel_ops on IM_TRANS_LIST_REL(PRE_NO varchar_pattern_ops, RECORD_NUMBER varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ima_appl_close_ops on IMA_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_ima_appl_close_ops on IMA_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_income_info_ops on INCOME_INFO(RPTNO varchar_pattern_ops);"
create index idx_pk_income_info_ops on INCOME_INFO(RPTNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_invester_rel_ops on INVESTER_REL(TRADE_CO varchar_pattern_ops, INV_NO);"
create index idx_pk_invester_rel_ops on INVESTER_REL(TRADE_CO varchar_pattern_ops, INV_NO);
\timing
\timing
select now();
\echo "create index idx_pk_job_parameter_ops on JOB_PARAMETER(JOB_NAME varchar_pattern_ops, PARAMETER_NAME varchar_pattern_ops, PARAMETER_VALUE varchar_pattern_ops);"
create index idx_pk_job_parameter_ops on JOB_PARAMETER(JOB_NAME varchar_pattern_ops, PARAMETER_NAME varchar_pattern_ops, PARAMETER_VALUE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_lsp_chk_ops on LSP_CHK(LSP_ID varchar_pattern_ops, LSP_TYPE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_lsp_chk_ops on LSP_CHK(LSP_ID varchar_pattern_ops, LSP_TYPE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_lsp_head_ops on LSP_HEAD(LSP_ID varchar_pattern_ops, LSP_TYPE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);"
create index idx_pk_lsp_head_ops on LSP_HEAD(LSP_ID varchar_pattern_ops, LSP_TYPE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_lsp_list_ops on LSP_LIST(LSP_ID varchar_pattern_ops, LSP_TYPE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, G_NO);"
create index idx_pk_lsp_list_ops on LSP_LIST(LSP_ID varchar_pattern_ops, LSP_TYPE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, G_NO);
\timing
\timing
select now();
\echo "create index idx_pk_mana_rel_ops on MANA_REL(TRADE_CO varchar_pattern_ops, MANAG_NO);"
create index idx_pk_mana_rel_ops on MANA_REL(TRADE_CO varchar_pattern_ops, MANAG_NO);
\timing
select now();
\echo "create index idx_pk_manifest_chk_ops on MANIFEST_CHK(BILL_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, FORM_ID varchar_pattern_ops);"
create index idx_pk_manifest_chk_ops on MANIFEST_CHK(BILL_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_manifest_chk_log_ops on MANIFEST_CHK_LOG(FORM_ID varchar_pattern_ops, CREATE_DATE, BILL_NO varchar_pattern_ops);"
create index idx_pk_manifest_chk_log_ops on MANIFEST_CHK_LOG(FORM_ID varchar_pattern_ops, CREATE_DATE, BILL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_manifest_conta_ops on MANIFEST_CONTA(VOYAGE_NO varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, BILL_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops, SHIP_ID varchar_pattern_ops);"
create index idx_pk_manifest_conta_ops on MANIFEST_CONTA(VOYAGE_NO varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, BILL_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops, SHIP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_manifest_exch_log_ops on MANIFEST_EXCH_LOG(CUSTOMS_CODE varchar_pattern_ops, SHIP_ID varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, BILL_NO varchar_pattern_ops, I_E_DATE);"
create index idx_pk_manifest_exch_log_ops on MANIFEST_EXCH_LOG(CUSTOMS_CODE varchar_pattern_ops, SHIP_ID varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, BILL_NO varchar_pattern_ops, I_E_DATE);
\timing
select now();
\echo "create index idx_pk_manifest_exch_log_bak_ops on MANIFEST_EXCH_LOG_BAK(CUSTOMS_CODE varchar_pattern_ops, SHIP_ID varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, BILL_NO varchar_pattern_ops, I_E_DATE, CREATE_DATE);"
create index idx_pk_manifest_exch_log_bak_ops on MANIFEST_EXCH_LOG_BAK(CUSTOMS_CODE varchar_pattern_ops, SHIP_ID varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, BILL_NO varchar_pattern_ops, I_E_DATE, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_manifest_head_ops on MANIFEST_HEAD(I_E_FLAG varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE);"
create index idx_pk_manifest_head_ops on MANIFEST_HEAD(I_E_FLAG varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE);
\timing
select now();
\echo "create index idx_pk_manifest_head_xms_log_ops on MANIFEST_HEAD_XMS_LOG(VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, I_E_DATE, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);"
create index idx_pk_manifest_head_xms_log_ops on MANIFEST_HEAD_XMS_LOG(VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, I_E_DATE, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_manifest_list_ops on MANIFEST_LIST(BILL_NO varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);"
create index idx_pk_manifest_list_ops on MANIFEST_LIST(BILL_NO varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_manifest_list_conta_ops on MANIFEST_LIST_CONTA(VOYAGE_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, BILL_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops, SHIP_ID varchar_pattern_ops);"
create index idx_pk_manifest_list_conta_ops on MANIFEST_LIST_CONTA(VOYAGE_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, BILL_NO varchar_pattern_ops, CONTA_ID varchar_pattern_ops, SHIP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_manifest_list_log_ops on MANIFEST_LIST_LOG(I_E_FLAG varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, BILL_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, CREATE_DATE, I_E_DATE);"
create index idx_pk_manifest_list_log_ops on MANIFEST_LIST_LOG(I_E_FLAG varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, BILL_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, CREATE_DATE, I_E_DATE);
\timing
select now();
\echo "create index idx_pk_manifest_list_rskinfo_log_ops on MANIFEST_LIST_RSKINFO_LOG(BILL_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, RSK_DATE);"
create index idx_pk_manifest_list_rskinfo_log_ops on MANIFEST_LIST_RSKINFO_LOG(BILL_NO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, VOYAGE_NO varchar_pattern_ops, SHIP_ID varchar_pattern_ops, I_E_DATE, TRAF_MODE varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, RSK_DATE);
\timing
select now();
\echo "create index idx_pk_mnl_para_ops on MNL_PARA(PARA_TYPE varchar_pattern_ops, PARA_ID varchar_pattern_ops);"
create index idx_pk_mnl_para_ops on MNL_PARA(PARA_TYPE varchar_pattern_ops, PARA_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnl_press_ops on MNL_PRESS(PARA_TYPE varchar_pattern_ops, PARA_NAME varchar_pattern_ops);"
create index idx_pk_mnl_press_ops on MNL_PRESS(PARA_TYPE varchar_pattern_ops, PARA_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnl_receive_receipt_ops on MNL_RECEIVE_RECEIPT(MANUAL_NO varchar_pattern_ops, SEND_CUSTOMS varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, H2000_RECEIVE_DATE);"
create index idx_pk_mnl_receive_receipt_ops on MNL_RECEIVE_RECEIPT(MANUAL_NO varchar_pattern_ops, SEND_CUSTOMS varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops, H2000_RECEIVE_DATE);
\timing
select now();
\echo "create index idx_pk_mnl_seq_ops on MNL_SEQ(MNL_KEY varchar_pattern_ops);"
create index idx_pk_mnl_seq_ops on MNL_SEQ(MNL_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnlbak_account_ops on MNLBAK_ACCOUNT(MANUAL_NO varchar_pattern_ops, ID_STAT varchar_pattern_ops);"
create index idx_pk_mnlbak_account_ops on MNLBAK_ACCOUNT(MANUAL_NO varchar_pattern_ops, ID_STAT varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnlbak_appl_close_ops on MNLBAK_APPL_CLOSE(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_mnlbak_appl_close_ops on MNLBAK_APPL_CLOSE(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnlbak_claim_ops on MNLBAK_CLAIM(GUARANTEE_NO varchar_pattern_ops);"
create index idx_pk_mnlbak_claim_ops on MNLBAK_CLAIM(GUARANTEE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnlbak_consume_ops on MNLBAK_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);"
create index idx_pk_mnlbak_consume_ops on MNLBAK_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);
\timing
select now();
\echo "create index idx_pk_mnlbak_contract_head_ops on MNLBAK_CONTRACT_HEAD(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_mnlbak_contract_head_ops on MNLBAK_CONTRACT_HEAD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnlbak_contract_workflow_ops on MNLBAK_CONTRACT_WORKFLOW(MANUAL_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, PROC_DATE);"
create index idx_pk_mnlbak_contract_workflow_ops on MNLBAK_CONTRACT_WORKFLOW(MANUAL_NO varchar_pattern_ops, STEP_ID varchar_pattern_ops, PROC_DATE);
\timing
select now();
\echo "create index idx_pk_mnlbak_ex_contract_clear_ops on MNLBAK_EX_CONTRACT_CLEAR(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_mnlbak_ex_contract_clear_ops on MNLBAK_EX_CONTRACT_CLEAR(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_mnlbak_ex_contract_deduc_ops on MNLBAK_EX_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_mnlbak_ex_contract_deduc_ops on MNLBAK_EX_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_mnlbak_ex_contract_list_ops on MNLBAK_EX_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_mnlbak_ex_contract_list_ops on MNLBAK_EX_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_mnlbak_ex_fascicle_list_ops on MNLBAK_EX_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_mnlbak_ex_fascicle_list_ops on MNLBAK_EX_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_mnlbak_fascicle_head_ops on MNLBAK_FASCICLE_HEAD(FASCICLE_NO varchar_pattern_ops);"
create index idx_pk_mnlbak_fascicle_head_ops on MNLBAK_FASCICLE_HEAD(FASCICLE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnlbak_fee_invoice_ops on MNLBAK_FEE_INVOICE(MANUAL_NO varchar_pattern_ops, F_NO);"
create index idx_pk_mnlbak_fee_invoice_ops on MNLBAK_FEE_INVOICE(MANUAL_NO varchar_pattern_ops, F_NO);
\timing
select now();
\echo "create index idx_pk_mnlbak_im_contract_clear_ops on MNLBAK_IM_CONTRACT_CLEAR(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_mnlbak_im_contract_clear_ops on MNLBAK_IM_CONTRACT_CLEAR(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_mnlbak_im_contract_deduc_ops on MNLBAK_IM_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_mnlbak_im_contract_deduc_ops on MNLBAK_IM_CONTRACT_DEDUC(MANUAL_NO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_mnlbak_im_contract_list_ops on MNLBAK_IM_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_mnlbak_im_contract_list_ops on MNLBAK_IM_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_mnlbak_im_fascicle_list_ops on MNLBAK_IM_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_mnlbak_im_fascicle_list_ops on MNLBAK_IM_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_mnlbak_press_clear_ops on MNLBAK_PRESS_CLEAR(MANUAL_NO varchar_pattern_ops, PR_NO varchar_pattern_ops);"
create index idx_pk_mnlbak_press_clear_ops on MNLBAK_PRESS_CLEAR(MANUAL_NO varchar_pattern_ops, PR_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnlbak_service_fee_ops on MNLBAK_SERVICE_FEE(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_mnlbak_service_fee_ops on MNLBAK_SERVICE_FEE(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_mnlbak_service_list_ops on MNLBAK_SERVICE_LIST(MANUAL_NO varchar_pattern_ops, F_NO);"
create index idx_pk_mnlbak_service_list_ops on MNLBAK_SERVICE_LIST(MANUAL_NO varchar_pattern_ops, F_NO);
\timing
select now();
\echo "create index idx_pk_mod_project_head_ops on MOD_PROJECT_HEAD(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES);"
create index idx_pk_mod_project_head_ops on MOD_PROJECT_HEAD(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_mod_project_list_ops on MOD_PROJECT_LIST(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);"
create index idx_pk_mod_project_list_ops on MOD_PROJECT_LIST(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);
\timing
select now();
\echo "create index idx_pk_mod_red_head_ops on MOD_RED_HEAD(CUT_ID varchar_pattern_ops, MODIFY_TIMES);"
create index idx_pk_mod_red_head_ops on MOD_RED_HEAD(CUT_ID varchar_pattern_ops, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_mod_red_list_ops on MOD_RED_LIST(CUT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);"
create index idx_pk_mod_red_list_ops on MOD_RED_LIST(CUT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);
\timing
select now();
\echo "create index idx_pk_nonentry_chk_result_ops on NONENTRY_CHK_RESULT(RSK_NO varchar_pattern_ops);"
create index idx_pk_nonentry_chk_result_ops on NONENTRY_CHK_RESULT(RSK_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_norsk_company_ops on NORSK_COMPANY(CCTS_CODE varchar_pattern_ops);"
create index idx_pk_norsk_company_ops on NORSK_COMPANY(CCTS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_norsk_company_bak_ops on NORSK_COMPANY_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_norsk_company_bak_ops on NORSK_COMPANY_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_norsk_condition_ops on NORSK_CONDITION(CCTS_CODE varchar_pattern_ops);"
create index idx_pk_norsk_condition_ops on NORSK_CONDITION(CCTS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_norsk_condition_bak_ops on NORSK_CONDITION_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_norsk_condition_bak_ops on NORSK_CONDITION_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_norsk_trade_mode_ops on NORSK_TRADE_MODE(CCTS_CODE varchar_pattern_ops);"
create index idx_pk_norsk_trade_mode_ops on NORSK_TRADE_MODE(CCTS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_norsk_trade_mode_bak_ops on NORSK_TRADE_MODE_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_norsk_trade_mode_bak_ops on NORSK_TRADE_MODE_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_occ_ele_head_ops on OCC_ELE_HEAD(CERTIFICATE_NO varchar_pattern_ops, AGREEMENT_ID varchar_pattern_ops, ISSUE_PLACE varchar_pattern_ops);"
create index idx_pk_occ_ele_head_ops on OCC_ELE_HEAD(CERTIFICATE_NO varchar_pattern_ops, AGREEMENT_ID varchar_pattern_ops, ISSUE_PLACE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_occ_ele_list_ops on OCC_ELE_LIST(CERTIFICATE_NO varchar_pattern_ops, AGREEMENT_ID varchar_pattern_ops, ISSUE_PLACE varchar_pattern_ops, G_NO varchar_pattern_ops);"
create index idx_pk_occ_ele_list_ops on OCC_ELE_LIST(CERTIFICATE_NO varchar_pattern_ops, AGREEMENT_ID varchar_pattern_ops, ISSUE_PLACE varchar_pattern_ops, G_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_occ_exam_ops on OCC_EXAM(CERTIFICATE_NO varchar_pattern_ops, AGREEMENT_ID varchar_pattern_ops, ISSUE_PLACE varchar_pattern_ops, G_NO varchar_pattern_ops, ENTRY_G_NO);"
create index idx_pk_occ_exam_ops on OCC_EXAM(CERTIFICATE_NO varchar_pattern_ops, AGREEMENT_ID varchar_pattern_ops, ISSUE_PLACE varchar_pattern_ops, G_NO varchar_pattern_ops, ENTRY_G_NO);
\timing
select now();
\echo "create index idx_pk_occ_receipt_ops on OCC_RECEIPT(CERTIFICATE_NO varchar_pattern_ops, AGREEMENT_ID varchar_pattern_ops, ISSUE_PLACE varchar_pattern_ops);"
create index idx_pk_occ_receipt_ops on OCC_RECEIPT(CERTIFICATE_NO varchar_pattern_ops, AGREEMENT_ID varchar_pattern_ops, ISSUE_PLACE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_other_stf_record_ops on OTHER_STF_RECORD(OTHER_ID varchar_pattern_ops, ID_TYPE varchar_pattern_ops);"
create index idx_pk_other_stf_record_ops on OTHER_STF_RECORD(OTHER_ID varchar_pattern_ops, ID_TYPE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_paperless_selfsave_cert_ops on PAPERLESS_SELFSAVE_CERT(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_paperless_selfsave_cert_ops on PAPERLESS_SELFSAVE_CERT(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_payout_remit_head_ops on PAYOUT_REMIT_HEAD(RPTNO varchar_pattern_ops);"
create index idx_pk_payout_remit_head_ops on PAYOUT_REMIT_HEAD(RPTNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_payout_remit_list_ops on PAYOUT_REMIT_LIST(RPTNO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops);"
create index idx_pk_payout_remit_list_ops on PAYOUT_REMIT_LIST(RPTNO varchar_pattern_ops, ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pes_cancel_ops on PES_CANCEL(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_pes_cancel_ops on PES_CANCEL(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pes_note_ops on PES_NOTE(NOTE_NO varchar_pattern_ops);"
create index idx_pk_pes_note_ops on PES_NOTE(NOTE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pes_workflow_ops on PES_WORKFLOW(NOTE_NO varchar_pattern_ops, NOTE_TYPE varchar_pattern_ops, PROCESS_DATE, STEP_ID varchar_pattern_ops);"
create index idx_pk_pes_workflow_ops on PES_WORKFLOW(NOTE_NO varchar_pattern_ops, NOTE_TYPE varchar_pattern_ops, PROCESS_DATE, STEP_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_port_bind_rel_ops on PORT_BIND_REL(BIND_NO varchar_pattern_ops, PRE_NO varchar_pattern_ops);"
create index idx_pk_port_bind_rel_ops on PORT_BIND_REL(BIND_NO varchar_pattern_ops, PRE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pre_appl_close_ops on PRE_APPL_CLOSE(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_pre_appl_close_ops on PRE_APPL_CLOSE(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pre_appl_close_consume_ops on PRE_APPL_CLOSE_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);"
create index idx_pk_pre_appl_close_consume_ops on PRE_APPL_CLOSE_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);
\timing
select now();
\echo "create index idx_pk_pre_cdl_commodity_ops on PRE_CDL_COMMODITY(PRE_RECORDS_NO varchar_pattern_ops, RECORDS_DATE, G_NO);"
create index idx_pk_pre_cdl_commodity_ops on PRE_CDL_COMMODITY(PRE_RECORDS_NO varchar_pattern_ops, RECORDS_DATE, G_NO);
\timing
select now();
\echo "create index idx_pk_pre_cdl_company_ops on PRE_CDL_COMPANY(TRADE_CO varchar_pattern_ops, RECORDS_DATE, TRADE_BONDED_FLAG varchar_pattern_ops);"
create index idx_pk_pre_cdl_company_ops on PRE_CDL_COMPANY(TRADE_CO varchar_pattern_ops, RECORDS_DATE, TRADE_BONDED_FLAG varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pre_company_rel_ops on PRE_COMPANY_REL(PRE_TRADE_CO varchar_pattern_ops);"
create index idx_pk_pre_company_rel_ops on PRE_COMPANY_REL(PRE_TRADE_CO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pre_consume_ops on PRE_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);"
create index idx_pk_pre_consume_ops on PRE_CONSUME(MANUAL_NO varchar_pattern_ops, CONTR_ITEM, EX_NO);
\timing
select now();
\echo "create index idx_pk_pre_contract_head_ops on PRE_CONTRACT_HEAD(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_pre_contract_head_ops on PRE_CONTRACT_HEAD(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pre_decl_rel_ops on PRE_DECL_REL(DECL_TRAIN_CO varchar_pattern_ops);"
create index idx_pk_pre_decl_rel_ops on PRE_DECL_REL(DECL_TRAIN_CO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pre_ex_appl_close_ops on PRE_EX_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_pre_ex_appl_close_ops on PRE_EX_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_pre_ex_contract_list_ops on PRE_EX_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_pre_ex_contract_list_ops on PRE_EX_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_pre_ex_fascicle_list_ops on PRE_EX_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_pre_ex_fascicle_list_ops on PRE_EX_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_pre_exa_appl_close_ops on PRE_EXA_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_pre_exa_appl_close_ops on PRE_EXA_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_pre_fascicle_head_ops on PRE_FASCICLE_HEAD(FASCICLE_NO varchar_pattern_ops);"
create index idx_pk_pre_fascicle_head_ops on PRE_FASCICLE_HEAD(FASCICLE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_pre_im_appl_close_ops on PRE_IM_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_pre_im_appl_close_ops on PRE_IM_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_pre_im_contract_list_ops on PRE_IM_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_pre_im_contract_list_ops on PRE_IM_CONTRACT_LIST(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_pre_im_fascicle_list_ops on PRE_IM_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_pre_im_fascicle_list_ops on PRE_IM_FASCICLE_LIST(FASCICLE_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_pre_ima_appl_close_ops on PRE_IMA_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);"
create index idx_pk_pre_ima_appl_close_ops on PRE_IMA_APPL_CLOSE(MANUAL_NO varchar_pattern_ops, CONTR_ITEM);
\timing
select now();
\echo "create index idx_pk_pre_invester_rel_ops on PRE_INVESTER_REL(PRE_TRADE_CO varchar_pattern_ops, INV_NO);"
create index idx_pk_pre_invester_rel_ops on PRE_INVESTER_REL(PRE_TRADE_CO varchar_pattern_ops, INV_NO);
\timing
select now();
\echo "create index idx_pk_pre_mana_rel_ops on PRE_MANA_REL(PRE_TRADE_CO varchar_pattern_ops, MANAG_NO);"
create index idx_pk_pre_mana_rel_ops on PRE_MANA_REL(PRE_TRADE_CO varchar_pattern_ops, MANAG_NO);
\timing
select now();
\echo "create index idx_pk_pre_project_head_ops on PRE_PROJECT_HEAD(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES);"
create index idx_pk_pre_project_head_ops on PRE_PROJECT_HEAD(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_pre_project_list_ops on PRE_PROJECT_LIST(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);"
create index idx_pk_pre_project_list_ops on PRE_PROJECT_LIST(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);
\timing
select now();
\echo "create index idx_pk_pre_red_head_ops on PRE_RED_HEAD(CUT_ID varchar_pattern_ops, MODIFY_TIMES);"
create index idx_pk_pre_red_head_ops on PRE_RED_HEAD(CUT_ID varchar_pattern_ops, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_pre_red_list_ops on PRE_RED_LIST(CUT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);"
create index idx_pk_pre_red_list_ops on PRE_RED_LIST(CUT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);
\timing
select now();
\echo "create index idx_pk_pre_rel_alc_work_ops on PRE_REL_ALC_WORK(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_pre_rel_alc_work_ops on PRE_REL_ALC_WORK(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_press_clear_ops on PRESS_CLEAR(MANUAL_NO varchar_pattern_ops, PR_NO varchar_pattern_ops);"
create index idx_pk_press_clear_ops on PRESS_CLEAR(MANUAL_NO varchar_pattern_ops, PR_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_price_library_ops on PRICE_LIBRARY(REC_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, REC_TYPE varchar_pattern_ops, CREATE_DATE, POST_MARK);"
create index idx_pk_price_library_ops on PRICE_LIBRARY(REC_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, REC_TYPE varchar_pattern_ops, CREATE_DATE, POST_MARK);
\timing
select now();
\echo "create index idx_pk_price_library_entry_ops on PRICE_LIBRARY_ENTRY(REC_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, REC_TYPE varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_price_library_entry_ops on PRICE_LIBRARY_ENTRY(REC_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, REC_TYPE varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_price_library_man_ops on PRICE_LIBRARY_MAN(REC_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, REC_TYPE varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_price_library_man_ops on PRICE_LIBRARY_MAN(REC_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, REC_TYPE varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_price_library_risk_ops on PRICE_LIBRARY_RISK(REC_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, REC_TYPE varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_price_library_risk_ops on PRICE_LIBRARY_RISK(REC_NO varchar_pattern_ops, I_E_FLAG varchar_pattern_ops, REC_TYPE varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_project_head_ops on PROJECT_HEAD(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES);"
create index idx_pk_project_head_ops on PROJECT_HEAD(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_project_list_ops on PROJECT_LIST(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);"
create index idx_pk_project_list_ops on PROJECT_LIST(PROJECT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);
\timing
select now();
\echo "create index idx_pk_project_max_no_ops on PROJECT_MAX_NO(MASTER_CUSTOMS varchar_pattern_ops, YEAR_2 varchar_pattern_ops, CUT_MODE varchar_pattern_ops);"
create index idx_pk_project_max_no_ops on PROJECT_MAX_NO(MASTER_CUSTOMS varchar_pattern_ops, YEAR_2 varchar_pattern_ops, CUT_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_project_max_no_2007_ops on PROJECT_MAX_NO_2007(MASTER_CUSTOMS varchar_pattern_ops, YEAR_4 varchar_pattern_ops, CUT_MODE varchar_pattern_ops);"
create index idx_pk_project_max_no_2007_ops on PROJECT_MAX_NO_2007(MASTER_CUSTOMS varchar_pattern_ops, YEAR_4 varchar_pattern_ops, CUT_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ram_head_ops on RAM_HEAD(RAM_ID varchar_pattern_ops);"
create index idx_pk_ram_head_ops on RAM_HEAD(RAM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ram_list_ops on RAM_LIST(RAM_ID varchar_pattern_ops, NUM);"
create index idx_pk_ram_list_ops on RAM_LIST(RAM_ID varchar_pattern_ops, NUM);
\timing
select now();
\echo "create index idx_pk_ram_print_log_ops on RAM_PRINT_LOG(RAM_ID varchar_pattern_ops, PRINT_DATE);"
create index idx_pk_ram_print_log_ops on RAM_PRINT_LOG(RAM_ID varchar_pattern_ops, PRINT_DATE);
\timing
select now();
\echo "create index idx_pk_ram_rg_cop_owner_ops on RAM_RG_COP_OWNER(RAM_ID varchar_pattern_ops, TYPE varchar_pattern_ops, COP_NO varchar_pattern_ops, OWNER_NO varchar_pattern_ops);"
create index idx_pk_ram_rg_cop_owner_ops on RAM_RG_COP_OWNER(RAM_ID varchar_pattern_ops, TYPE varchar_pattern_ops, COP_NO varchar_pattern_ops, OWNER_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ram_rg_cop_project_ops on RAM_RG_COP_PROJECT(RAM_ID varchar_pattern_ops, TYPE varchar_pattern_ops, COP_NO varchar_pattern_ops, PROJECT_NO varchar_pattern_ops);"
create index idx_pk_ram_rg_cop_project_ops on RAM_RG_COP_PROJECT(RAM_ID varchar_pattern_ops, TYPE varchar_pattern_ops, COP_NO varchar_pattern_ops, PROJECT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ram_rg_copinfo_ops on RAM_RG_COPINFO(RAM_ID varchar_pattern_ops, TYPE varchar_pattern_ops, COP_NO varchar_pattern_ops);"
create index idx_pk_ram_rg_copinfo_ops on RAM_RG_COPINFO(RAM_ID varchar_pattern_ops, TYPE varchar_pattern_ops, COP_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ram_rg_head_ops on RAM_RG_HEAD(RAM_ID varchar_pattern_ops);"
create index idx_pk_ram_rg_head_ops on RAM_RG_HEAD(RAM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ram_rn_info_ops on RAM_RN_INFO(RAM_ID varchar_pattern_ops);"
create index idx_pk_ram_rn_info_ops on RAM_RN_INFO(RAM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ram_ry_communication_ops on RAM_RY_COMMUNICATION(RAM_ID varchar_pattern_ops, SEQ_NO varchar_pattern_ops);"
create index idx_pk_ram_ry_communication_ops on RAM_RY_COMMUNICATION(RAM_ID varchar_pattern_ops, SEQ_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_ram_status_ops on RAM_STATUS(CUT_ID varchar_pattern_ops, G_NO);"
create index idx_pk_ram_status_ops on RAM_STATUS(CUT_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ram_status_list_ops on RAM_STATUS_LIST(CUT_ID varchar_pattern_ops, G_NO);"
create index idx_pk_ram_status_list_ops on RAM_STATUS_LIST(CUT_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_ram_status_modi_log_ops on RAM_STATUS_MODI_LOG(CUT_ID varchar_pattern_ops, G_NO, MODIFY_DATE, FIELD_NAME varchar_pattern_ops);"
create index idx_pk_ram_status_modi_log_ops on RAM_STATUS_MODI_LOG(CUT_ID varchar_pattern_ops, G_NO, MODIFY_DATE, FIELD_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rcp_income_head_ops on RCP_INCOME_HEAD(LEVYNO varchar_pattern_ops);"
create index idx_pk_rcp_income_head_ops on RCP_INCOME_HEAD(LEVYNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rcp_income_head_bak_ops on RCP_INCOME_HEAD_BAK(LEVYNO varchar_pattern_ops);"
create index idx_pk_rcp_income_head_bak_ops on RCP_INCOME_HEAD_BAK(LEVYNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rcp_income_list_ops on RCP_INCOME_LIST(LEVYNO varchar_pattern_ops, LISTNO);"
create index idx_pk_rcp_income_list_ops on RCP_INCOME_LIST(LEVYNO varchar_pattern_ops, LISTNO);
\timing
select now();
\echo "create index idx_pk_rcp_income_list_bak_ops on RCP_INCOME_LIST_BAK(LEVYNO varchar_pattern_ops, LISTNO);"
create index idx_pk_rcp_income_list_bak_ops on RCP_INCOME_LIST_BAK(LEVYNO varchar_pattern_ops, LISTNO);
\timing
select now();
\echo "create index idx_pk_rcp_payment_head_ops on RCP_PAYMENT_HEAD(LEVYNO varchar_pattern_ops);"
create index idx_pk_rcp_payment_head_ops on RCP_PAYMENT_HEAD(LEVYNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rcp_payment_head_bak_ops on RCP_PAYMENT_HEAD_BAK(LEVYNO varchar_pattern_ops);"
create index idx_pk_rcp_payment_head_bak_ops on RCP_PAYMENT_HEAD_BAK(LEVYNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rcp_payment_list_ops on RCP_PAYMENT_LIST(LEVYNO varchar_pattern_ops, LISTNO);"
create index idx_pk_rcp_payment_list_ops on RCP_PAYMENT_LIST(LEVYNO varchar_pattern_ops, LISTNO);
\timing
select now();
\echo "create index idx_pk_rcp_payment_list_bak_ops on RCP_PAYMENT_LIST_BAK(LEVYNO varchar_pattern_ops, LISTNO);"
create index idx_pk_rcp_payment_list_bak_ops on RCP_PAYMENT_LIST_BAK(LEVYNO varchar_pattern_ops, LISTNO);
\timing
select now();
\echo "create index idx_pk_rcp_record_head_ops on RCP_RECORD_HEAD(LEVYNO varchar_pattern_ops);"
create index idx_pk_rcp_record_head_ops on RCP_RECORD_HEAD(LEVYNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rcp_record_head_bak_ops on RCP_RECORD_HEAD_BAK(LEVYNO varchar_pattern_ops);"
create index idx_pk_rcp_record_head_bak_ops on RCP_RECORD_HEAD_BAK(LEVYNO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rcp_record_list_ops on RCP_RECORD_LIST(LEVYNO varchar_pattern_ops, LISTNO);"
create index idx_pk_rcp_record_list_ops on RCP_RECORD_LIST(LEVYNO varchar_pattern_ops, LISTNO);
\timing
select now();
\echo "create index idx_pk_rcp_record_list_bak_ops on RCP_RECORD_LIST_BAK(LEVYNO varchar_pattern_ops, LISTNO);"
create index idx_pk_rcp_record_list_bak_ops on RCP_RECORD_LIST_BAK(LEVYNO varchar_pattern_ops, LISTNO);
\timing
select now();
\echo "create index idx_pk_rcp_workflow_ops on RCP_WORKFLOW(LEVYNO varchar_pattern_ops, TRANSFER_NUM varchar_pattern_ops, PROCESS_STATUS varchar_pattern_ops, PROCESS_DATE);"
create index idx_pk_rcp_workflow_ops on RCP_WORKFLOW(LEVYNO varchar_pattern_ops, TRANSFER_NUM varchar_pattern_ops, PROCESS_STATUS varchar_pattern_ops, PROCESS_DATE);
\timing
select now();
\echo "create index idx_pk_red_entry_head_ops on RED_ENTRY_HEAD(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_red_entry_head_ops on RED_ENTRY_HEAD(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_red_entry_list_ops on RED_ENTRY_LIST(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_red_entry_list_ops on RED_ENTRY_LIST(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_red_fee_invoice_ops on RED_FEE_INVOICE(MANUAL_NO varchar_pattern_ops, FEE_ID);"
create index idx_pk_red_fee_invoice_ops on RED_FEE_INVOICE(MANUAL_NO varchar_pattern_ops, FEE_ID);
\timing
select now();
\echo "create index idx_pk_red_head_ops on RED_HEAD(CUT_ID varchar_pattern_ops, MODIFY_TIMES);"
create index idx_pk_red_head_ops on RED_HEAD(CUT_ID varchar_pattern_ops, MODIFY_TIMES);
\timing
select now();
\echo "create index idx_pk_red_list_ops on RED_LIST(CUT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);"
create index idx_pk_red_list_ops on RED_LIST(CUT_ID varchar_pattern_ops, MODIFY_TIMES, G_NO);
\timing
select now();
\echo "create index idx_pk_red_max_no_ops on RED_MAX_NO(MASTER_CUSTOMS varchar_pattern_ops, YEAR_1 varchar_pattern_ops, CLASS varchar_pattern_ops);"
create index idx_pk_red_max_no_ops on RED_MAX_NO(MASTER_CUSTOMS varchar_pattern_ops, YEAR_1 varchar_pattern_ops, CLASS varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_red_max_no_2007_ops on RED_MAX_NO_2007(MASTER_CUSTOMS varchar_pattern_ops, YEAR_2 varchar_pattern_ops);"
create index idx_pk_red_max_no_2007_ops on RED_MAX_NO_2007(MASTER_CUSTOMS varchar_pattern_ops, YEAR_2 varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_red_receive_receipt_ops on RED_RECEIVE_RECEIPT(CUT_ID varchar_pattern_ops, SEND_TIMES);"
create index idx_pk_red_receive_receipt_ops on RED_RECEIVE_RECEIPT(CUT_ID varchar_pattern_ops, SEND_TIMES);
\timing
select now();
\echo "create index idx_pk_red_service_fee_ops on RED_SERVICE_FEE(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_red_service_fee_ops on RED_SERVICE_FEE(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rel_alc_work_ops on REL_ALC_WORK(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_rel_alc_work_ops on REL_ALC_WORK(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_return_rel_ops on RETURN_REL(RET_TRANS_NO varchar_pattern_ops, RET_TYPE varchar_pattern_ops, RET_TIME);"
create index idx_pk_return_rel_ops on RETURN_REL(RET_TRANS_NO varchar_pattern_ops, RET_TYPE varchar_pattern_ops, RET_TIME);
\timing
select now();
\echo "create index idx_pk_risk_control_ops on RISK_CONTROL(RISK_CONTROL_CODE varchar_pattern_ops, RISK_TYPE varchar_pattern_ops, RISK_SCHEDULE);"
create index idx_pk_risk_control_ops on RISK_CONTROL(RISK_CONTROL_CODE varchar_pattern_ops, RISK_TYPE varchar_pattern_ops, RISK_SCHEDULE);
\timing
select now();
\echo "create index idx_pk_rsk_assay_application_ops on RSK_ASSAY_APPLICATION(ENTRY_ID varchar_pattern_ops, G_NO);"
create index idx_pk_rsk_assay_application_ops on RSK_ASSAY_APPLICATION(ENTRY_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_rsk_case_feedback_head_ops on RSK_CASE_FEEDBACK_HEAD(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops);"
create index idx_pk_rsk_case_feedback_head_ops on RSK_CASE_FEEDBACK_HEAD(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_case_feedback_list_ops on RSK_CASE_FEEDBACK_LIST(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops, PROC_NO varchar_pattern_ops);"
create index idx_pk_rsk_case_feedback_list_ops on RSK_CASE_FEEDBACK_LIST(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops, PROC_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_case_feedback_list_cert_ops on RSK_CASE_FEEDBACK_LIST_CERT(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops, CERT_NO varchar_pattern_ops);"
create index idx_pk_rsk_case_feedback_list_cert_ops on RSK_CASE_FEEDBACK_LIST_CERT(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops, CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_case_transfer_g_no_ops on RSK_CASE_TRANSFER_G_NO(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops, G_NO);"
create index idx_pk_rsk_case_transfer_g_no_ops on RSK_CASE_TRANSFER_G_NO(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_rsk_case_transfer_head_ops on RSK_CASE_TRANSFER_HEAD(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops);"
create index idx_pk_rsk_case_transfer_head_ops on RSK_CASE_TRANSFER_HEAD(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_case_transfer_list_ops on RSK_CASE_TRANSFER_LIST(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops, CERT_NO varchar_pattern_ops);"
create index idx_pk_rsk_case_transfer_list_ops on RSK_CASE_TRANSFER_LIST(ENTRY_ID varchar_pattern_ops, CASE_ID varchar_pattern_ops, CERT_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_code_ts_ops on RSK_CODE_TS(CCTS_CODE varchar_pattern_ops);"
create index idx_pk_rsk_code_ts_ops on RSK_CODE_TS(CCTS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_code_ts_bak_ops on RSK_CODE_TS_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_rsk_code_ts_bak_ops on RSK_CODE_TS_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_rsk_condition_ops on RSK_CONDITION(CCTS_CODE varchar_pattern_ops);"
create index idx_pk_rsk_condition_ops on RSK_CONDITION(CCTS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_condition_bak_ops on RSK_CONDITION_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_rsk_condition_bak_ops on RSK_CONDITION_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_rsk_conta_capacity_ops on RSK_CONTA_CAPACITY(CCTS_CODE varchar_pattern_ops);"
create index idx_pk_rsk_conta_capacity_ops on RSK_CONTA_CAPACITY(CCTS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_conta_capacity_bak_ops on RSK_CONTA_CAPACITY_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_rsk_conta_capacity_bak_ops on RSK_CONTA_CAPACITY_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_rsk_exam_head_rel_ops on RSK_EXAM_HEAD_REL(EXAM_REC_ID varchar_pattern_ops);"
create index idx_pk_rsk_exam_head_rel_ops on RSK_EXAM_HEAD_REL(EXAM_REC_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_exam_list_container_ops on RSK_EXAM_LIST_CONTAINER(EXAM_REC_ID varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);"
create index idx_pk_rsk_exam_list_container_ops on RSK_EXAM_LIST_CONTAINER(EXAM_REC_ID varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_exam_list_rel_ops on RSK_EXAM_LIST_REL(EXAM_REC_ID varchar_pattern_ops, G_NO);"
create index idx_pk_rsk_exam_list_rel_ops on RSK_EXAM_LIST_REL(EXAM_REC_ID varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_rsk_exam_op_log_ops on RSK_EXAM_OP_LOG(EXAM_REC_ID varchar_pattern_ops, OP_TIME, MODI_TYPE varchar_pattern_ops, TABLE_NAME varchar_pattern_ops, ITEM_NAME varchar_pattern_ops);"
create index idx_pk_rsk_exam_op_log_ops on RSK_EXAM_OP_LOG(EXAM_REC_ID varchar_pattern_ops, OP_TIME, MODI_TYPE varchar_pattern_ops, TABLE_NAME varchar_pattern_ops, ITEM_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_fake_code_ts_ops on RSK_FAKE_CODE_TS(CCTS_CODE varchar_pattern_ops);"
create index idx_pk_rsk_fake_code_ts_ops on RSK_FAKE_CODE_TS(CCTS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_fake_code_ts_bak_ops on RSK_FAKE_CODE_TS_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_rsk_fake_code_ts_bak_ops on RSK_FAKE_CODE_TS_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_rsk_fit_log_rel_ops on RSK_FIT_LOG_REL(RSK_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, D_DATE);"
create index idx_pk_rsk_fit_log_rel_ops on RSK_FIT_LOG_REL(RSK_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, D_DATE);
\timing
select now();
\echo "create index idx_pk_rsk_fit_result_log_ops on RSK_FIT_RESULT_LOG(RSK_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, D_DATE, RSK_POS varchar_pattern_ops);"
create index idx_pk_rsk_fit_result_log_ops on RSK_FIT_RESULT_LOG(RSK_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, D_DATE, RSK_POS varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_instr_attr_rel_ops on RSK_INSTR_ATTR_REL(RSK_NO varchar_pattern_ops);"
create index idx_pk_rsk_instr_attr_rel_ops on RSK_INSTR_ATTR_REL(RSK_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_instr_proc_rel_ops on RSK_INSTR_PROC_REL(RSK_NO varchar_pattern_ops, RSK_POS varchar_pattern_ops);"
create index idx_pk_rsk_instr_proc_rel_ops on RSK_INSTR_PROC_REL(RSK_NO varchar_pattern_ops, RSK_POS varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_op_log_ops on RSK_OP_LOG(FORM_ID varchar_pattern_ops, OP_TIME);"
create index idx_pk_rsk_op_log_ops on RSK_OP_LOG(FORM_ID varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_rsk_recheck_rel_ops on RSK_RECHECK_REL(FORM_ID varchar_pattern_ops);"
create index idx_pk_rsk_recheck_rel_ops on RSK_RECHECK_REL(FORM_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_replication_log_ops on RSK_REPLICATION_LOG(CUSTOMS_CODE varchar_pattern_ops, TABLE_NAME varchar_pattern_ops, REPLI_DATE);"
create index idx_pk_rsk_replication_log_ops on RSK_REPLICATION_LOG(CUSTOMS_CODE varchar_pattern_ops, TABLE_NAME varchar_pattern_ops, REPLI_DATE);
\timing
select now();
\echo "create index idx_pk_rsk_result_rel_ops on RSK_RESULT_REL(RSK_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, RSK_POS varchar_pattern_ops);"
create index idx_pk_rsk_result_rel_ops on RSK_RESULT_REL(RSK_NO varchar_pattern_ops, FORM_ID varchar_pattern_ops, RSK_POS varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_trade_co_ops on RSK_TRADE_CO(CCTS_CODE varchar_pattern_ops);"
create index idx_pk_rsk_trade_co_ops on RSK_TRADE_CO(CCTS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_trade_co_bak_ops on RSK_TRADE_CO_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);"
create index idx_pk_rsk_trade_co_bak_ops on RSK_TRADE_CO_BAK(CCTS_CODE varchar_pattern_ops, OP_BAK_TIME);
\timing
select now();
\echo "create index idx_pk_rsk_unlock_op_log_ops on RSK_UNLOCK_OP_LOG(FORM_ID varchar_pattern_ops, RSK_NO varchar_pattern_ops, UNLOCK_TIME);"
create index idx_pk_rsk_unlock_op_log_ops on RSK_UNLOCK_OP_LOG(FORM_ID varchar_pattern_ops, RSK_NO varchar_pattern_ops, UNLOCK_TIME);
\timing
select now();
\echo "create index idx_pk_rsk_vs_exam_ops on RSK_VS_EXAM(FORM_ID varchar_pattern_ops, FORM_TYPE varchar_pattern_ops, RSK_NO varchar_pattern_ops, D_DATE, EXAM_REC_ID varchar_pattern_ops);"
create index idx_pk_rsk_vs_exam_ops on RSK_VS_EXAM(FORM_ID varchar_pattern_ops, FORM_TYPE varchar_pattern_ops, RSK_NO varchar_pattern_ops, D_DATE, EXAM_REC_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_rsk_workflow_ops on RSK_WORKFLOW(ENTRY_ID varchar_pattern_ops, EXAM_REC_ID varchar_pattern_ops);"
create index idx_pk_rsk_workflow_ops on RSK_WORKFLOW(ENTRY_ID varchar_pattern_ops, EXAM_REC_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_service_fee_ops on SERVICE_FEE(MANUAL_NO varchar_pattern_ops);"
create index idx_pk_service_fee_ops on SERVICE_FEE(MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_service_list_ops on SERVICE_LIST(MANUAL_NO varchar_pattern_ops, F_NO);"
create index idx_pk_service_list_ops on SERVICE_LIST(MANUAL_NO varchar_pattern_ops, F_NO);
\timing
select now();
\echo "create index idx_pk_ship_tonnage_ops on SHIP_TONNAGE(LICENSE_NO varchar_pattern_ops);"
create index idx_pk_ship_tonnage_ops on SHIP_TONNAGE(LICENSE_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_special_entry_ops on SPECIAL_ENTRY(ENTRY_ID varchar_pattern_ops, OP_TIME);"
create index idx_pk_special_entry_ops on SPECIAL_ENTRY(ENTRY_ID varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_status_detail_ops on STATUS_DETAIL(ENTRY_ID varchar_pattern_ops, DETAIL_COUNT);"
create index idx_pk_status_detail_ops on STATUS_DETAIL(ENTRY_ID varchar_pattern_ops, DETAIL_COUNT);
\timing
select now();
\echo "create index idx_pk_status_detail_ops on STATUS_DETAIL(ENTRY_ID varchar_pattern_ops, DETAIL_COUNT);"
create index idx_pk_status_detail_ops on STATUS_DETAIL(ENTRY_ID varchar_pattern_ops, DETAIL_COUNT);
\timing
select now();
\echo "create index idx_pk_stf_record_ops on STF_RECORD(ENTRY_ID varchar_pattern_ops);"
create index idx_pk_stf_record_ops on STF_RECORD(ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_stl_data_conta_list_ops on STL_DATA_CONTA_LIST(UCR_CODE varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);"
create index idx_pk_stl_data_conta_list_ops on STL_DATA_CONTA_LIST(UCR_CODE varchar_pattern_ops, CONTAINER_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_stl_data_head_ops on STL_DATA_HEAD(UCR_CODE varchar_pattern_ops);"
create index idx_pk_stl_data_head_ops on STL_DATA_HEAD(UCR_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_stl_data_ts_list_ops on STL_DATA_TS_LIST(UCR_CODE varchar_pattern_ops, G_NO);"
create index idx_pk_stl_data_ts_list_ops on STL_DATA_TS_LIST(UCR_CODE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_stl_request_chk_ops on STL_REQUEST_CHK(UCR_CODE varchar_pattern_ops);"
create index idx_pk_stl_request_chk_ops on STL_REQUEST_CHK(UCR_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tar_del_log_ops on TAR_DEL_LOG(ENTRY_ID varchar_pattern_ops, TAX_ID varchar_pattern_ops, OP_TIME);"
create index idx_pk_tar_del_log_ops on TAR_DEL_LOG(ENTRY_ID varchar_pattern_ops, TAX_ID varchar_pattern_ops, OP_TIME);
\timing
select now();
\echo "create index idx_pk_tcs_counter_ops on TCS_COUNTER(TCS_KEY varchar_pattern_ops);"
create index idx_pk_tcs_counter_ops on TCS_COUNTER(TCS_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tcs_detail_head_ops on TCS_DETAIL_HEAD(ACCOUNT_ORG_CODE varchar_pattern_ops, IN_TREASURY_DATE, PACK_NO varchar_pattern_ops, CURRENT_PACK_NO);"
create index idx_pk_tcs_detail_head_ops on TCS_DETAIL_HEAD(ACCOUNT_ORG_CODE varchar_pattern_ops, IN_TREASURY_DATE, PACK_NO varchar_pattern_ops, CURRENT_PACK_NO);
\timing
select now();
\echo "create index idx_pk_tcs_detail_list_ops on TCS_DETAIL_LIST(ACCOUNT_ORG_CODE varchar_pattern_ops, IN_TREASURY_DATE, PACK_NO varchar_pattern_ops, ITEM_NO);"
create index idx_pk_tcs_detail_list_ops on TCS_DETAIL_LIST(ACCOUNT_ORG_CODE varchar_pattern_ops, IN_TREASURY_DATE, PACK_NO varchar_pattern_ops, ITEM_NO);
\timing
select now();
\echo "create index idx_pk_tcs_error_log_ops on TCS_ERROR_LOG(GUID varchar_pattern_ops);"
create index idx_pk_tcs_error_log_ops on TCS_ERROR_LOG(GUID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tcs_send_log_ops on TCS_SEND_LOG(TRANS_NO varchar_pattern_ops);"
create index idx_pk_tcs_send_log_ops on TCS_SEND_LOG(TRANS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tcs_statistic_report_ops on TCS_STATISTIC_REPORT(ACCOUNT_ORG_CODE varchar_pattern_ops, REPORT_DATE, SPECIAL_PERIOD_FLAG varchar_pattern_ops, TREASURY_CODE varchar_pattern_ops, BUDGET_LEVEL_CODE varchar_pattern_ops, BUDGET_SUBJECT_CODE varchar_pattern_ops);"
create index idx_pk_tcs_statistic_report_ops on TCS_STATISTIC_REPORT(ACCOUNT_ORG_CODE varchar_pattern_ops, REPORT_DATE, SPECIAL_PERIOD_FLAG varchar_pattern_ops, TREASURY_CODE varchar_pattern_ops, BUDGET_LEVEL_CODE varchar_pattern_ops, BUDGET_SUBJECT_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_temp_db_ops on TEMP_DB(PRE_NO varchar_pattern_ops, PROCESS_STEP varchar_pattern_ops);"
create index idx_pk_temp_db_ops on TEMP_DB(PRE_NO varchar_pattern_ops, PROCESS_STEP varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_temp_del_ems_consume_ops on TEMP_DEL_EMS_CONSUME(RID varchar_pattern_ops);"
create index idx_pk_temp_del_ems_consume_ops on TEMP_DEL_EMS_CONSUME(RID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_temp_del_ems_head_ops on TEMP_DEL_EMS_HEAD(EMS_NO varchar_pattern_ops);"
create index idx_pk_temp_del_ems_head_ops on TEMP_DEL_EMS_HEAD(EMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_temp_page_range_ops on TEMP_PAGE_RANGE(PR_KEY varchar_pattern_ops, PR_DETAIL varchar_pattern_ops);"
create index idx_pk_temp_page_range_ops on TEMP_PAGE_RANGE(PR_KEY varchar_pattern_ops, PR_DETAIL varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_company_ops on TEP_COMPANY(TEP_NO varchar_pattern_ops);"
create index idx_pk_tep_company_ops on TEP_COMPANY(TEP_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_debit_rec_request_ops on TEP_DEBIT_REC_REQUEST(REQUEST_DATE, TRANS_NO varchar_pattern_ops);"
create index idx_pk_tep_debit_rec_request_ops on TEP_DEBIT_REC_REQUEST(REQUEST_DATE, TRANS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_debit_rec_response_ops on TEP_DEBIT_REC_RESPONSE(TRANS_NO varchar_pattern_ops, RESPONSE_DATE);"
create index idx_pk_tep_debit_rec_response_ops on TEP_DEBIT_REC_RESPONSE(TRANS_NO varchar_pattern_ops, RESPONSE_DATE);
\timing
select now();
\echo "create index idx_pk_tep_eplat_response_ops on TEP_EPLAT_RESPONSE(MSG_TYPE varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_tep_eplat_response_ops on TEP_EPLAT_RESPONSE(MSG_TYPE varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_tep_err_log_ops on TEP_ERR_LOG(ERR_NO varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_tep_err_log_ops on TEP_ERR_LOG(ERR_NO varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_tep_log_ops on TEP_LOG(STEP_ID varchar_pattern_ops, BIZ_ID varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_tep_log_ops on TEP_LOG(STEP_ID varchar_pattern_ops, BIZ_ID varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_tep_pay_log_ops on TEP_PAY_LOG(TRANS_NO varchar_pattern_ops, EPLAT_CODE varchar_pattern_ops);"
create index idx_pk_tep_pay_log_ops on TEP_PAY_LOG(TRANS_NO varchar_pattern_ops, EPLAT_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_pay_rec_request_ops on TEP_PAY_REC_REQUEST(REQUEST_DATE, TRANS_NO varchar_pattern_ops);"
create index idx_pk_tep_pay_rec_request_ops on TEP_PAY_REC_REQUEST(REQUEST_DATE, TRANS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_pay_rec_response_ops on TEP_PAY_REC_RESPONSE(RESPONSE_DATE, TRANS_NO varchar_pattern_ops);"
create index idx_pk_tep_pay_rec_response_ops on TEP_PAY_REC_RESPONSE(RESPONSE_DATE, TRANS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_rec_log_ops on TEP_REC_LOG(REC_DATE, REC_TYPE varchar_pattern_ops, TRANS_NO varchar_pattern_ops);"
create index idx_pk_tep_rec_log_ops on TEP_REC_LOG(REC_DATE, REC_TYPE varchar_pattern_ops, TRANS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_seq_ops on TEP_SEQ(TEP_KEY varchar_pattern_ops);"
create index idx_pk_tep_seq_ops on TEP_SEQ(TEP_KEY varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_status_query_ops on TEP_STATUS_QUERY(TRANS_NO varchar_pattern_ops, SENDER_ID varchar_pattern_ops, DEAL_TIME);"
create index idx_pk_tep_status_query_ops on TEP_STATUS_QUERY(TRANS_NO varchar_pattern_ops, SENDER_ID varchar_pattern_ops, DEAL_TIME);
\timing
select now();
\echo "create index idx_pk_tep_voucher_rec_list_ops on TEP_VOUCHER_REC_LIST(VOUCHER_RECEIVABLE_SEQ_NO varchar_pattern_ops);"
create index idx_pk_tep_voucher_rec_list_ops on TEP_VOUCHER_REC_LIST(VOUCHER_RECEIVABLE_SEQ_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_voucher_rec_list_detail_ops on TEP_VOUCHER_REC_LIST_DETAIL(VOUCHER_RECEIVABLE_SEQ_NO varchar_pattern_ops, PAYEE_CODE varchar_pattern_ops, BANK_CODE varchar_pattern_ops, PAYEE_BANK_ACCOUNT varchar_pattern_ops);"
create index idx_pk_tep_voucher_rec_list_detail_ops on TEP_VOUCHER_REC_LIST_DETAIL(VOUCHER_RECEIVABLE_SEQ_NO varchar_pattern_ops, PAYEE_CODE varchar_pattern_ops, BANK_CODE varchar_pattern_ops, PAYEE_BANK_ACCOUNT varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tep_voucher_rec_page_list_ops on TEP_VOUCHER_REC_PAGE_LIST(VOUCHER_RECEIVABLE_SEQ_NO varchar_pattern_ops, PAYEE_CODE varchar_pattern_ops, BANK_CODE varchar_pattern_ops, PAYEE_BANK_ACCOUNT varchar_pattern_ops, PAGE_NAME varchar_pattern_ops, PAGE_NO);"
create index idx_pk_tep_voucher_rec_page_list_ops on TEP_VOUCHER_REC_PAGE_LIST(VOUCHER_RECEIVABLE_SEQ_NO varchar_pattern_ops, PAYEE_CODE varchar_pattern_ops, BANK_CODE varchar_pattern_ops, PAYEE_BANK_ACCOUNT varchar_pattern_ops, PAGE_NAME varchar_pattern_ops, PAGE_NO);
\timing
select now();
\echo "create index idx_pk_tmp_ems_consume_ops on TMP_EMS_CONSUME(EMS_NO varchar_pattern_ops, EXG_NO, EXG_VERSION varchar_pattern_ops, IMG_NO);"
create index idx_pk_tmp_ems_consume_ops on TMP_EMS_CONSUME(EMS_NO varchar_pattern_ops, EXG_NO, EXG_VERSION varchar_pattern_ops, IMG_NO);
\timing
select now();
\echo "create index idx_pk_tmp_ems_dcr_ent_ops on TMP_EMS_DCR_ENT(EMS_NO varchar_pattern_ops, DCR_TIMES, ENTRY_ID varchar_pattern_ops);"
create index idx_pk_tmp_ems_dcr_ent_ops on TMP_EMS_DCR_ENT(EMS_NO varchar_pattern_ops, DCR_TIMES, ENTRY_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tmp_ems_head_ops on TMP_EMS_HEAD(EMS_NO varchar_pattern_ops);"
create index idx_pk_tmp_ems_head_ops on TMP_EMS_HEAD(EMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_tmp_ems_list_ops on TMP_EMS_LIST(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);"
create index idx_pk_tmp_ems_list_ops on TMP_EMS_LIST(EMS_NO varchar_pattern_ops, G_TYPE varchar_pattern_ops, G_NO);
\timing
select now();
\echo "create index idx_pk_trade_err_ops on TRADE_ERR(HG_CODE varchar_pattern_ops);"
create index idx_pk_trade_err_ops on TRADE_ERR(HG_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trade_gpm_rtx_ops on TRADE_GPM_RTX(TRADE_MODE varchar_pattern_ops, SIGN_TYPE varchar_pattern_ops, SIGN_MODE varchar_pattern_ops);"
create index idx_pk_trade_gpm_rtx_ops on TRADE_GPM_RTX(TRADE_MODE varchar_pattern_ops, SIGN_TYPE varchar_pattern_ops, SIGN_MODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_transfer_fee_ops on TRANSFER_FEE(MANUAL_NO varchar_pattern_ops, RTN_MANUAL_NO varchar_pattern_ops);"
create index idx_pk_transfer_fee_ops on TRANSFER_FEE(MANUAL_NO varchar_pattern_ops, RTN_MANUAL_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_transfer_fee_log_ops on TRANSFER_FEE_LOG(MANUAL_NO varchar_pattern_ops, RTN_MANUAL_NO varchar_pattern_ops, CREATE_DATE);"
create index idx_pk_transfer_fee_log_ops on TRANSFER_FEE_LOG(MANUAL_NO varchar_pattern_ops, RTN_MANUAL_NO varchar_pattern_ops, CREATE_DATE);
\timing
select now();
\echo "create index idx_pk_trn_alc_rel_ops on TRN_ALC_REL(CUSTOMS_CODE varchar_pattern_ops, TRN_MODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops);"
create index idx_pk_trn_alc_rel_ops on TRN_ALC_REL(CUSTOMS_CODE varchar_pattern_ops, TRN_MODE varchar_pattern_ops, TRAF_MODE varchar_pattern_ops);
\timing
\timing
select now();
\echo "create index idx_pk_trn_chk_goods_ops on TRN_CHK_GOODS(CHK_CODE_TS varchar_pattern_ops);"
create index idx_pk_trn_chk_goods_ops on TRN_CHK_GOODS(CHK_CODE_TS varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_cop_rel_ops on TRN_COP_REL(CO_REG_NO varchar_pattern_ops);"
create index idx_pk_trn_cop_rel_ops on TRN_COP_REL(CO_REG_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_delay_form_ops on TRN_DELAY_FORM(TURN_NO varchar_pattern_ops);"
create index idx_pk_trn_delay_form_ops on TRN_DELAY_FORM(TURN_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_dr_rel_ops on TRN_DR_REL(DR_CUSTOMS_NO varchar_pattern_ops);"
create index idx_pk_trn_dr_rel_ops on TRN_DR_REL(DR_CUSTOMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_eseal_rel_ops on TRN_ESEAL_REL(ESEAL_ID varchar_pattern_ops);"
create index idx_pk_trn_eseal_rel_ops on TRN_ESEAL_REL(ESEAL_ID varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_exam_max_seq_ops on TRN_EXAM_MAX_SEQ(TYPE varchar_pattern_ops, YEARAREA varchar_pattern_ops);"
create index idx_pk_trn_exam_max_seq_ops on TRN_EXAM_MAX_SEQ(TYPE varchar_pattern_ops, YEARAREA varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_i_e_port_ops on TRN_I_E_PORT(VE_CUSTOMS_NO varchar_pattern_ops, I_E_PORT varchar_pattern_ops);"
create index idx_pk_trn_i_e_port_ops on TRN_I_E_PORT(VE_CUSTOMS_NO varchar_pattern_ops, I_E_PORT varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_parameter_ops on TRN_PARAMETER(CUSTOMS_CODE varchar_pattern_ops, P_NAME varchar_pattern_ops);"
create index idx_pk_trn_parameter_ops on TRN_PARAMETER(CUSTOMS_CODE varchar_pattern_ops, P_NAME varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_pop_cop_rel_ops on TRN_POP_COP_REL(AGENT_CODE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_trn_pop_cop_rel_ops on TRN_POP_COP_REL(AGENT_CODE varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_pop_head_ops on TRN_POP_HEAD(APPLY_NO varchar_pattern_ops);"
create index idx_pk_trn_pop_head_ops on TRN_POP_HEAD(APPLY_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_pop_list_ops on TRN_POP_LIST(APPLY_NO varchar_pattern_ops, RECORD_NUMBER);"
create index idx_pk_trn_pop_list_ops on TRN_POP_LIST(APPLY_NO varchar_pattern_ops, RECORD_NUMBER);
\timing
select now();
\echo "create index idx_pk_trn_pre_max_seq_ops on TRN_PRE_MAX_SEQ(TYPE varchar_pattern_ops, YEARAREA varchar_pattern_ops);"
create index idx_pk_trn_pre_max_seq_ops on TRN_PRE_MAX_SEQ(TYPE varchar_pattern_ops, YEARAREA varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_ship_ops on TRN_SHIP(CUSTOM_NO varchar_pattern_ops);"
create index idx_pk_trn_ship_ops on TRN_SHIP(CUSTOM_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_ve_rel_ops on TRN_VE_REL(VE_CUSTOMS_NO varchar_pattern_ops);"
create index idx_pk_trn_ve_rel_ops on TRN_VE_REL(VE_CUSTOMS_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_trn_vehicle_ops on TRN_VEHICLE(CUSTOM_NO varchar_pattern_ops);"
create index idx_pk_trn_vehicle_ops on TRN_VEHICLE(CUSTOM_NO varchar_pattern_ops);
\timing
select now();
\echo "create index idx_pk_yd_declare_rel_ops on YD_DECLARE_REL(TRADE_CO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);"
create index idx_pk_yd_declare_rel_ops on YD_DECLARE_REL(TRADE_CO varchar_pattern_ops, CUSTOMS_CODE varchar_pattern_ops);
select now();
