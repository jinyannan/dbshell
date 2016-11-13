\echo ------------------PRE_RED_HEAD----------------
select now();
\timing
delete from PRE_RED_HEAD_GPTMP;
insert into PRE_RED_HEAD_GPTMP (CMD_TYPE,CUT_ID, MODIFY_TIMES) select CMD_TYPE,CUT_ID, MODIFY_TIMES from PRE_RED_HEAD_INC_EXT;
delete from PRE_RED_HEAD_GPTMP_TODAY using PRE_RED_HEAD_GPTMP where PRE_RED_HEAD_GPTMP.CUT_ID=PRE_RED_HEAD_GPTMP_TODAY.CUT_ID AND PRE_RED_HEAD_GPTMP.MODIFY_TIMES=PRE_RED_HEAD_GPTMP_TODAY.MODIFY_TIMES ;
insert into PRE_RED_HEAD_GPTMP_TODAY (CMD_TYPE,PROJECT_ID,PRE_CUT_ID,CUT_ID,MODIFY_TIMES,OWNER_CODE,OWNER_NAME,TRADE_CO,TRADE_NAME,APPR_DEPT,PROJECT_FUND,PROJECT_TYPE,CUT_MODE,APPR_REASON,I_E_PORT,I_E_FLAG,LICENSE_NO,CONTR_NO,ITEMS_NO,INPUT_DATE,TYPE_ER,INPUT_COP,CHK_DATE,CHK_ER,RECHK_DATE,MODIFY_DATE,RECHK_ER,EXE_MARK,LIMIT_DATE,ENTRY_PWD,PRINT_DATE,PRINT_ER,PRINT_MARK,TRANS_TIMES,APPR_AMT,FACT_AMT,APPR_QUOTA_SUM,APPR_QUOTA_QTY,REAL_QUOTA_SUM,REAL_QUOTA_QTY,DUTY_CUT,TAX_CUT,OTHER_CUT,REAL_DUTY,REAL_TAX,REAL_OTHER,REAL_DUTY_CUT,REAL_TAX_CUT,REAL_OTHER_CUT,VERIFY_DATE,MASTER_CUSTOMS,CHECK_NOTE,RECHK_NOTE,REPLY_CHECK_NOTE,RISK_MARK,COLLECT_MARK,COLLECT_DATE,ENTRY_ID,VERIFY_TIMES,SECURITY_LEVEL,REPORT_MARK,REPORT_DATE,REPORT_CGAC_DATE,REPLY_DATE,REPLY_ER,SEQ_NO,SEQ_DATE,SEQ_ER,RED_TYPE,TRADE_MODE,TRANS_MODE,FEE_MARK,OTHER_MARK,INSUR_MARK,FEE_CURR,FEE_RATE,OTHER_CURR,OTHER_RATE,INSUR_CURR,INSUR_RATE,SERVICE_RATE,SERVICE_FEE,MNL_JGF_FLAG,REASON,RESERVE1,NOTE,HASH_SIGN) select CMD_TYPE,PROJECT_ID,PRE_CUT_ID,CUT_ID,MODIFY_TIMES,OWNER_CODE,OWNER_NAME,TRADE_CO,TRADE_NAME,APPR_DEPT,PROJECT_FUND,PROJECT_TYPE,CUT_MODE,APPR_REASON,I_E_PORT,I_E_FLAG,LICENSE_NO,CONTR_NO,ITEMS_NO,INPUT_DATE,TYPE_ER,INPUT_COP,CHK_DATE,CHK_ER,RECHK_DATE,MODIFY_DATE,RECHK_ER,EXE_MARK,LIMIT_DATE,ENTRY_PWD,PRINT_DATE,PRINT_ER,PRINT_MARK,TRANS_TIMES,APPR_AMT,FACT_AMT,APPR_QUOTA_SUM,APPR_QUOTA_QTY,REAL_QUOTA_SUM,REAL_QUOTA_QTY,DUTY_CUT,TAX_CUT,OTHER_CUT,REAL_DUTY,REAL_TAX,REAL_OTHER,REAL_DUTY_CUT,REAL_TAX_CUT,REAL_OTHER_CUT,VERIFY_DATE,MASTER_CUSTOMS,CHECK_NOTE,RECHK_NOTE,REPLY_CHECK_NOTE,RISK_MARK,COLLECT_MARK,COLLECT_DATE,ENTRY_ID,VERIFY_TIMES,SECURITY_LEVEL,REPORT_MARK,REPORT_DATE,REPORT_CGAC_DATE,REPLY_DATE,REPLY_ER,SEQ_NO,SEQ_DATE,SEQ_ER,RED_TYPE,TRADE_MODE,TRANS_MODE,FEE_MARK,OTHER_MARK,INSUR_MARK,FEE_CURR,FEE_RATE,OTHER_CURR,OTHER_RATE,INSUR_CURR,INSUR_RATE,SERVICE_RATE,SERVICE_FEE,MNL_JGF_FLAG,REASON,RESERVE1,NOTE,HASH_SIGN from PRE_RED_HEAD_INC_EXT;
delete from PRE_RED_HEAD_GPTMP;
\timing
