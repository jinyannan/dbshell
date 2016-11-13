\echo ------------------TEP_PAY_LOG----------------
select now();
\timing
delete from TEP_PAY_LOG_GPTMP;
insert into TEP_PAY_LOG_GPTMP (CMD_TYPE,TRANS_NO, EPLAT_CODE) select CMD_TYPE,TRANS_NO, EPLAT_CODE from TEP_PAY_LOG_INC_EXT;
delete from TEP_PAY_LOG_GPTMP_TODAY using TEP_PAY_LOG_GPTMP where TEP_PAY_LOG_GPTMP.TRANS_NO=TEP_PAY_LOG_GPTMP_TODAY.TRANS_NO AND TEP_PAY_LOG_GPTMP.EPLAT_CODE=TEP_PAY_LOG_GPTMP_TODAY.EPLAT_CODE ;
insert into TEP_PAY_LOG_GPTMP_TODAY (CMD_TYPE,TRANS_NO,EPLAT_CODE,CUSTOMS_CODE,TAX_TYPE,ENTRY_ID,TAX_ID,GEN_DATE,GUA_ID,DUTY_FLAG,DELAY_MARK,REAL_TAX,EXE_MARK,PAY_MODE,PAY_DATE,PAY_OP_DATE,PAYER_CODE,PAYER_NAME,PAYER_ACCOUNT_NO,PAYER_ACCOUNT_NAME,PAYER_BANK_NAME,PAYER_BANK_CODE,PAY_SIGNER_INFO,PAY_SIGN,PAY_RETURN_CODE,PAY_ERR_RETURN_CODE,PAY_ERR_RETRUN_INFO,CANCEL_PAY_DATE,DELETE_DATE,DEBIT_ORDER_DATE,DEBIT_REPONSE_DATE,DEBIT_REPONSE_OP_DATE,DEBIT_REPONSE_OP_INFO,DEBIT_DATE,DEBIT_OP_DATE,DEBIT_OP_INFO,DEBIT_RETURN_CODE,DEBIT_ERR_RETURN_CODE,DEBIT_ERR_RETURN_INFO,DEBIT_SIGNER_INFO,DEBIT_SIGN,BATCH_PRINT_DATE,REC_DATE,P_LIMIT,LAST_UPDATE_DATE) select CMD_TYPE,TRANS_NO,EPLAT_CODE,CUSTOMS_CODE,TAX_TYPE,ENTRY_ID,TAX_ID,GEN_DATE,GUA_ID,DUTY_FLAG,DELAY_MARK,REAL_TAX,EXE_MARK,PAY_MODE,PAY_DATE,PAY_OP_DATE,PAYER_CODE,PAYER_NAME,PAYER_ACCOUNT_NO,PAYER_ACCOUNT_NAME,PAYER_BANK_NAME,PAYER_BANK_CODE,PAY_SIGNER_INFO,PAY_SIGN,PAY_RETURN_CODE,PAY_ERR_RETURN_CODE,PAY_ERR_RETRUN_INFO,CANCEL_PAY_DATE,DELETE_DATE,DEBIT_ORDER_DATE,DEBIT_REPONSE_DATE,DEBIT_REPONSE_OP_DATE,DEBIT_REPONSE_OP_INFO,DEBIT_DATE,DEBIT_OP_DATE,DEBIT_OP_INFO,DEBIT_RETURN_CODE,DEBIT_ERR_RETURN_CODE,DEBIT_ERR_RETURN_INFO,DEBIT_SIGNER_INFO,DEBIT_SIGN,BATCH_PRINT_DATE,REC_DATE,P_LIMIT,LAST_UPDATE_DATE from TEP_PAY_LOG_INC_EXT;
delete from TEP_PAY_LOG_GPTMP;
\timing
