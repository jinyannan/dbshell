#! /bin/bash
if [ -e /data/xloader/doc_root/ACCOUNT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ACCOUNT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/AGREEMENT_GOODS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/AGREEMENT_GOODS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/AMS_MODI_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/AMS_MODI_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/AMSLIST_BODY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/AMSLIST_BODY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/AMSLIST_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/AMSLIST_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/APPL_CLOSE_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/APPL_CLOSE_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/APPLY_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/APPLY_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/APPLY_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/APPLY_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ARRIVAL_INFO_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ARRIVAL_INFO_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ARRIVAL_INFO_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ARRIVAL_INFO_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_BWS_EXAM_CERT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_BWS_EXAM_CERT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_BWS_EXAM_GOOD_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_BWS_EXAM_GOOD_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_BWS_EXAM_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_BWS_EXAM_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_CONTRACT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_CONTRACT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_DCG_BILL_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_DCG_BILL_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_DCG_BILL_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_DCG_BILL_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_DCG_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_DCG_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_DCG_DEDUCT_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_DCG_DEDUCT_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_DCG_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_DCG_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_DCG_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_DCG_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_EMS_APPR_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_EMS_APPR_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_EMS_APPR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_EMS_APPR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_EMS_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_EMS_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_EMS_DEDUCT_CLR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_EMS_DEDUCT_CLR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_EMS_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_EMS_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_EMS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_EMS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_EX_CONTRACT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_EX_CONTRACT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_EX_FASCICLE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_EX_FASCICLE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_FASCICLE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_FASCICLE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_IM_CONTRACT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_IM_CONTRACT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BAK_IM_FASCICLE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BAK_IM_FASCICLE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BANK_ACCOUNT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BANK_ACCOUNT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_COP_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_COP_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_COP_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_COP_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_COP_LIST_TEMP.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_COP_LIST_TEMP_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_COP_PARA_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_COP_PARA_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_COP_PARA_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_COP_PARA_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_EXECUTOR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_EXECUTOR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_HANDOVER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_HANDOVER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_HANDOVER_TYPE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_HANDOVER_TYPE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_STOCK_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_STOCK_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_STOCK_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_STOCK_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BCK_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BCK_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BTI_DATA_CONTA_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BTI_DATA_CONTA_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BTI_DATA_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BTI_DATA_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BTI_DATA_TS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BTI_DATA_TS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_AUDIT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_AUDIT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_AUDIT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_AUDIT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_DCR_BILL_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_DCR_BILL_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_DCR_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_DCR_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_DCR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_DCR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_DEDUCT_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_DEDUCT_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_EXAM_CERT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_EXAM_CERT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_EXAM_GOOD_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_EXAM_GOOD_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_EXAM_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_EXAM_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_EXAM_PASSCERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_EXAM_PASSCERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_FORM_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_FORM_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_FORM_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_FORM_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_GB_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_GB_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_MANIFEST_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_MANIFEST_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_MANIFEST_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_MANIFEST_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_VAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_VAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/BWS_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/BWS_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CCTS_ERROR_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CCTS_ERROR_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CCTS_ONLINE_RESULT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CCTS_ONLINE_RESULT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CCTS_ONLINE_RESULT_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CCTS_ONLINE_RESULT_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CCTS_PERFORMANCE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CCTS_PERFORMANCE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CCTS_RSK_RESULT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CCTS_RSK_RESULT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CCTS_RSK_RESULT_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CCTS_RSK_RESULT_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_CERTIFICATE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_CERTIFICATE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_COMMODITY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_COMMODITY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_COMP_COMM_MODIFY_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_COMP_COMM_MODIFY_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_COMP_COMM_OP_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_COMP_COMM_OP_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_COMPANY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_COMPANY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_CONTAINER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_CONTAINER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_DEL_CERTIFICATE_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_DEL_CERTIFICATE_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_DEL_CONTAINER_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_DEL_CONTAINER_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_DEL_HEAD_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_DEL_HEAD_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_DEL_LIST_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_DEL_LIST_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_EDI_MESS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_EDI_MESS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_EMS_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_EMS_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_EMS_DEDUCT_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_EMS_DEDUCT_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_ENTRY_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_ENTRY_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_ENTRY_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_ENTRY_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_LICENSE_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_LICENSE_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_LOCK_COMMODITY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_LOCK_COMMODITY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_MODI_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_MODI_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_OP_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_OP_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_OVERDUE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_OVERDUE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_STATUS_DETAIL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_STATUS_DETAIL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CDL_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CDL_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CHK_COP_RATIO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CHK_COP_RATIO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CHK_COUNTER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CHK_COUNTER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CHK_RATE_LIMIT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CHK_RATE_LIMIT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CHKHS_MNLPROC.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CHKHS_MNLPROC_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CIC_CODE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CIC_CODE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CIC_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CIC_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CIC_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CIC_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CIC_MAXID.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CIC_MAXID_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CIC_SEND_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CIC_SEND_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CLAIM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CLAIM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CLC_CHKRATE_LIMIT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CLC_CHKRATE_LIMIT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CLC_GPR_RATIO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CLC_GPR_RATIO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CLC_GPR_RATIO_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CLC_GPR_RATIO_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CNS_COUNTER_TABLE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CNS_COUNTER_TABLE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CO_CLASS_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CO_CLASS_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/COMPANY_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/COMPANY_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONSUME_DB.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONSUME_DB_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONSUME_GOODS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONSUME_GOODS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONTA.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONTA_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONTA_MONITOR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONTA_MONITOR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONTRACT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONTRACT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONTRACT_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONTRACT_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONVEYANCE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONVEYANCE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CONVEYANCE_SEGMENT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CONVEYANCE_SEGMENT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/COP_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/COP_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/COP_SPEC_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/COP_SPEC_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/COPLOG_DELETE_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/COPLOG_DELETE_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/COPLOG_MODIFY_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/COPLOG_MODIFY_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CORP_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CORP_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CORP_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CORP_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CORP_TABLE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CORP_TABLE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CORP_TYPE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CORP_TYPE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/COUNTER_TABLE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/COUNTER_TABLE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CREDIT_INFO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CREDIT_INFO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CTS_CHKRATE_LIMIT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CTS_CHKRATE_LIMIT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CTS_CHKRATE_LIMIT_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CTS_CHKRATE_LIMIT_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CTS_PERIOD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CTS_PERIOD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CUS_GOOD_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CUS_GOOD_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CUSTOMS_DEFAULT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CUSTOMS_DEFAULT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/CUSTOMS_ESEAL_CONFIG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/CUSTOMS_ESEAL_CONFIG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_BAK_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_BAK_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_BILL_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_BILL_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_BILL_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_BILL_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_COPR_INFO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_COPR_INFO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_DEDUCT_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_DEDUCT_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DCG_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DCG_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECL_CO_ENTRY_COUNT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECL_CO_ENTRY_COUNT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECL_CO_ENTRY_COUNT_TEMP.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECL_CO_ENTRY_COUNT_TEMP_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECLAR_COUNTER_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECLAR_COUNTER_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECLAR_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECLAR_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECLARER_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECLARER_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECLOG_FULL_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECLOG_FULL_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECLOG_MOD_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECLOG_MOD_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECLOG_MODIFY_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECLOG_MODIFY_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECLOG_SCORE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECLOG_SCORE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DECLOG_SCORE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DECLOG_SCORE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_ARC_AGENT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_ARC_AGENT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_ARC_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_ARC_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_ARC_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_ARC_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_ARC_MERCHANT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_ARC_MERCHANT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_CLEAR_CERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_CLEAR_CERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_CLEAR_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_CLEAR_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_CLEAR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_CLEAR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_DECLARE_CERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_DECLARE_CERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_DECLARE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_DECLARE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_EGS_DECLARE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_EGS_DECLARE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DEL_MOD_APPLY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DEL_MOD_APPLY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DISTRIBUTIVE_BILL_DECLARE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DISTRIBUTIVE_BILL_DECLARE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DISTRIBUTIVE_DECLARE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DISTRIBUTIVE_DECLARE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DISTRIBUTIVE_TRANSIT_WAY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DST_COUNTER_TABLE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DST_COUNTER_TABLE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DST_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DST_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DST_EXG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DST_EXG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DST_EXG_ORI_ENTRY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DST_EXG_ORI_ENTRY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DST_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DST_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DST_IMG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DST_IMG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DST_IMG_ORI_ENTRY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DST_IMG_ORI_ENTRY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DTT_COP_PARAM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DTT_COP_PARAM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DUTY_CHECK_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DUTY_CHECK_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DUTYFORM_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DUTYFORM_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/DUTYFORM_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/DUTYFORM_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ECO_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ECO_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ECO_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ECO_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ECO_PARTS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ECO_PARTS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ECO_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ECO_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_ADMIT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_ADMIT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_ADMIT_HS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_ADMIT_HS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_ADMIT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_ADMIT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_ARC_AGENT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_ARC_AGENT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_ARC_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_ARC_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_ARC_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_ARC_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_ARC_MERCHANT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_ARC_MERCHANT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_CHECK_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_CHECK_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_CLEAR_CERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_CLEAR_CERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_CLEAR_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_CLEAR_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_CLEAR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_CLEAR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_DECLARE_CERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_DECLARE_CERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_DECLARE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_DECLARE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_DECLARE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_DECLARE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_LEND_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_LEND_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_LEND_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_LEND_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_PATROL_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_PATROL_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_PATROL_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_PATROL_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EGS_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EGS_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_ACCOUNT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_ACCOUNT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_APPR_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_APPR_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_APPR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_APPR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_CLAIM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_CLAIM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_CLR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_CLR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_CLR_TMP.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_CLR_TMP_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_COMPLEX.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_COMPLEX_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_COMPLEX2.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_COMPLEX2_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_CONSUME_CLR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_CONSUME_CLR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_CONSUME_CLR_D.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_CONSUME_CLR_D_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_DCR_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_DCR_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_DCR_ENT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_DCR_ENT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_DCR_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_DCR_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_DCR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_DCR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_DCR_RUB_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_DCR_RUB_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_DEDUCT_CLR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_DEDUCT_CLR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_DEDUCT_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_DEDUCT_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_ENP.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_ENP_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_ENP_JOU.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_ENP_JOU_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_MESSAGE_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_MESSAGE_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_PRESS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_PRESS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_PRESS_CLEAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_PRESS_CLEAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_TMP_CLR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_TMP_CLR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_VAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_VAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_VERIFY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_VERIFY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_VERIFY_DETAIL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_VERIFY_DETAIL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EMS_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EMS_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_AUTOREL_ERR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_AUTOREL_ERR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_AUTOREL_ERR_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_AUTOREL_ERR_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_CENTRY_SELECT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_CENTRY_SELECT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_CENTRY_SELECT_DEL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_CENTRY_SELECT_DEL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_CERTIFICATE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_CERTIFICATE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_CERTIFICATE_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_CERTIFICATE_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_CONTAINER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_CONTAINER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_CONTAINER_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_CONTAINER_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_DEL_HEAD_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_DEL_HEAD_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_DEL_LIST_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_DEL_LIST_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_EVALUATION.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_EVALUATION_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_GPM_RTX.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_GPM_RTX_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_GPM_RTX_PRINTLOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_GPM_RTX_PRINTLOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_GPM_RTX_SENDLOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_GPM_RTX_SENDLOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_MODI_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_MODI_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_OP_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_OP_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_PROC.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_PROC_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ENTRY_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ENTRY_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EPA_CHEM_CERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EPA_CHEM_CERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EPA_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EPA_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EPA_SCARP_CERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EPA_SCARP_CERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/ERR_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/ERR_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_ARRIVAL_CONTA.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_ARRIVAL_CONTA_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_ARRIVAL_ERR_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_ARRIVAL_ERR_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_ARRIVAL_SHIP.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_ARRIVAL_SHIP_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_CDL_MNL_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_CDL_MNL_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_CONTA_ENTRY_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_CONTA_ENTRY_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_CONTRACT_CLEAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_CONTRACT_CLEAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_CONTRACT_DEDUC.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_CONTRACT_DEDUC_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_CONTRACT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_CONTRACT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_COP_RATE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_COP_RATE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_DECL_ALARM_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_DECL_ALARM_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_DECL_ALARM_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_DECL_ALARM_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_DECL_CUR_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_DECL_CUR_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_DECL_CUR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_DECL_CUR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_DECL_HIS_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_DECL_HIS_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_DECL_HIS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_DECL_HIS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_ELE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_ELE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_ELE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_ELE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_EXAM_JOU.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_EXAM_JOU_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_EXAM_MANA_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_EXAM_MANA_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_EXAM_MANA_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_EXAM_MANA_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_FASCICLE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_FASCICLE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_LIC_CODE_TS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_LIC_CODE_TS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRAN_JOU.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRAN_JOU_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_ALARM_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_ALARM_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_ALARM_GOODS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_ALARM_GOODS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_ALARM_LIST_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_ALARM_LIST_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_GOODS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_GOODS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_HIS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_HIS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_HIS_GOODS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_HIS_GOODS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_HIS_LIST_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_HIS_LIST_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRANS_LIST_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRANS_LIST_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRN_ARRIVAL_CONTA.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRN_ARRIVAL_CONTA_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRN_CONTA_ENTRY_ARV.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRN_CONTA_ENTRY_ARV_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EX_TRN_CONTA_ENTRY_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EX_TRN_CONTA_ENTRY_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXA_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXA_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXAM_CONTA_END_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXAM_CONTA_END_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXAM_CONTA_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXAM_CONTA_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXAM_CONTA_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXAM_CONTA_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXC_ELE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXC_ELE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXC_EX_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXC_EX_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXC_EXAM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXC_EXAM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXP_MFT_CHK_RESULT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXP_MFT_CHK_RESULT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/EXTERNAL_JOU.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/EXTERNAL_JOU_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FASCICLE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FASCICLE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_CONTA.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_CONTA_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_CONTA_MODI.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_CONTA_MODI_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_HEAD_MODI.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_HEAD_MODI_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_LIST_MODI.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_LIST_MODI_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_RSK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_RSK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FCB_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FCB_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FEE_INVOICE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FEE_INVOICE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FORFEIT_FORM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FORFEIT_FORM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/FORM_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/FORM_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/GUARANTEE_DEL_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/GUARANTEE_DEL_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/GUARANTEE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/GUARANTEE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/GUARANTEE_R.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/GUARANTEE_R_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/H2000_SMS_SEND.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/H2000_SMS_SEND_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/H2000_SMS_SENDLOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/H2000_SMS_SENDLOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/HIS_TRN_COP_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/HIS_TRN_COP_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/HIS_TRN_DR_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/HIS_TRN_DR_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/HIS_TRN_ESEAL_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/HIS_TRN_ESEAL_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/HIS_TRN_VE_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/HIS_TRN_VE_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_CDL_MNL_DEDUCT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_CDL_MNL_DEDUCT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_CONTRACT_CLEAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_CONTRACT_CLEAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_CONTRACT_DEDUC.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_CONTRACT_DEDUC_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_CONTRACT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_CONTRACT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_COP_RATE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_COP_RATE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_DECL_ALARM_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_DECL_ALARM_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_DECL_ALARM_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_DECL_ALARM_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_DECL_CUR_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_DECL_CUR_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_DECL_CUR_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_DECL_CUR_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_DECL_HIS_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_DECL_HIS_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_DECL_HIS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_DECL_HIS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_ELE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_ELE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_ELE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_ELE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_EXAM_JOU.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_EXAM_JOU_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_EXAM_MANA_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_EXAM_MANA_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_EXAM_MANA_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_EXAM_MANA_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_FASCICLE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_FASCICLE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_LIC_CODE_TS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_LIC_CODE_TS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRAN_JOU.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRAN_JOU_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_ALARM_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_ALARM_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_ALARM_GOODS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_ALARM_LIST_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_ALARM_LIST_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_GOODS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_GOODS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_HIS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_HIS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_HIS_GOODS_CONTA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_HIS_GOODS_CONTA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_HIS_LIST_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_HIS_LIST_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IM_TRANS_LIST_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IM_TRANS_LIST_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/IMA_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/IMA_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/INCOME_INFO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/INCOME_INFO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/INVESTER_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/INVESTER_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/INVLOG_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/INVLOG_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/JOB_PARAMETER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/JOB_PARAMETER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/LSP_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/LSP_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/LSP_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/LSP_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/LSP_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/LSP_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MAIL_FILE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MAIL_FILE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_CHK_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_CHK_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_CONTA.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_CONTA_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_EXCH_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_EXCH_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_EXCH_LOG_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_EXCH_LOG_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_HEAD_XMS_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_HEAD_XMS_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_LIST_CONTA.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_LIST_CONTA_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_LIST_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_LIST_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MANIFEST_LIST_RSKINFO_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MANIFEST_LIST_RSKINFO_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNL_PARA.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNL_PARA_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNL_PRESS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNL_PRESS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNL_RECEIVE_RECEIPT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNL_RECEIVE_RECEIPT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNL_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNL_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_ACCOUNT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_ACCOUNT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_CLAIM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_CLAIM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_CONTRACT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_CONTRACT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_CONTRACT_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_CONTRACT_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_EX_CONTRACT_CLEAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_EX_CONTRACT_CLEAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_EX_CONTRACT_DEDUC.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_EX_CONTRACT_DEDUC_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_EX_CONTRACT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_EX_CONTRACT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_EX_FASCICLE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_EX_FASCICLE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_FASCICLE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_FASCICLE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_FEE_INVOICE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_FEE_INVOICE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_IM_CONTRACT_CLEAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_IM_CONTRACT_CLEAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_IM_CONTRACT_DEDUC.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_IM_CONTRACT_DEDUC_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_IM_CONTRACT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_IM_CONTRACT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_IM_FASCICLE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_IM_FASCICLE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_PRESS_CLEAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_PRESS_CLEAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_SERVICE_FEE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_SERVICE_FEE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MNLBAK_SERVICE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MNLBAK_SERVICE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MOD_PROJECT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MOD_PROJECT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MOD_PROJECT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MOD_PROJECT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MOD_RED_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MOD_RED_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/MOD_RED_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/MOD_RED_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/NONENTRY_CHK_RESULT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/NONENTRY_CHK_RESULT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/NORSK_COMPANY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/NORSK_COMPANY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/NORSK_COMPANY_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/NORSK_COMPANY_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/NORSK_CONDITION.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/NORSK_CONDITION_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/NORSK_CONDITION_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/NORSK_CONDITION_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/NORSK_TRADE_MODE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/NORSK_TRADE_MODE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/NORSK_TRADE_MODE_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/NORSK_TRADE_MODE_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/OCC_ELE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/OCC_ELE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/OCC_ELE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/OCC_ELE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/OCC_EXAM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/OCC_EXAM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/OCC_RECEIPT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/OCC_RECEIPT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/OTHER_STF_RECORD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/OTHER_STF_RECORD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PAPERLESS_SELFSAVE_CERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PAPERLESS_SELFSAVE_CERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PAYOUT_REMIT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PAYOUT_REMIT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PAYOUT_REMIT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PAYOUT_REMIT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PES_CANCEL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PES_CANCEL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PES_NOTE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PES_NOTE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PES_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PES_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PORT_BIND_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PORT_BIND_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_APPL_CLOSE_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_APPL_CLOSE_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_CDL_COMMODITY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_CDL_COMMODITY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_CDL_COMPANY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_CDL_COMPANY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_COMPANY_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_COMPANY_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_CONTRACT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_CONTRACT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_DECL_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_DECL_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_EX_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_EX_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_EX_CONTRACT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_EX_CONTRACT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_EX_FASCICLE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_EX_FASCICLE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_EXA_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_EXA_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_FASCICLE_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_FASCICLE_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_IM_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_IM_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_IM_CONTRACT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_IM_CONTRACT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_IM_FASCICLE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_IM_FASCICLE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_IMA_APPL_CLOSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_IMA_APPL_CLOSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_INVESTER_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_INVESTER_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_MANA_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_MANA_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_PROJECT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_PROJECT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_PROJECT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_PROJECT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_RED_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_RED_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_RED_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_RED_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRE_REL_ALC_WORK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRE_REL_ALC_WORK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRESS_CLEAR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRESS_CLEAR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRICE_LIBRARY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRICE_LIBRARY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRICE_LIBRARY_ENTRY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRICE_LIBRARY_ENTRY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRICE_LIBRARY_MAN.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRICE_LIBRARY_MAN_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PRICE_LIBRARY_RISK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PRICE_LIBRARY_RISK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PROJECT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PROJECT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PROJECT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PROJECT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PROJECT_MAX_NO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PROJECT_MAX_NO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/PROJECT_MAX_NO_2007.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/PROJECT_MAX_NO_2007_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_PRINT_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_PRINT_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_RG_COP_OWNER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_RG_COP_OWNER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_RG_COP_PROJECT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_RG_COP_PROJECT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_RG_COPINFO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_RG_COPINFO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_RG_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_RG_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_RN_INFO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_RN_INFO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_RY_COMMUNICATION.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_RY_COMMUNICATION_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_STATUS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_STATUS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_STATUS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_STATUS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RAM_STATUS_MODI_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RAM_STATUS_MODI_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_INCOME_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_INCOME_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_INCOME_HEAD_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_INCOME_HEAD_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_INCOME_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_INCOME_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_INCOME_LIST_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_INCOME_LIST_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_PAYMENT_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_PAYMENT_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_PAYMENT_HEAD_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_PAYMENT_HEAD_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_PAYMENT_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_PAYMENT_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_PAYMENT_LIST_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_PAYMENT_LIST_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_RECORD_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_RECORD_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_RECORD_HEAD_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_RECORD_HEAD_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_RECORD_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_RECORD_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_RECORD_LIST_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_RECORD_LIST_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RCP_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RCP_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_ENTRY_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_ENTRY_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_ENTRY_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_ENTRY_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_FEE_INVOICE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_FEE_INVOICE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_MAX_NO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_MAX_NO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_MAX_NO_2007.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_MAX_NO_2007_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_RECEIVE_RECEIPT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_RECEIVE_RECEIPT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RED_SERVICE_FEE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RED_SERVICE_FEE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/REL_ALC_WORK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/REL_ALC_WORK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RETURN_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RETURN_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RISK_CONTROL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RISK_CONTROL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_ASSAY_APPLICATION.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_ASSAY_APPLICATION_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CASE_FEEDBACK_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CASE_FEEDBACK_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CASE_FEEDBACK_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CASE_FEEDBACK_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CASE_FEEDBACK_LIST_CERT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CASE_FEEDBACK_LIST_CERT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CASE_TRANSFER_G_NO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CASE_TRANSFER_G_NO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CASE_TRANSFER_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CASE_TRANSFER_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CASE_TRANSFER_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CASE_TRANSFER_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CODE_TS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CODE_TS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CODE_TS_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CODE_TS_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CONDITION.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CONDITION_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CONDITION_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CONDITION_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CONTA_CAPACITY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CONTA_CAPACITY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_CONTA_CAPACITY_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_CONTA_CAPACITY_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_EXAM_HEAD_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_EXAM_HEAD_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_EXAM_LIST_CONTAINER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_EXAM_LIST_CONTAINER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_EXAM_LIST_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_EXAM_LIST_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_EXAM_OP_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_EXAM_OP_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_FAKE_CODE_TS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_FAKE_CODE_TS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_FAKE_CODE_TS_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_FAKE_CODE_TS_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_FIT_LOG_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_FIT_LOG_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_FIT_RESULT_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_FIT_RESULT_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_INSTR_ATTR_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_INSTR_ATTR_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_INSTR_PROC_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_INSTR_PROC_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_OP_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_OP_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_RECHECK_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_RECHECK_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_REPLICATION_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_REPLICATION_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_RESULT_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_RESULT_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_TRADE_CO.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_TRADE_CO_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_TRADE_CO_BAK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_TRADE_CO_BAK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_UNLOCK_OP_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_UNLOCK_OP_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_VS_EXAM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_VS_EXAM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/RSK_WORKFLOW.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/RSK_WORKFLOW_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/SERVICE_FEE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/SERVICE_FEE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/SERVICE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/SERVICE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/SHIP_TONNAGE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/SHIP_TONNAGE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/SPECIAL_ENTRY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/SPECIAL_ENTRY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/STATUS_DETAIL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/STATUS_DETAIL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
#if [ -e /data/xloader/doc_root/STATUS_DETAIL.txt ]
#then
#     psql -d h2000 -f /data/xloader/db_shell/today_shell/STATUS_DETAIL_GPTMP_TODAY.sql
#     if [ $? != 0 ]
#     then
#         exit 1
#     fi
#fi
if [ -e /data/xloader/doc_root/STF_RECORD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/STF_RECORD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/STL_DATA_CONTA_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/STL_DATA_CONTA_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/STL_DATA_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/STL_DATA_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/STL_DATA_TS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/STL_DATA_TS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/STL_REQUEST_CHK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/STL_REQUEST_CHK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TAR_DEL_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TAR_DEL_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TCS_COUNTER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TCS_COUNTER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TCS_DETAIL_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TCS_DETAIL_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TCS_DETAIL_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TCS_DETAIL_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TCS_ERROR_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TCS_ERROR_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TCS_SEND_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TCS_SEND_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TCS_STATISTIC_REPORT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TCS_STATISTIC_REPORT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEMP_DB.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEMP_DB_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEMP_DEL_EMS_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEMP_DEL_EMS_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEMP_DEL_EMS_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEMP_DEL_EMS_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEMP_PAGE_RANGE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEMP_PAGE_RANGE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_COMPANY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_COMPANY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_DEBIT_REC_REQUEST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_DEBIT_REC_REQUEST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_DEBIT_REC_RESPONSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_DEBIT_REC_RESPONSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_EPLAT_RESPONSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_EPLAT_RESPONSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_ERR_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_ERR_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_PAY_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_PAY_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_PAY_REC_REQUEST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_PAY_REC_REQUEST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_PAY_REC_RESPONSE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_PAY_REC_RESPONSE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_REC_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_REC_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_STATUS_QUERY.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_STATUS_QUERY_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_VOUCHER_REC_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_VOUCHER_REC_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_VOUCHER_REC_LIST_DETAIL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_VOUCHER_REC_LIST_DETAIL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TEP_VOUCHER_REC_PAGE_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TEP_VOUCHER_REC_PAGE_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TMP_EMS_CONSUME.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TMP_EMS_CONSUME_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TMP_EMS_DCR_ENT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TMP_EMS_DCR_ENT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TMP_EMS_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TMP_EMS_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TMP_EMS_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TMP_EMS_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRADE_ERR.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRADE_ERR_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRADE_GPM_RTX.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRADE_GPM_RTX_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRANSFER_FEE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRANSFER_FEE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRANSFER_FEE_LOG.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRANSFER_FEE_LOG_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_ALC_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_ALC_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_CHECK.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_CHECK_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_CHK_GOODS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_CHK_GOODS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_COP_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_COP_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_DELAY_FORM.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_DELAY_FORM_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_DR_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_DR_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_ESEAL_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_ESEAL_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_EXAM_MAX_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_EXAM_MAX_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_I_E_PORT.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_I_E_PORT_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_PARAMETER.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_PARAMETER_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_POP_COP_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_POP_COP_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_POP_HEAD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_POP_HEAD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_POP_LIST.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_POP_LIST_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_PRE_MAX_SEQ.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_PRE_MAX_SEQ_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_SHIP.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_SHIP_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_VE_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_VE_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TRN_VEHICLE.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TRN_VEHICLE_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/YD_DECLARE_REL.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/YD_DECLARE_REL_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/STF_CORP_RECORD.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/STF_CORP_RECORD_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TB_PCS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TB_PCS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
if [ -e /data/xloader/doc_root/TB_PCS_HIS.txt ]
then
     psql -d h2000 -f /data/xloader/db_shell/today_shell/TB_PCS_HIS_GPTMP_TODAY.sql
     if [ $? != 0 ]
     then
         exit 1
     fi
fi
