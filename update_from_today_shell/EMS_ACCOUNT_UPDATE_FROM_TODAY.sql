\echo -----------------------EMS_ACCOUNT------------------------
select now();
\timing
delete from EMS_ACCOUNT using EMS_ACCOUNT_GPTMP_TODAY where EMS_ACCOUNT.EMS_NO=EMS_ACCOUNT_GPTMP_TODAY.EMS_NO AND EMS_ACCOUNT.ID_STAT=EMS_ACCOUNT_GPTMP_TODAY.ID_STAT ;
insert into EMS_ACCOUNT (EMS_NO,ID_STAT,CONTR_NO,OWNER_NAME,LIMIT_DATE,ACCOUNT_AMT_RMB,ACCOUNT_AMT,ACCOUNT_AMT_ORG,ACCOUNT_CURR,IM_AMT,TAX_AMT,DEFER_TAX_AMT,DEAL_MARK,TYPE_ER,TYPE_DATE,BANK_NOTE_NO,BANK_OPEN_DATE,BANK_NOTE_DATE,APPR_DATE,BANK_ID,NEXT_FLAG,NOTE_S,GUA_ID,GUA_APPL_DATE,GUA_OPEN_DATE,GUA_APPR_DATE,GUA_REGISTER_ER,GUA_REGISTER_DATE,GUA_COPY,GUA_TYPE,GUA_OWNER_NAME,GUA_LIMIT_DATE,GUARANTEE_ADD,GUARANTEE_AMT,GUARANTEE_CURR,GUARANTEE_RMB,GUARANTEE_ORG,GUA_MARK,PROCESS_MARK,PROCESS_ER,PROCESS_DATE,OTHER_AMT,OTHER_NO,SEQ_NO,DOCUMENT_NO,DOCUMENT_DATE,DOCUMENT_MARK,DOCUMENT_ER,NOTE_MARK,PORT_CODE,ZQ_PRINT_FLAG,SECRECT_KEY,ACCOUNT_SEND_DATE,ACC_EXE_MARK,HASH_SIGN_CLT,HASH_SIGN,SIGNER_INFO,INVEST_MODE) select EMS_NO,ID_STAT,CONTR_NO,OWNER_NAME,LIMIT_DATE,ACCOUNT_AMT_RMB,ACCOUNT_AMT,ACCOUNT_AMT_ORG,ACCOUNT_CURR,IM_AMT,TAX_AMT,DEFER_TAX_AMT,DEAL_MARK,TYPE_ER,TYPE_DATE,BANK_NOTE_NO,BANK_OPEN_DATE,BANK_NOTE_DATE,APPR_DATE,BANK_ID,NEXT_FLAG,NOTE_S,GUA_ID,GUA_APPL_DATE,GUA_OPEN_DATE,GUA_APPR_DATE,GUA_REGISTER_ER,GUA_REGISTER_DATE,GUA_COPY,GUA_TYPE,GUA_OWNER_NAME,GUA_LIMIT_DATE,GUARANTEE_ADD,GUARANTEE_AMT,GUARANTEE_CURR,GUARANTEE_RMB,GUARANTEE_ORG,GUA_MARK,PROCESS_MARK,PROCESS_ER,PROCESS_DATE,OTHER_AMT,OTHER_NO,SEQ_NO,DOCUMENT_NO,DOCUMENT_DATE,DOCUMENT_MARK,DOCUMENT_ER,NOTE_MARK,PORT_CODE,ZQ_PRINT_FLAG,SECRECT_KEY,ACCOUNT_SEND_DATE,ACC_EXE_MARK,HASH_SIGN_CLT,HASH_SIGN,SIGNER_INFO,INVEST_MODE from EMS_ACCOUNT_GPTMP_TODAY  where CMD_TYPE='I';
\timing
