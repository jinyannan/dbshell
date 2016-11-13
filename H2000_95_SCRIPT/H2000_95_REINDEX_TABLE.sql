select now();
\timing
\echo ---------------ACCOUNT----------------
reindex table ACCOUNT;
\echo ---------------AGREEMENT_GOODS_LIST----------------
reindex table AGREEMENT_GOODS_LIST;
\echo ---------------AMS_MODI_LOG----------------
reindex table AMS_MODI_LOG;
\echo ---------------AMSLIST_BODY----------------
reindex table AMSLIST_BODY;
\echo ---------------AMSLIST_HEAD----------------
reindex table AMSLIST_HEAD;
\echo ---------------APPL_CLOSE----------------
reindex table APPL_CLOSE;
\echo ---------------APPL_CLOSE_CONSUME----------------
reindex table APPL_CLOSE_CONSUME;
\echo ---------------APPLY_HEAD----------------
reindex table APPLY_HEAD;
\echo ---------------APPLY_LIST----------------
reindex table APPLY_LIST;
\echo ---------------ARRIVAL_INFO_HEAD----------------
reindex table ARRIVAL_INFO_HEAD;
\echo ---------------ARRIVAL_INFO_LIST----------------
reindex table ARRIVAL_INFO_LIST;
\echo ---------------BAK_BWS_EXAM_CERT_LIST----------------
reindex table BAK_BWS_EXAM_CERT_LIST;
\echo ---------------BAK_BWS_EXAM_GOOD_LIST----------------
reindex table BAK_BWS_EXAM_GOOD_LIST;
\echo ---------------BAK_BWS_EXAM_HEAD----------------
reindex table BAK_BWS_EXAM_HEAD;
\echo ---------------BAK_CONSUME----------------
reindex table BAK_CONSUME;
\echo ---------------BAK_CONTRACT_HEAD----------------
reindex table BAK_CONTRACT_HEAD;
\echo ---------------BAK_DCG_BILL_HEAD----------------
reindex table BAK_DCG_BILL_HEAD;
\echo ---------------BAK_DCG_BILL_LIST----------------
reindex table BAK_DCG_BILL_LIST;
\echo ---------------BAK_DCG_DEDUCT----------------
reindex table BAK_DCG_DEDUCT;
\echo ---------------BAK_DCG_DEDUCT_LOG----------------
reindex table BAK_DCG_DEDUCT_LOG;
\echo ---------------BAK_DCG_HEAD----------------
reindex table BAK_DCG_HEAD;
\echo ---------------BAK_DCG_LIST----------------
reindex table BAK_DCG_LIST;
\echo ---------------BAK_EMS_APPR_HEAD----------------
reindex table BAK_EMS_APPR_HEAD;
\echo ---------------BAK_EMS_APPR_LIST----------------
reindex table BAK_EMS_APPR_LIST;
\echo ---------------BAK_EMS_CONSUME----------------
reindex table BAK_EMS_CONSUME;
\echo ---------------BAK_EMS_DEDUCT_CLR----------------
reindex table BAK_EMS_DEDUCT_CLR;
\echo ---------------BAK_EMS_HEAD----------------
reindex table BAK_EMS_HEAD;
\echo ---------------BAK_EMS_LIST----------------
reindex table BAK_EMS_LIST;
\echo ---------------BAK_EX_CONTRACT_LIST----------------
reindex table BAK_EX_CONTRACT_LIST;
\echo ---------------BAK_EX_FASCICLE_LIST----------------
reindex table BAK_EX_FASCICLE_LIST;
\echo ---------------BAK_FASCICLE_HEAD----------------
reindex table BAK_FASCICLE_HEAD;
\echo ---------------BAK_IM_CONTRACT_LIST----------------
reindex table BAK_IM_CONTRACT_LIST;
\echo ---------------BAK_IM_FASCICLE_LIST----------------
reindex table BAK_IM_FASCICLE_LIST;
\echo ---------------BANK_ACCOUNT----------------
reindex table BANK_ACCOUNT;
\echo ---------------BCK_COP_HEAD----------------
reindex table BCK_COP_HEAD;
\echo ---------------BCK_COP_LIST----------------
reindex table BCK_COP_LIST;
\echo ---------------BCK_COP_LIST_TEMP----------------
reindex table BCK_COP_LIST_TEMP;
\echo ---------------BCK_COP_PARA_HEAD----------------
reindex table BCK_COP_PARA_HEAD;
\echo ---------------BCK_COP_PARA_LIST----------------
reindex table BCK_COP_PARA_LIST;
\echo ---------------BCK_EXECUTOR----------------
reindex table BCK_EXECUTOR;
\echo ---------------BCK_HANDOVER----------------
reindex table BCK_HANDOVER;
\echo ---------------BCK_HANDOVER_TYPE----------------
reindex table BCK_HANDOVER_TYPE;
\echo ---------------BCK_HEAD----------------
reindex table BCK_HEAD;
\echo ---------------BCK_SEQ----------------
reindex table BCK_SEQ;
\echo ---------------BCK_STOCK_HEAD----------------
reindex table BCK_STOCK_HEAD;
\echo ---------------BCK_STOCK_LIST----------------
reindex table BCK_STOCK_LIST;
\echo ---------------BCK_WORKFLOW----------------
reindex table BCK_WORKFLOW;
\echo ---------------BTI_DATA_CONTA_LIST----------------
reindex table BTI_DATA_CONTA_LIST;
\echo ---------------BTI_DATA_HEAD----------------
reindex table BTI_DATA_HEAD;
\echo ---------------BTI_DATA_TS_LIST----------------
reindex table BTI_DATA_TS_LIST;
\echo ---------------BWS_AUDIT_HEAD----------------
reindex table BWS_AUDIT_HEAD;
\echo ---------------BWS_AUDIT_LIST----------------
reindex table BWS_AUDIT_LIST;
\echo ---------------BWS_DCR_BILL_LIST----------------
reindex table BWS_DCR_BILL_LIST;
\echo ---------------BWS_DCR_HEAD----------------
reindex table BWS_DCR_HEAD;
\echo ---------------BWS_DCR_LIST----------------
reindex table BWS_DCR_LIST;
\echo ---------------BWS_DEDUCT----------------
reindex table BWS_DEDUCT;
\echo ---------------BWS_DEDUCT_LOG----------------
reindex table BWS_DEDUCT_LOG;
\echo ---------------BWS_EXAM_CERT_LIST----------------
reindex table BWS_EXAM_CERT_LIST;
\echo ---------------BWS_EXAM_GOOD_LIST----------------
reindex table BWS_EXAM_GOOD_LIST;
\echo ---------------BWS_EXAM_HEAD----------------
reindex table BWS_EXAM_HEAD;
\echo ---------------BWS_EXAM_PASSCERT----------------
reindex table BWS_EXAM_PASSCERT;
\echo ---------------BWS_FORM_HEAD----------------
reindex table BWS_FORM_HEAD;
\echo ---------------BWS_FORM_LIST----------------
reindex table BWS_FORM_LIST;
\echo ---------------BWS_GB_LIST----------------
reindex table BWS_GB_LIST;
\echo ---------------BWS_HEAD----------------
reindex table BWS_HEAD;
\echo ---------------BWS_LIST----------------
reindex table BWS_LIST;
\echo ---------------BWS_MANIFEST_HEAD----------------
reindex table BWS_MANIFEST_HEAD;
\echo ---------------BWS_MANIFEST_LIST----------------
reindex table BWS_MANIFEST_LIST;
\echo ---------------BWS_SEQ----------------
reindex table BWS_SEQ;
\echo ---------------BWS_VAR----------------
reindex table BWS_VAR;
\echo ---------------BWS_WORKFLOW----------------
reindex table BWS_WORKFLOW;
\echo ---------------CCTS_ERROR_LOG----------------
reindex table CCTS_ERROR_LOG;
\echo ---------------CCTS_ONLINE_RESULT----------------
reindex table CCTS_ONLINE_RESULT;
\echo ---------------CCTS_ONLINE_RESULT_BAK----------------
reindex table CCTS_ONLINE_RESULT_BAK;
\echo ---------------CCTS_PERFORMANCE----------------
reindex table CCTS_PERFORMANCE;
\echo ---------------CCTS_RSK_RESULT----------------
reindex table CCTS_RSK_RESULT;
\echo ---------------CCTS_RSK_RESULT_BAK----------------
reindex table CCTS_RSK_RESULT_BAK;
\echo ---------------CDL_CERTIFICATE----------------
reindex table CDL_CERTIFICATE;
\echo ---------------CDL_CHK----------------
reindex table CDL_CHK;
\echo ---------------CDL_COMMODITY----------------
reindex table CDL_COMMODITY;
\echo ---------------CDL_COMP_COMM_MODIFY_LOG----------------
reindex table CDL_COMP_COMM_MODIFY_LOG;
\echo ---------------CDL_COMP_COMM_OP_LOG----------------
reindex table CDL_COMP_COMM_OP_LOG;
\echo ---------------CDL_COMPANY----------------
reindex table CDL_COMPANY;
\echo ---------------CDL_CONTAINER----------------
reindex table CDL_CONTAINER;
\echo ---------------CDL_DEL_CERTIFICATE_LOG----------------
reindex table CDL_DEL_CERTIFICATE_LOG;
\echo ---------------CDL_DEL_CONTAINER_LOG----------------
reindex table CDL_DEL_CONTAINER_LOG;
\echo ---------------CDL_DEL_HEAD_LOG----------------
reindex table CDL_DEL_HEAD_LOG;
\echo ---------------CDL_DEL_LIST_LOG----------------
reindex table CDL_DEL_LIST_LOG;
\echo ---------------CDL_EDI_MESS----------------
reindex table CDL_EDI_MESS;
\echo ---------------CDL_EMS_DEDUCT----------------
reindex table CDL_EMS_DEDUCT;
\echo ---------------CDL_EMS_DEDUCT_LOG----------------
reindex table CDL_EMS_DEDUCT_LOG;
\echo ---------------CDL_ENTRY_HEAD----------------
reindex table CDL_ENTRY_HEAD;
\echo ---------------CDL_ENTRY_LIST----------------
reindex table CDL_ENTRY_LIST;
\echo ---------------CDL_HEAD----------------
reindex table CDL_HEAD;
\echo ---------------CDL_LICENSE_DEDUCT----------------
reindex table CDL_LICENSE_DEDUCT;
\echo ---------------CDL_LIST----------------
reindex table CDL_LIST;
\echo ---------------CDL_LOCK_COMMODITY----------------
reindex table CDL_LOCK_COMMODITY;
\echo ---------------CDL_MODI_LOG----------------
reindex table CDL_MODI_LOG;
\echo ---------------CDL_OP_LOG----------------
reindex table CDL_OP_LOG;
\echo ---------------CDL_OVERDUE_LIST----------------
reindex table CDL_OVERDUE_LIST;
\echo ---------------CDL_STATUS_DETAIL----------------
reindex table CDL_STATUS_DETAIL;
\echo ---------------CDL_WORKFLOW----------------
reindex table CDL_WORKFLOW;
\echo ---------------CHK_COP_RATIO----------------
reindex table CHK_COP_RATIO;
\echo ---------------CHK_COUNTER----------------
reindex table CHK_COUNTER;
\echo ---------------CHK_RATE_LIMIT----------------
reindex table CHK_RATE_LIMIT;
\echo ---------------CHKHS_MNLPROC----------------
reindex table CHKHS_MNLPROC;
\echo ---------------CIC_CODE----------------
reindex table CIC_CODE;
\echo ---------------CIC_HEAD----------------
reindex table CIC_HEAD;
\echo ---------------CIC_LIST----------------
reindex table CIC_LIST;
\echo ---------------CIC_MAXID----------------
reindex table CIC_MAXID;
\echo ---------------CIC_SEND_REL----------------
reindex table CIC_SEND_REL;
\echo ---------------CLAIM----------------
reindex table CLAIM;
\echo ---------------CLC_CHKRATE_LIMIT----------------
reindex table CLC_CHKRATE_LIMIT;
\echo ---------------CLC_GPR_RATIO----------------
reindex table CLC_GPR_RATIO;
\echo ---------------CLC_GPR_RATIO_BAK----------------
reindex table CLC_GPR_RATIO_BAK;
\echo ---------------CNS_COUNTER_TABLE----------------
reindex table CNS_COUNTER_TABLE;
\echo ---------------CO_CLASS_REL----------------
reindex table CO_CLASS_REL;
\echo ---------------COMPANY_REL----------------
reindex table COMPANY_REL;
\echo ---------------CONSUME----------------
reindex table CONSUME;
\echo ---------------CONSUME_DB----------------
reindex table CONSUME_DB;
\echo ---------------CONSUME_GOODS----------------
reindex table CONSUME_GOODS;
\echo ---------------CONTA----------------
reindex table CONTA;
\echo ---------------CONTA_MONITOR----------------
reindex table CONTA_MONITOR;
\echo ---------------CONTRACT_HEAD----------------
reindex table CONTRACT_HEAD;
\echo ---------------CONTRACT_WORKFLOW----------------
reindex table CONTRACT_WORKFLOW;
\echo ---------------CONVEYANCE----------------
reindex table CONVEYANCE;
\echo ---------------CONVEYANCE_SEGMENT----------------
reindex table CONVEYANCE_SEGMENT;
\echo ---------------COP_CONSUME----------------
reindex table COP_CONSUME;
\echo ---------------COP_SPEC_REL----------------
reindex table COP_SPEC_REL;
\echo ---------------COPLOG_DELETE_REL----------------
reindex table COPLOG_DELETE_REL;
\echo ---------------COPLOG_MODIFY_REL----------------
reindex table COPLOG_MODIFY_REL;
\echo ---------------CORP_HEAD----------------
reindex table CORP_HEAD;
\echo ---------------CORP_LIST----------------
reindex table CORP_LIST;
\echo ---------------CORP_TABLE----------------
reindex table CORP_TABLE;
\echo ---------------CORP_TYPE----------------
reindex table CORP_TYPE;
\echo ---------------COUNTER_TABLE----------------
reindex table COUNTER_TABLE;
\echo ---------------CREDIT_INFO----------------
reindex table CREDIT_INFO;
\echo ---------------CTS_CHKRATE_LIMIT----------------
reindex table CTS_CHKRATE_LIMIT;
\echo ---------------CTS_CHKRATE_LIMIT_BAK----------------
reindex table CTS_CHKRATE_LIMIT_BAK;
\echo ---------------CTS_PERIOD----------------
reindex table CTS_PERIOD;
\echo ---------------CUS_GOOD_CONSUME----------------
reindex table CUS_GOOD_CONSUME;
\echo ---------------CUSTOMS_DEFAULT----------------
reindex table CUSTOMS_DEFAULT;
\echo ---------------CUSTOMS_ESEAL_CONFIG----------------
reindex table CUSTOMS_ESEAL_CONFIG;
\echo ---------------DCG_BAK_LIST----------------
reindex table DCG_BAK_LIST;
\echo ---------------DCG_BILL_HEAD----------------
reindex table DCG_BILL_HEAD;
\echo ---------------DCG_BILL_LIST----------------
reindex table DCG_BILL_LIST;
\echo ---------------DCG_COPR_INFO----------------
reindex table DCG_COPR_INFO;
\echo ---------------DCG_DEDUCT----------------
reindex table DCG_DEDUCT;
\echo ---------------DCG_DEDUCT_LOG----------------
reindex table DCG_DEDUCT_LOG;
\echo ---------------DCG_HEAD----------------
reindex table DCG_HEAD;
\echo ---------------DCG_LIST----------------
reindex table DCG_LIST;
\echo ---------------DCG_SEQ----------------
reindex table DCG_SEQ;
\echo ---------------DCG_WORKFLOW----------------
reindex table DCG_WORKFLOW;
\echo ---------------DECL_CO_ENTRY_COUNT----------------
reindex table DECL_CO_ENTRY_COUNT;
\echo ---------------DECL_CO_ENTRY_COUNT_TEMP----------------
reindex table DECL_CO_ENTRY_COUNT_TEMP;
\echo ---------------DECLAR_COUNTER_REL----------------
reindex table DECLAR_COUNTER_REL;
\echo ---------------DECLAR_REL----------------
reindex table DECLAR_REL;
\echo ---------------DECLARER_REL----------------
reindex table DECLARER_REL;
\echo ---------------DECLOG_FULL_REL----------------
reindex table DECLOG_FULL_REL;
\echo ---------------DECLOG_MOD_REL----------------
reindex table DECLOG_MOD_REL;
\echo ---------------DECLOG_MODIFY_REL----------------
reindex table DECLOG_MODIFY_REL;
\echo ---------------DECLOG_SCORE_HEAD----------------
reindex table DECLOG_SCORE_HEAD;
\echo ---------------DECLOG_SCORE_LIST----------------
reindex table DECLOG_SCORE_LIST;
\echo ---------------DEL_EGS_ARC_AGENT_LIST----------------
reindex table DEL_EGS_ARC_AGENT_LIST;
\echo ---------------DEL_EGS_ARC_HEAD----------------
reindex table DEL_EGS_ARC_HEAD;
\echo ---------------DEL_EGS_ARC_LIST----------------
reindex table DEL_EGS_ARC_LIST;
\echo ---------------DEL_EGS_ARC_MERCHANT_LIST----------------
reindex table DEL_EGS_ARC_MERCHANT_LIST;
\echo ---------------DEL_EGS_CLEAR_CERT----------------
reindex table DEL_EGS_CLEAR_CERT;
\echo ---------------DEL_EGS_CLEAR_HEAD----------------
reindex table DEL_EGS_CLEAR_HEAD;
\echo ---------------DEL_EGS_CLEAR_LIST----------------
reindex table DEL_EGS_CLEAR_LIST;
\echo ---------------DEL_EGS_DECLARE_CERT----------------
reindex table DEL_EGS_DECLARE_CERT;
\echo ---------------DEL_EGS_DECLARE_HEAD----------------
reindex table DEL_EGS_DECLARE_HEAD;
\echo ---------------DEL_EGS_DECLARE_LIST----------------
reindex table DEL_EGS_DECLARE_LIST;
\echo ---------------DEL_MOD_APPLY----------------
reindex table DEL_MOD_APPLY;
\echo ---------------DISTRIBUTIVE_BILL_DECLARE----------------
reindex table DISTRIBUTIVE_BILL_DECLARE;
\echo ---------------DISTRIBUTIVE_DECLARE----------------
reindex table DISTRIBUTIVE_DECLARE;
\echo ---------------DISTRIBUTIVE_TRANSIT_WAY----------------
reindex table DISTRIBUTIVE_TRANSIT_WAY;
\echo ---------------DST_COUNTER_TABLE----------------
reindex table DST_COUNTER_TABLE;
\echo ---------------DST_DEDUCT----------------
reindex table DST_DEDUCT;
\echo ---------------DST_EXG----------------
reindex table DST_EXG;
\echo ---------------DST_EXG_ORI_ENTRY----------------
reindex table DST_EXG_ORI_ENTRY;
\echo ---------------DST_HEAD----------------
reindex table DST_HEAD;
\echo ---------------DST_IMG----------------
reindex table DST_IMG;
\echo ---------------DST_IMG_ORI_ENTRY----------------
reindex table DST_IMG_ORI_ENTRY;
\echo ---------------DTT_COP_PARAM----------------
reindex table DTT_COP_PARAM;
\echo ---------------DUTY_CHECK_LOG----------------
reindex table DUTY_CHECK_LOG;
\echo ---------------DUTYFORM_HEAD----------------
reindex table DUTYFORM_HEAD;
\echo ---------------DUTYFORM_LIST----------------
reindex table DUTYFORM_LIST;
\echo ---------------ECO_HEAD----------------
reindex table ECO_HEAD;
\echo ---------------ECO_LIST----------------
reindex table ECO_LIST;
\echo ---------------ECO_PARTS----------------
reindex table ECO_PARTS;
\echo ---------------ECO_WORKFLOW----------------
reindex table ECO_WORKFLOW;
\echo ---------------EGS_ADMIT_HEAD----------------
reindex table EGS_ADMIT_HEAD;
\echo ---------------EGS_ADMIT_HS----------------
reindex table EGS_ADMIT_HS;
\echo ---------------EGS_ADMIT_LIST----------------
reindex table EGS_ADMIT_LIST;
\echo ---------------EGS_ARC_AGENT_LIST----------------
reindex table EGS_ARC_AGENT_LIST;
\echo ---------------EGS_ARC_HEAD----------------
reindex table EGS_ARC_HEAD;
\echo ---------------EGS_ARC_LIST----------------
reindex table EGS_ARC_LIST;
\echo ---------------EGS_ARC_MERCHANT_LIST----------------
reindex table EGS_ARC_MERCHANT_LIST;
\echo ---------------EGS_CHECK_LOG----------------
reindex table EGS_CHECK_LOG;
\echo ---------------EGS_CLEAR_CERT----------------
reindex table EGS_CLEAR_CERT;
\echo ---------------EGS_CLEAR_HEAD----------------
reindex table EGS_CLEAR_HEAD;
\echo ---------------EGS_CLEAR_LIST----------------
reindex table EGS_CLEAR_LIST;
\echo ---------------EGS_DECLARE_CERT----------------
reindex table EGS_DECLARE_CERT;
\echo ---------------EGS_DECLARE_HEAD----------------
reindex table EGS_DECLARE_HEAD;
\echo ---------------EGS_DECLARE_LIST----------------
reindex table EGS_DECLARE_LIST;
\echo ---------------EGS_DEDUCT----------------
reindex table EGS_DEDUCT;
\echo ---------------EGS_LEND_HEAD----------------
reindex table EGS_LEND_HEAD;
\echo ---------------EGS_LEND_LIST----------------
reindex table EGS_LEND_LIST;
\echo ---------------EGS_PATROL_HEAD----------------
reindex table EGS_PATROL_HEAD;
\echo ---------------EGS_PATROL_LIST----------------
reindex table EGS_PATROL_LIST;
\echo ---------------EGS_SEQ----------------
reindex table EGS_SEQ;
\echo ---------------EGS_WORKFLOW----------------
reindex table EGS_WORKFLOW;
\echo ---------------EMS_ACCOUNT----------------
reindex table EMS_ACCOUNT;
\echo ---------------EMS_APPR_HEAD----------------
reindex table EMS_APPR_HEAD;
\echo ---------------EMS_APPR_LIST----------------
reindex table EMS_APPR_LIST;
\echo ---------------EMS_CLAIM----------------
reindex table EMS_CLAIM;
\echo ---------------EMS_CLR_LIST----------------
reindex table EMS_CLR_LIST;
\echo ---------------EMS_CLR_TMP----------------
reindex table EMS_CLR_TMP;
\echo ---------------EMS_COMPLEX----------------
reindex table EMS_COMPLEX;
\echo ---------------EMS_COMPLEX2----------------
reindex table EMS_COMPLEX2;
\echo ---------------EMS_CONSUME----------------
reindex table EMS_CONSUME;
\echo ---------------EMS_CONSUME_CLR----------------
reindex table EMS_CONSUME_CLR;
\echo ---------------EMS_CONSUME_CLR_D----------------
reindex table EMS_CONSUME_CLR_D;
\echo ---------------EMS_DCR_CONSUME----------------
reindex table EMS_DCR_CONSUME;
\echo ---------------EMS_DCR_ENT----------------
reindex table EMS_DCR_ENT;
\echo ---------------EMS_DCR_HEAD----------------
reindex table EMS_DCR_HEAD;
\echo ---------------EMS_DCR_LIST----------------
reindex table EMS_DCR_LIST;
\echo ---------------EMS_DCR_RUB_LIST----------------
reindex table EMS_DCR_RUB_LIST;
\echo ---------------EMS_DEDUCT----------------
reindex table EMS_DEDUCT;
\echo ---------------EMS_DEDUCT_CLR----------------
reindex table EMS_DEDUCT_CLR;
\echo ---------------EMS_DEDUCT_LOG----------------
reindex table EMS_DEDUCT_LOG;
\echo ---------------EMS_ENP----------------
reindex table EMS_ENP;
\echo ---------------EMS_ENP_JOU----------------
reindex table EMS_ENP_JOU;
\echo ---------------EMS_HEAD----------------
reindex table EMS_HEAD;
\echo ---------------EMS_LIST----------------
reindex table EMS_LIST;
\echo ---------------EMS_MESSAGE_LOG----------------
reindex table EMS_MESSAGE_LOG;
\echo ---------------EMS_PRESS----------------
reindex table EMS_PRESS;
\echo ---------------EMS_PRESS_CLEAR----------------
reindex table EMS_PRESS_CLEAR;
\echo ---------------EMS_SEQ----------------
reindex table EMS_SEQ;
\echo ---------------EMS_TMP_CLR----------------
reindex table EMS_TMP_CLR;
\echo ---------------EMS_VAR----------------
reindex table EMS_VAR;
\echo ---------------EMS_VERIFY----------------
reindex table EMS_VERIFY;
\echo ---------------EMS_VERIFY_DETAIL----------------
reindex table EMS_VERIFY_DETAIL;
\echo ---------------EMS_WORKFLOW----------------
reindex table EMS_WORKFLOW;
\echo ---------------ENTRY_AUTOREL_ERR_LIST----------------
reindex table ENTRY_AUTOREL_ERR_LIST;
\echo ---------------ENTRY_AUTOREL_ERR_LOG----------------
reindex table ENTRY_AUTOREL_ERR_LOG;
\echo ---------------ENTRY_CENTRY_SELECT----------------
reindex table ENTRY_CENTRY_SELECT;
\echo ---------------ENTRY_CENTRY_SELECT_DEL----------------
reindex table ENTRY_CENTRY_SELECT_DEL;
\echo ---------------ENTRY_CERTIFICATE----------------
reindex table ENTRY_CERTIFICATE;
\echo ---------------ENTRY_CERTIFICATE_LOG----------------
reindex table ENTRY_CERTIFICATE_LOG;
\echo ---------------ENTRY_CONTAINER----------------
reindex table ENTRY_CONTAINER;
\echo ---------------ENTRY_CONTAINER_LOG----------------
reindex table ENTRY_CONTAINER_LOG;
\echo ---------------ENTRY_DEL_HEAD_LOG----------------
reindex table ENTRY_DEL_HEAD_LOG;
\echo ---------------ENTRY_DEL_LIST_LOG----------------
reindex table ENTRY_DEL_LIST_LOG;
\echo ---------------ENTRY_EVALUATION----------------
reindex table ENTRY_EVALUATION;
\echo ---------------ENTRY_GPM_RTX----------------
reindex table ENTRY_GPM_RTX;
\echo ---------------ENTRY_GPM_RTX_PRINTLOG----------------
reindex table ENTRY_GPM_RTX_PRINTLOG;
\echo ---------------ENTRY_GPM_RTX_SENDLOG----------------
reindex table ENTRY_GPM_RTX_SENDLOG;
\echo ---------------ENTRY_HEAD----------------
--reindex table ENTRY_HEAD;
\echo ---------------ENTRY_LIST----------------
--reindex table ENTRY_LIST;
\echo ---------------ENTRY_MODI_LOG----------------
reindex table ENTRY_MODI_LOG;
\echo ---------------ENTRY_OP_LOG----------------
reindex table ENTRY_OP_LOG;
\echo ---------------ENTRY_PROC----------------
--reindex table ENTRY_PROC;
\echo ---------------ENTRY_PROC_LOG----------------
reindex table ENTRY_PROC_LOG;
\echo ---------------ENTRY_QUERY----------------
reindex table ENTRY_QUERY;
\echo ---------------ENTRY_WORKFLOW----------------
--reindex table ENTRY_WORKFLOW;
\echo ---------------EPA_CHEM_CERT----------------
reindex table EPA_CHEM_CERT;
\echo ---------------EPA_CHK----------------
reindex table EPA_CHK;
\echo ---------------EPA_SCARP_CERT----------------
reindex table EPA_SCARP_CERT;
\echo ---------------ERR_LOG----------------
reindex table ERR_LOG;
\echo ---------------EX_APPL_CLOSE----------------
reindex table EX_APPL_CLOSE;
\echo ---------------EX_ARRIVAL_CONTA----------------
reindex table EX_ARRIVAL_CONTA;
\echo ---------------EX_ARRIVAL_ERR_CHK----------------
reindex table EX_ARRIVAL_ERR_CHK;
\echo ---------------EX_ARRIVAL_SHIP----------------
reindex table EX_ARRIVAL_SHIP;
\echo ---------------EX_CDL_MNL_DEDUCT----------------
reindex table EX_CDL_MNL_DEDUCT;
\echo ---------------EX_CONTA_ENTRY_CHK----------------
reindex table EX_CONTA_ENTRY_CHK;
\echo ---------------EX_CONTRACT_CLEAR----------------
reindex table EX_CONTRACT_CLEAR;
\echo ---------------EX_CONTRACT_DEDUC----------------
reindex table EX_CONTRACT_DEDUC;
\echo ---------------EX_CONTRACT_LIST----------------
reindex table EX_CONTRACT_LIST;
\echo ---------------EX_COP_RATE----------------
reindex table EX_COP_RATE;
\echo ---------------EX_DECL_ALARM_HEAD----------------
reindex table EX_DECL_ALARM_HEAD;
\echo ---------------EX_DECL_ALARM_LIST----------------
reindex table EX_DECL_ALARM_LIST;
\echo ---------------EX_DECL_CUR_HEAD----------------
reindex table EX_DECL_CUR_HEAD;
\echo ---------------EX_DECL_CUR_LIST----------------
reindex table EX_DECL_CUR_LIST;
\echo ---------------EX_DECL_HIS_HEAD----------------
reindex table EX_DECL_HIS_HEAD;
\echo ---------------EX_DECL_HIS_LIST----------------
reindex table EX_DECL_HIS_LIST;
\echo ---------------EX_ELE_HEAD----------------
reindex table EX_ELE_HEAD;
\echo ---------------EX_ELE_LIST----------------
reindex table EX_ELE_LIST;
\echo ---------------EX_EXAM_JOU----------------
reindex table EX_EXAM_JOU;
\echo ---------------EX_EXAM_MANA_HEAD----------------
reindex table EX_EXAM_MANA_HEAD;
\echo ---------------EX_EXAM_MANA_LIST----------------
reindex table EX_EXAM_MANA_LIST;
\echo ---------------EX_FASCICLE_LIST----------------
reindex table EX_FASCICLE_LIST;
\echo ---------------EX_LIC_CODE_TS----------------
reindex table EX_LIC_CODE_TS;
\echo ---------------EX_TRAN_JOU----------------
reindex table EX_TRAN_JOU;
\echo ---------------EX_TRANS_ALARM_CONTA_REL----------------
reindex table EX_TRANS_ALARM_CONTA_REL;
\echo ---------------EX_TRANS_ALARM_GOODS_CONTA_REL----------------
reindex table EX_TRANS_ALARM_GOODS_CONTA_REL;
\echo ---------------EX_TRANS_ALARM_LIST_REL----------------
reindex table EX_TRANS_ALARM_LIST_REL;
\echo ---------------EX_TRANS_CONTA_REL----------------
reindex table EX_TRANS_CONTA_REL;
\echo ---------------EX_TRANS_GOODS_CONTA_REL----------------
reindex table EX_TRANS_GOODS_CONTA_REL;
\echo ---------------EX_TRANS_HIS_CONTA_REL----------------
reindex table EX_TRANS_HIS_CONTA_REL;
\echo ---------------EX_TRANS_HIS_GOODS_CONTA_REL----------------
reindex table EX_TRANS_HIS_GOODS_CONTA_REL;
\echo ---------------EX_TRANS_HIS_LIST_REL----------------
reindex table EX_TRANS_HIS_LIST_REL;
\echo ---------------EX_TRANS_LIST_REL----------------
reindex table EX_TRANS_LIST_REL;
\echo ---------------EX_TRN_ARRIVAL_CONTA----------------
reindex table EX_TRN_ARRIVAL_CONTA;
\echo ---------------EX_TRN_CONTA_ENTRY_ARV----------------
reindex table EX_TRN_CONTA_ENTRY_ARV;
\echo ---------------EX_TRN_CONTA_ENTRY_CHK----------------
reindex table EX_TRN_CONTA_ENTRY_CHK;
\echo ---------------EXA_APPL_CLOSE----------------
reindex table EXA_APPL_CLOSE;
\echo ---------------EXAM_CONTA_END_LOG----------------
reindex table EXAM_CONTA_END_LOG;
\echo ---------------EXAM_CONTA_HEAD----------------
reindex table EXAM_CONTA_HEAD;
\echo ---------------EXAM_CONTA_LIST----------------
reindex table EXAM_CONTA_LIST;
\echo ---------------EXC_ELE----------------
reindex table EXC_ELE;
\echo ---------------EXC_EX_CHK----------------
reindex table EXC_EX_CHK;
\echo ---------------EXC_EXAM----------------
reindex table EXC_EXAM;
\echo ---------------EXP_MFT_CHK_RESULT----------------
reindex table EXP_MFT_CHK_RESULT;
\echo ---------------EXTERNAL_JOU----------------
reindex table EXTERNAL_JOU;
\echo ---------------FASCICLE_HEAD----------------
reindex table FASCICLE_HEAD;
\echo ---------------FCB_CHK----------------
reindex table FCB_CHK;
\echo ---------------FCB_CONTA----------------
reindex table FCB_CONTA;
\echo ---------------FCB_CONTA_MODI----------------
reindex table FCB_CONTA_MODI;
\echo ---------------FCB_HEAD----------------
reindex table FCB_HEAD;
\echo ---------------FCB_HEAD_MODI----------------
reindex table FCB_HEAD_MODI;
\echo ---------------FCB_LIST----------------
reindex table FCB_LIST;
\echo ---------------FCB_LIST_MODI----------------
reindex table FCB_LIST_MODI;
\echo ---------------FCB_RSK----------------
reindex table FCB_RSK;
\echo ---------------FCB_WORKFLOW----------------
reindex table FCB_WORKFLOW;
\echo ---------------FEE_INVOICE----------------
reindex table FEE_INVOICE;
\echo ---------------FORFEIT_FORM----------------
reindex table FORFEIT_FORM;
\echo ---------------FORM_CHK----------------
reindex table FORM_CHK;
\echo ---------------GUARANTEE_DEL_LOG----------------
reindex table GUARANTEE_DEL_LOG;
\echo ---------------GUARANTEE_LIST----------------
reindex table GUARANTEE_LIST;
\echo ---------------GUARANTEE_R----------------
reindex table GUARANTEE_R;
\echo ---------------H2000_SMS_SEND----------------
reindex table H2000_SMS_SEND;
\echo ---------------H2000_SMS_SENDLOG----------------
reindex table H2000_SMS_SENDLOG;
\echo ---------------HIS_TRN_COP_REL----------------
reindex table HIS_TRN_COP_REL;
\echo ---------------HIS_TRN_DR_REL----------------
reindex table HIS_TRN_DR_REL;
\echo ---------------HIS_TRN_ESEAL_REL----------------
reindex table HIS_TRN_ESEAL_REL;
\echo ---------------HIS_TRN_VE_REL----------------
reindex table HIS_TRN_VE_REL;
\echo ---------------IM_APPL_CLOSE----------------
reindex table IM_APPL_CLOSE;
\echo ---------------IM_CDL_MNL_DEDUCT----------------
reindex table IM_CDL_MNL_DEDUCT;
\echo ---------------IM_CONTRACT_CLEAR----------------
reindex table IM_CONTRACT_CLEAR;
\echo ---------------IM_CONTRACT_DEDUC----------------
reindex table IM_CONTRACT_DEDUC;
\echo ---------------IM_CONTRACT_LIST----------------
reindex table IM_CONTRACT_LIST;
\echo ---------------IM_COP_RATE----------------
reindex table IM_COP_RATE;
\echo ---------------IM_DECL_ALARM_HEAD----------------
reindex table IM_DECL_ALARM_HEAD;
\echo ---------------IM_DECL_ALARM_LIST----------------
reindex table IM_DECL_ALARM_LIST;
\echo ---------------IM_DECL_CUR_HEAD----------------
reindex table IM_DECL_CUR_HEAD;
\echo ---------------IM_DECL_CUR_LIST----------------
reindex table IM_DECL_CUR_LIST;
\echo ---------------IM_DECL_HIS_HEAD----------------
reindex table IM_DECL_HIS_HEAD;
\echo ---------------IM_DECL_HIS_LIST----------------
reindex table IM_DECL_HIS_LIST;
\echo ---------------IM_ELE_HEAD----------------
reindex table IM_ELE_HEAD;
\echo ---------------IM_ELE_LIST----------------
reindex table IM_ELE_LIST;
\echo ---------------IM_EXAM_JOU----------------
reindex table IM_EXAM_JOU;
\echo ---------------IM_EXAM_MANA_HEAD----------------
reindex table IM_EXAM_MANA_HEAD;
\echo ---------------IM_EXAM_MANA_LIST----------------
reindex table IM_EXAM_MANA_LIST;
\echo ---------------IM_FASCICLE_LIST----------------
reindex table IM_FASCICLE_LIST;
\echo ---------------IM_LIC_CODE_TS----------------
reindex table IM_LIC_CODE_TS;
\echo ---------------IM_TRAN_JOU----------------
reindex table IM_TRAN_JOU;
\echo ---------------IM_TRANS_ALARM_CONTA_REL----------------
reindex table IM_TRANS_ALARM_CONTA_REL;
\echo ---------------IM_TRANS_ALARM_GOODS_CONTA_REL----------------
reindex table IM_TRANS_ALARM_GOODS_CONTA_REL;
\echo ---------------IM_TRANS_ALARM_LIST_REL----------------
reindex table IM_TRANS_ALARM_LIST_REL;
\echo ---------------IM_TRANS_CONTA_REL----------------
reindex table IM_TRANS_CONTA_REL;
\echo ---------------IM_TRANS_GOODS_CONTA_REL----------------
reindex table IM_TRANS_GOODS_CONTA_REL;
\echo ---------------IM_TRANS_HIS_CONTA_REL----------------
reindex table IM_TRANS_HIS_CONTA_REL;
\echo ---------------IM_TRANS_HIS_GOODS_CONTA_REL----------------
reindex table IM_TRANS_HIS_GOODS_CONTA_REL;
\echo ---------------IM_TRANS_HIS_LIST_REL----------------
reindex table IM_TRANS_HIS_LIST_REL;
\echo ---------------IM_TRANS_LIST_REL----------------
reindex table IM_TRANS_LIST_REL;
\echo ---------------IMA_APPL_CLOSE----------------
reindex table IMA_APPL_CLOSE;
\echo ---------------INCOME_INFO----------------
reindex table INCOME_INFO;
\echo ---------------INVESTER_REL----------------
reindex table INVESTER_REL;
\echo ---------------INVLOG_REL----------------
reindex table INVLOG_REL;
\echo ---------------JOB_PARAMETER----------------
reindex table JOB_PARAMETER;
\echo ---------------LSP_CHK----------------
reindex table LSP_CHK;
\echo ---------------LSP_HEAD----------------
reindex table LSP_HEAD;
\echo ---------------LSP_LIST----------------
reindex table LSP_LIST;
\echo ---------------MAIL_FILE----------------
reindex table MAIL_FILE;
\echo ---------------MANA_REL----------------
reindex table MANA_REL;
\echo ---------------MANIFEST_CHK----------------
reindex table MANIFEST_CHK;
\echo ---------------MANIFEST_CHK_LOG----------------
reindex table MANIFEST_CHK_LOG;
\echo ---------------MANIFEST_CONTA----------------
reindex table MANIFEST_CONTA;
\echo ---------------MANIFEST_EXCH_LOG----------------
reindex table MANIFEST_EXCH_LOG;
\echo ---------------MANIFEST_EXCH_LOG_BAK----------------
reindex table MANIFEST_EXCH_LOG_BAK;
\echo ---------------MANIFEST_HEAD----------------
reindex table MANIFEST_HEAD;
\echo ---------------MANIFEST_HEAD_XMS_LOG----------------
reindex table MANIFEST_HEAD_XMS_LOG;
\echo ---------------MANIFEST_LIST----------------
reindex table MANIFEST_LIST;
\echo ---------------MANIFEST_LIST_CONTA----------------
reindex table MANIFEST_LIST_CONTA;
\echo ---------------MANIFEST_LIST_LOG----------------
reindex table MANIFEST_LIST_LOG;
\echo ---------------MANIFEST_LIST_RSKINFO_LOG----------------
reindex table MANIFEST_LIST_RSKINFO_LOG;
\echo ---------------MNL_PARA----------------
reindex table MNL_PARA;
\echo ---------------MNL_PRESS----------------
reindex table MNL_PRESS;
\echo ---------------MNL_RECEIVE_RECEIPT----------------
reindex table MNL_RECEIVE_RECEIPT;
\echo ---------------MNL_SEQ----------------
reindex table MNL_SEQ;
\echo ---------------MNLBAK_ACCOUNT----------------
reindex table MNLBAK_ACCOUNT;
\echo ---------------MNLBAK_APPL_CLOSE----------------
reindex table MNLBAK_APPL_CLOSE;
\echo ---------------MNLBAK_CLAIM----------------
reindex table MNLBAK_CLAIM;
\echo ---------------MNLBAK_CONSUME----------------
reindex table MNLBAK_CONSUME;
\echo ---------------MNLBAK_CONTRACT_HEAD----------------
reindex table MNLBAK_CONTRACT_HEAD;
\echo ---------------MNLBAK_CONTRACT_WORKFLOW----------------
reindex table MNLBAK_CONTRACT_WORKFLOW;
\echo ---------------MNLBAK_EX_CONTRACT_CLEAR----------------
reindex table MNLBAK_EX_CONTRACT_CLEAR;
\echo ---------------MNLBAK_EX_CONTRACT_DEDUC----------------
reindex table MNLBAK_EX_CONTRACT_DEDUC;
\echo ---------------MNLBAK_EX_CONTRACT_LIST----------------
reindex table MNLBAK_EX_CONTRACT_LIST;
\echo ---------------MNLBAK_EX_FASCICLE_LIST----------------
reindex table MNLBAK_EX_FASCICLE_LIST;
\echo ---------------MNLBAK_FASCICLE_HEAD----------------
reindex table MNLBAK_FASCICLE_HEAD;
\echo ---------------MNLBAK_FEE_INVOICE----------------
reindex table MNLBAK_FEE_INVOICE;
\echo ---------------MNLBAK_IM_CONTRACT_CLEAR----------------
reindex table MNLBAK_IM_CONTRACT_CLEAR;
\echo ---------------MNLBAK_IM_CONTRACT_DEDUC----------------
reindex table MNLBAK_IM_CONTRACT_DEDUC;
\echo ---------------MNLBAK_IM_CONTRACT_LIST----------------
reindex table MNLBAK_IM_CONTRACT_LIST;
\echo ---------------MNLBAK_IM_FASCICLE_LIST----------------
reindex table MNLBAK_IM_FASCICLE_LIST;
\echo ---------------MNLBAK_PRESS_CLEAR----------------
reindex table MNLBAK_PRESS_CLEAR;
\echo ---------------MNLBAK_SERVICE_FEE----------------
reindex table MNLBAK_SERVICE_FEE;
\echo ---------------MNLBAK_SERVICE_LIST----------------
reindex table MNLBAK_SERVICE_LIST;
\echo ---------------MOD_PROJECT_HEAD----------------
reindex table MOD_PROJECT_HEAD;
\echo ---------------MOD_PROJECT_LIST----------------
reindex table MOD_PROJECT_LIST;
\echo ---------------MOD_RED_HEAD----------------
reindex table MOD_RED_HEAD;
\echo ---------------MOD_RED_LIST----------------
reindex table MOD_RED_LIST;
\echo ---------------NONENTRY_CHK_RESULT----------------
reindex table NONENTRY_CHK_RESULT;
\echo ---------------NORSK_COMPANY----------------
reindex table NORSK_COMPANY;
\echo ---------------NORSK_COMPANY_BAK----------------
reindex table NORSK_COMPANY_BAK;
\echo ---------------NORSK_CONDITION----------------
reindex table NORSK_CONDITION;
\echo ---------------NORSK_CONDITION_BAK----------------
reindex table NORSK_CONDITION_BAK;
\echo ---------------NORSK_TRADE_MODE----------------
reindex table NORSK_TRADE_MODE;
\echo ---------------NORSK_TRADE_MODE_BAK----------------
reindex table NORSK_TRADE_MODE_BAK;
\echo ---------------OCC_ELE_HEAD----------------
reindex table OCC_ELE_HEAD;
\echo ---------------OCC_ELE_LIST----------------
reindex table OCC_ELE_LIST;
\echo ---------------OCC_EXAM----------------
reindex table OCC_EXAM;
\echo ---------------OCC_RECEIPT----------------
reindex table OCC_RECEIPT;
\echo ---------------OTHER_STF_RECORD----------------
reindex table OTHER_STF_RECORD;
\echo ---------------PAPERLESS_SELFSAVE_CERT----------------
reindex table PAPERLESS_SELFSAVE_CERT;
\echo ---------------PAYOUT_REMIT_HEAD----------------
reindex table PAYOUT_REMIT_HEAD;
\echo ---------------PAYOUT_REMIT_LIST----------------
reindex table PAYOUT_REMIT_LIST;
\echo ---------------PES_CANCEL----------------
reindex table PES_CANCEL;
\echo ---------------PES_NOTE----------------
reindex table PES_NOTE;
\echo ---------------PES_WORKFLOW----------------
reindex table PES_WORKFLOW;
\echo ---------------PORT_BIND_REL----------------
reindex table PORT_BIND_REL;
\echo ---------------PRE_APPL_CLOSE----------------
reindex table PRE_APPL_CLOSE;
\echo ---------------PRE_APPL_CLOSE_CONSUME----------------
reindex table PRE_APPL_CLOSE_CONSUME;
\echo ---------------PRE_CDL_COMMODITY----------------
reindex table PRE_CDL_COMMODITY;
\echo ---------------PRE_CDL_COMPANY----------------
reindex table PRE_CDL_COMPANY;
\echo ---------------PRE_COMPANY_REL----------------
reindex table PRE_COMPANY_REL;
\echo ---------------PRE_CONSUME----------------
reindex table PRE_CONSUME;
\echo ---------------PRE_CONTRACT_HEAD----------------
reindex table PRE_CONTRACT_HEAD;
\echo ---------------PRE_DECL_REL----------------
reindex table PRE_DECL_REL;
\echo ---------------PRE_EX_APPL_CLOSE----------------
reindex table PRE_EX_APPL_CLOSE;
\echo ---------------PRE_EX_CONTRACT_LIST----------------
reindex table PRE_EX_CONTRACT_LIST;
\echo ---------------PRE_EX_FASCICLE_LIST----------------
reindex table PRE_EX_FASCICLE_LIST;
\echo ---------------PRE_EXA_APPL_CLOSE----------------
reindex table PRE_EXA_APPL_CLOSE;
\echo ---------------PRE_FASCICLE_HEAD----------------
reindex table PRE_FASCICLE_HEAD;
\echo ---------------PRE_IM_APPL_CLOSE----------------
reindex table PRE_IM_APPL_CLOSE;
\echo ---------------PRE_IM_CONTRACT_LIST----------------
reindex table PRE_IM_CONTRACT_LIST;
\echo ---------------PRE_IM_FASCICLE_LIST----------------
reindex table PRE_IM_FASCICLE_LIST;
\echo ---------------PRE_IMA_APPL_CLOSE----------------
reindex table PRE_IMA_APPL_CLOSE;
\echo ---------------PRE_INVESTER_REL----------------
reindex table PRE_INVESTER_REL;
\echo ---------------PRE_MANA_REL----------------
reindex table PRE_MANA_REL;
\echo ---------------PRE_PROJECT_HEAD----------------
reindex table PRE_PROJECT_HEAD;
\echo ---------------PRE_PROJECT_LIST----------------
reindex table PRE_PROJECT_LIST;
\echo ---------------PRE_RED_HEAD----------------
reindex table PRE_RED_HEAD;
\echo ---------------PRE_RED_LIST----------------
reindex table PRE_RED_LIST;
\echo ---------------PRE_REL_ALC_WORK----------------
reindex table PRE_REL_ALC_WORK;
\echo ---------------PRESS_CLEAR----------------
reindex table PRESS_CLEAR;
\echo ---------------PRICE_LIBRARY----------------
reindex table PRICE_LIBRARY;
\echo ---------------PRICE_LIBRARY_ENTRY----------------
reindex table PRICE_LIBRARY_ENTRY;
\echo ---------------PRICE_LIBRARY_MAN----------------
reindex table PRICE_LIBRARY_MAN;
\echo ---------------PRICE_LIBRARY_RISK----------------
reindex table PRICE_LIBRARY_RISK;
\echo ---------------PROJECT_HEAD----------------
reindex table PROJECT_HEAD;
\echo ---------------PROJECT_LIST----------------
reindex table PROJECT_LIST;
\echo ---------------PROJECT_MAX_NO----------------
reindex table PROJECT_MAX_NO;
\echo ---------------PROJECT_MAX_NO_2007----------------
reindex table PROJECT_MAX_NO_2007;
\echo ---------------RAM_HEAD----------------
reindex table RAM_HEAD;
\echo ---------------RAM_LIST----------------
reindex table RAM_LIST;
\echo ---------------RAM_PRINT_LOG----------------
reindex table RAM_PRINT_LOG;
\echo ---------------RAM_RG_COP_OWNER----------------
reindex table RAM_RG_COP_OWNER;
\echo ---------------RAM_RG_COP_PROJECT----------------
reindex table RAM_RG_COP_PROJECT;
\echo ---------------RAM_RG_COPINFO----------------
reindex table RAM_RG_COPINFO;
\echo ---------------RAM_RG_HEAD----------------
reindex table RAM_RG_HEAD;
\echo ---------------RAM_RN_INFO----------------
reindex table RAM_RN_INFO;
\echo ---------------RAM_RY_COMMUNICATION----------------
reindex table RAM_RY_COMMUNICATION;
\echo ---------------RAM_STATUS----------------
reindex table RAM_STATUS;
\echo ---------------RAM_STATUS_LIST----------------
reindex table RAM_STATUS_LIST;
\echo ---------------RAM_STATUS_MODI_LOG----------------
reindex table RAM_STATUS_MODI_LOG;
\echo ---------------RCP_INCOME_HEAD----------------
reindex table RCP_INCOME_HEAD;
\echo ---------------RCP_INCOME_HEAD_BAK----------------
reindex table RCP_INCOME_HEAD_BAK;
\echo ---------------RCP_INCOME_LIST----------------
reindex table RCP_INCOME_LIST;
\echo ---------------RCP_INCOME_LIST_BAK----------------
reindex table RCP_INCOME_LIST_BAK;
\echo ---------------RCP_PAYMENT_HEAD----------------
reindex table RCP_PAYMENT_HEAD;
\echo ---------------RCP_PAYMENT_HEAD_BAK----------------
reindex table RCP_PAYMENT_HEAD_BAK;
\echo ---------------RCP_PAYMENT_LIST----------------
reindex table RCP_PAYMENT_LIST;
\echo ---------------RCP_PAYMENT_LIST_BAK----------------
reindex table RCP_PAYMENT_LIST_BAK;
\echo ---------------RCP_RECORD_HEAD----------------
reindex table RCP_RECORD_HEAD;
\echo ---------------RCP_RECORD_HEAD_BAK----------------
reindex table RCP_RECORD_HEAD_BAK;
\echo ---------------RCP_RECORD_LIST----------------
reindex table RCP_RECORD_LIST;
\echo ---------------RCP_RECORD_LIST_BAK----------------
reindex table RCP_RECORD_LIST_BAK;
\echo ---------------RCP_WORKFLOW----------------
reindex table RCP_WORKFLOW;
\echo ---------------RED_ENTRY_HEAD----------------
reindex table RED_ENTRY_HEAD;
\echo ---------------RED_ENTRY_LIST----------------
reindex table RED_ENTRY_LIST;
\echo ---------------RED_FEE_INVOICE----------------
reindex table RED_FEE_INVOICE;
\echo ---------------RED_HEAD----------------
reindex table RED_HEAD;
\echo ---------------RED_LIST----------------
reindex table RED_LIST;
\echo ---------------RED_MAX_NO----------------
reindex table RED_MAX_NO;
\echo ---------------RED_MAX_NO_2007----------------
reindex table RED_MAX_NO_2007;
\echo ---------------RED_RECEIVE_RECEIPT----------------
reindex table RED_RECEIVE_RECEIPT;
\echo ---------------RED_SERVICE_FEE----------------
reindex table RED_SERVICE_FEE;
\echo ---------------REL_ALC_WORK----------------
reindex table REL_ALC_WORK;
\echo ---------------RETURN_REL----------------
reindex table RETURN_REL;
\echo ---------------RISK_CONTROL----------------
reindex table RISK_CONTROL;
\echo ---------------RSK_ASSAY_APPLICATION----------------
reindex table RSK_ASSAY_APPLICATION;
\echo ---------------RSK_CASE_FEEDBACK_HEAD----------------
reindex table RSK_CASE_FEEDBACK_HEAD;
\echo ---------------RSK_CASE_FEEDBACK_LIST----------------
reindex table RSK_CASE_FEEDBACK_LIST;
\echo ---------------RSK_CASE_FEEDBACK_LIST_CERT----------------
reindex table RSK_CASE_FEEDBACK_LIST_CERT;
\echo ---------------RSK_CASE_TRANSFER_G_NO----------------
reindex table RSK_CASE_TRANSFER_G_NO;
\echo ---------------RSK_CASE_TRANSFER_HEAD----------------
reindex table RSK_CASE_TRANSFER_HEAD;
\echo ---------------RSK_CASE_TRANSFER_LIST----------------
reindex table RSK_CASE_TRANSFER_LIST;
\echo ---------------RSK_CODE_TS----------------
reindex table RSK_CODE_TS;
\echo ---------------RSK_CODE_TS_BAK----------------
reindex table RSK_CODE_TS_BAK;
\echo ---------------RSK_CONDITION----------------
reindex table RSK_CONDITION;
\echo ---------------RSK_CONDITION_BAK----------------
reindex table RSK_CONDITION_BAK;
\echo ---------------RSK_CONTA_CAPACITY----------------
reindex table RSK_CONTA_CAPACITY;
\echo ---------------RSK_CONTA_CAPACITY_BAK----------------
reindex table RSK_CONTA_CAPACITY_BAK;
\echo ---------------RSK_EXAM_HEAD_REL----------------
reindex table RSK_EXAM_HEAD_REL;
\echo ---------------RSK_EXAM_LIST_CONTAINER----------------
reindex table RSK_EXAM_LIST_CONTAINER;
\echo ---------------RSK_EXAM_LIST_REL----------------
reindex table RSK_EXAM_LIST_REL;
\echo ---------------RSK_EXAM_OP_LOG----------------
reindex table RSK_EXAM_OP_LOG;
\echo ---------------RSK_FAKE_CODE_TS----------------
reindex table RSK_FAKE_CODE_TS;
\echo ---------------RSK_FAKE_CODE_TS_BAK----------------
reindex table RSK_FAKE_CODE_TS_BAK;
\echo ---------------RSK_FIT_LOG_REL----------------
reindex table RSK_FIT_LOG_REL;
\echo ---------------RSK_FIT_RESULT_LOG----------------
reindex table RSK_FIT_RESULT_LOG;
\echo ---------------RSK_INSTR_ATTR_REL----------------
reindex table RSK_INSTR_ATTR_REL;
\echo ---------------RSK_INSTR_PROC_REL----------------
reindex table RSK_INSTR_PROC_REL;
\echo ---------------RSK_OP_LOG----------------
reindex table RSK_OP_LOG;
\echo ---------------RSK_RECHECK_REL----------------
reindex table RSK_RECHECK_REL;
\echo ---------------RSK_REPLICATION_LOG----------------
reindex table RSK_REPLICATION_LOG;
\echo ---------------RSK_RESULT_REL----------------
reindex table RSK_RESULT_REL;
\echo ---------------RSK_TRADE_CO----------------
reindex table RSK_TRADE_CO;
\echo ---------------RSK_TRADE_CO_BAK----------------
reindex table RSK_TRADE_CO_BAK;
\echo ---------------RSK_UNLOCK_OP_LOG----------------
reindex table RSK_UNLOCK_OP_LOG;
\echo ---------------RSK_VS_EXAM----------------
reindex table RSK_VS_EXAM;
\echo ---------------RSK_WORKFLOW----------------
reindex table RSK_WORKFLOW;
\echo ---------------SERVICE_FEE----------------
reindex table SERVICE_FEE;
\echo ---------------SERVICE_LIST----------------
reindex table SERVICE_LIST;
\echo ---------------SHIP_TONNAGE----------------
reindex table SHIP_TONNAGE;
\echo ---------------SPECIAL_ENTRY----------------
reindex table SPECIAL_ENTRY;
\echo ---------------STATUS_DETAIL----------------
reindex table STATUS_DETAIL;
\echo ---------------STATUS_DETAIL----------------
reindex table STATUS_DETAIL;
\echo ---------------STF_RECORD----------------
reindex table STF_RECORD;
\echo ---------------STL_DATA_CONTA_LIST----------------
reindex table STL_DATA_CONTA_LIST;
\echo ---------------STL_DATA_HEAD----------------
reindex table STL_DATA_HEAD;
\echo ---------------STL_DATA_TS_LIST----------------
reindex table STL_DATA_TS_LIST;
\echo ---------------STL_REQUEST_CHK----------------
reindex table STL_REQUEST_CHK;
\echo ---------------TAR_DEL_LOG----------------
reindex table TAR_DEL_LOG;
\echo ---------------TCS_COUNTER----------------
reindex table TCS_COUNTER;
\echo ---------------TCS_DETAIL_HEAD----------------
reindex table TCS_DETAIL_HEAD;
\echo ---------------TCS_DETAIL_LIST----------------
reindex table TCS_DETAIL_LIST;
\echo ---------------TCS_ERROR_LOG----------------
reindex table TCS_ERROR_LOG;
\echo ---------------TCS_SEND_LOG----------------
reindex table TCS_SEND_LOG;
\echo ---------------TCS_STATISTIC_REPORT----------------
reindex table TCS_STATISTIC_REPORT;
\echo ---------------TEMP_DB----------------
reindex table TEMP_DB;
\echo ---------------TEMP_DEL_EMS_CONSUME----------------
reindex table TEMP_DEL_EMS_CONSUME;
\echo ---------------TEMP_DEL_EMS_HEAD----------------
reindex table TEMP_DEL_EMS_HEAD;
\echo ---------------TEMP_PAGE_RANGE----------------
reindex table TEMP_PAGE_RANGE;
\echo ---------------TEP_COMPANY----------------
reindex table TEP_COMPANY;
\echo ---------------TEP_DEBIT_REC_REQUEST----------------
reindex table TEP_DEBIT_REC_REQUEST;
\echo ---------------TEP_DEBIT_REC_RESPONSE----------------
reindex table TEP_DEBIT_REC_RESPONSE;
\echo ---------------TEP_EPLAT_RESPONSE----------------
reindex table TEP_EPLAT_RESPONSE;
\echo ---------------TEP_ERR_LOG----------------
reindex table TEP_ERR_LOG;
\echo ---------------TEP_LOG----------------
reindex table TEP_LOG;
\echo ---------------TEP_PAY_LOG----------------
reindex table TEP_PAY_LOG;
\echo ---------------TEP_PAY_REC_REQUEST----------------
reindex table TEP_PAY_REC_REQUEST;
\echo ---------------TEP_PAY_REC_RESPONSE----------------
reindex table TEP_PAY_REC_RESPONSE;
\echo ---------------TEP_REC_LOG----------------
reindex table TEP_REC_LOG;
\echo ---------------TEP_SEQ----------------
reindex table TEP_SEQ;
\echo ---------------TEP_STATUS_QUERY----------------
reindex table TEP_STATUS_QUERY;
\echo ---------------TEP_VOUCHER_REC_LIST----------------
reindex table TEP_VOUCHER_REC_LIST;
\echo ---------------TEP_VOUCHER_REC_LIST_DETAIL----------------
reindex table TEP_VOUCHER_REC_LIST_DETAIL;
\echo ---------------TEP_VOUCHER_REC_PAGE_LIST----------------
reindex table TEP_VOUCHER_REC_PAGE_LIST;
\echo ---------------TMP_EMS_CONSUME----------------
reindex table TMP_EMS_CONSUME;
\echo ---------------TMP_EMS_DCR_ENT----------------
reindex table TMP_EMS_DCR_ENT;
\echo ---------------TMP_EMS_HEAD----------------
reindex table TMP_EMS_HEAD;
\echo ---------------TMP_EMS_LIST----------------
reindex table TMP_EMS_LIST;
\echo ---------------TRADE_ERR----------------
reindex table TRADE_ERR;
\echo ---------------TRADE_GPM_RTX----------------
reindex table TRADE_GPM_RTX;
\echo ---------------TRANSFER_FEE----------------
reindex table TRANSFER_FEE;
\echo ---------------TRANSFER_FEE_LOG----------------
reindex table TRANSFER_FEE_LOG;
\echo ---------------TRN_ALC_REL----------------
reindex table TRN_ALC_REL;
\echo ---------------TRN_CHECK----------------
reindex table TRN_CHECK;
\echo ---------------TRN_CHK_GOODS----------------
reindex table TRN_CHK_GOODS;
\echo ---------------TRN_COP_REL----------------
reindex table TRN_COP_REL;
\echo ---------------TRN_DELAY_FORM----------------
reindex table TRN_DELAY_FORM;
\echo ---------------TRN_DR_REL----------------
reindex table TRN_DR_REL;
\echo ---------------TRN_ESEAL_REL----------------
reindex table TRN_ESEAL_REL;
\echo ---------------TRN_EXAM_MAX_SEQ----------------
reindex table TRN_EXAM_MAX_SEQ;
\echo ---------------TRN_I_E_PORT----------------
reindex table TRN_I_E_PORT;
\echo ---------------TRN_PARAMETER----------------
reindex table TRN_PARAMETER;
\echo ---------------TRN_POP_COP_REL----------------
reindex table TRN_POP_COP_REL;
\echo ---------------TRN_POP_HEAD----------------
reindex table TRN_POP_HEAD;
\echo ---------------TRN_POP_LIST----------------
reindex table TRN_POP_LIST;
\echo ---------------TRN_PRE_MAX_SEQ----------------
reindex table TRN_PRE_MAX_SEQ;
\echo ---------------TRN_SHIP----------------
reindex table TRN_SHIP;
\echo ---------------TRN_VE_REL----------------
reindex table TRN_VE_REL;
\echo ---------------TRN_VEHICLE----------------
reindex table TRN_VEHICLE;
\echo ---------------YD_DECLARE_REL----------------
reindex table YD_DECLARE_REL;
select now();
