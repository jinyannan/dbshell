\echo ------------------PROJECT_HEAD----------------
select now();
\timing
delete from PROJECT_HEAD_GPTMP;
insert into PROJECT_HEAD_GPTMP (CMD_TYPE,PROJECT_ID, MODIFY_TIMES) select CMD_TYPE,PROJECT_ID, MODIFY_TIMES from PROJECT_HEAD_INC_EXT;
delete from PROJECT_HEAD_GPTMP_TODAY using PROJECT_HEAD_GPTMP where PROJECT_HEAD_GPTMP.PROJECT_ID=PROJECT_HEAD_GPTMP_TODAY.PROJECT_ID AND PROJECT_HEAD_GPTMP.MODIFY_TIMES=PROJECT_HEAD_GPTMP_TODAY.MODIFY_TIMES ;
insert into PROJECT_HEAD_GPTMP_TODAY (CMD_TYPE,PRE_PROJECT_ID,PROJECT_ID,MODIFY_TIMES,OWNER_CODE,OWNER_NAME,TRADE_TYPE_NAME,APPR_DEPT,PROJECT_FUND,PROJECT_TYPE,PROJECT_NAME,PROJECT_DATE,START_DATE,LIMIT_DATE,FOREIGN_CO,FOREIGN_COUNTRY,INVEST_RATE_NAME,CONTR_NO,RISK_MARK,CUT_MODE,INVEST_AMT,INVEST_CURR,QUOTA_AMT,QUOTA_FREE,APPR_AMT_FREE,FACT_AMT_FREE,APPR_AMT,FACT_AMT,DUTY_CUT,TAX_CUT,OTHER_CUT,REAL_DUTY,REAL_TAX,REAL_OTHER,REAL_DUTY_CUT,REAL_TAX_CUT,REAL_OTHER_CUT,QTY_CUT,UNIT_CUT,APPR_QTY,FACT_QTY,AGREE_NO,SECURITY_LEVEL,COLLECT_MARK,COLLECT_DATE,MASTER_CUSTOMS,LINKMAN,ITEMS_NO,INPUT_DATE,TYPE_ER,INPUT_COP,CHK_DATE,CHK_ER,RECHK_DATE,MODIFY_DATE,RECHK_ER,EXE_MARK,SEQ_NO,SEQ_DATE,SEQ_ER,REPORT_MARK,REPORT_DATE,REPORT_CGAC_DATE,REPLY_DATE,REPLY_ER,REASON,RESERVE1,NOTE,HASH_SIGN,FIRST_PASS_DATE,INVEST_AMT_USD,MODIFY_ER,BELONG_AREA_NAME) select CMD_TYPE,PRE_PROJECT_ID,PROJECT_ID,MODIFY_TIMES,OWNER_CODE,OWNER_NAME,TRADE_TYPE_NAME,APPR_DEPT,PROJECT_FUND,PROJECT_TYPE,PROJECT_NAME,PROJECT_DATE,START_DATE,LIMIT_DATE,FOREIGN_CO,FOREIGN_COUNTRY,INVEST_RATE_NAME,CONTR_NO,RISK_MARK,CUT_MODE,INVEST_AMT,INVEST_CURR,QUOTA_AMT,QUOTA_FREE,APPR_AMT_FREE,FACT_AMT_FREE,APPR_AMT,FACT_AMT,DUTY_CUT,TAX_CUT,OTHER_CUT,REAL_DUTY,REAL_TAX,REAL_OTHER,REAL_DUTY_CUT,REAL_TAX_CUT,REAL_OTHER_CUT,QTY_CUT,UNIT_CUT,APPR_QTY,FACT_QTY,AGREE_NO,SECURITY_LEVEL,COLLECT_MARK,COLLECT_DATE,MASTER_CUSTOMS,LINKMAN,ITEMS_NO,INPUT_DATE,TYPE_ER,INPUT_COP,CHK_DATE,CHK_ER,RECHK_DATE,MODIFY_DATE,RECHK_ER,EXE_MARK,SEQ_NO,SEQ_DATE,SEQ_ER,REPORT_MARK,REPORT_DATE,REPORT_CGAC_DATE,REPLY_DATE,REPLY_ER,REASON,RESERVE1,NOTE,HASH_SIGN,FIRST_PASS_DATE,INVEST_AMT_USD,MODIFY_ER,BELONG_AREA_NAME from PROJECT_HEAD_INC_EXT;
delete from PROJECT_HEAD_GPTMP;
\timing
