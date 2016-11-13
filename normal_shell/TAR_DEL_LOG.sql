\echo ------------------TAR_DEL_LOG----------------
select now();
\timing
insert into TAR_DEL_LOG_GPTMP (CMD_TYPE,ENTRY_ID, TAX_ID, OP_TIME) select CMD_TYPE,ENTRY_ID, TAX_ID, OP_TIME from TAR_DEL_LOG_INC_EXT;

delete from TAR_DEL_LOG using TAR_DEL_LOG_GPTMP where TAR_DEL_LOG_GPTMP.ENTRY_ID=TAR_DEL_LOG.ENTRY_ID AND TAR_DEL_LOG_GPTMP.TAX_ID=TAR_DEL_LOG.TAX_ID AND TAR_DEL_LOG_GPTMP.OP_TIME=TAR_DEL_LOG.OP_TIME ;

insert into TAR_DEL_LOG(ENTRY_ID,ID_CHK,DUTY_FLAG,TAX_TYPE,TAX_ID,BOOK_NO,DUTYFOR_NO,REAL_TAX,DELAY_DAY,P_DATE,P_LIMIT,C_DATE,CANCEL_ER,RECHK_ER,SYS_DATE,SUBJECT_CODE,SUBJECT_NAME,SUBJECT_LEVEL,DUTY_FLAG_NOTE,OP_TIME,OP_ID,DELAY_MARK,GEN_DATE,BANK_CODE,BANK_ACCOUNT_NAME,PAYER_ACCOUNT_NO,PAYER_ACCOUNT_NAME,PAYER_BANK_NAME,PAYER_BANK_CODE) select ENTRY_ID,ID_CHK,DUTY_FLAG,TAX_TYPE,TAX_ID,BOOK_NO,DUTYFOR_NO,REAL_TAX,DELAY_DAY,P_DATE,P_LIMIT,C_DATE,CANCEL_ER,RECHK_ER,SYS_DATE,SUBJECT_CODE,SUBJECT_NAME,SUBJECT_LEVEL,DUTY_FLAG_NOTE,OP_TIME,OP_ID,DELAY_MARK,GEN_DATE,BANK_CODE,BANK_ACCOUNT_NAME,PAYER_ACCOUNT_NO,PAYER_ACCOUNT_NAME,PAYER_BANK_NAME,PAYER_BANK_CODE from TAR_DEL_LOG_INC_EXT where CMD_TYPE='I';

delete from TAR_DEL_LOG_GPTMP;

\timing
