\echo ------------------TCS_STATISTIC_REPORT----------------
select now();
\timing
delete from TCS_STATISTIC_REPORT_GPTMP;
insert into TCS_STATISTIC_REPORT_GPTMP (CMD_TYPE,ACCOUNT_ORG_CODE, REPORT_DATE, SPECIAL_PERIOD_FLAG, TREASURY_CODE, BUDGET_LEVEL_CODE, BUDGET_SUBJECT_CODE) select CMD_TYPE,ACCOUNT_ORG_CODE, REPORT_DATE, SPECIAL_PERIOD_FLAG, TREASURY_CODE, BUDGET_LEVEL_CODE, BUDGET_SUBJECT_CODE from TCS_STATISTIC_REPORT_INC_EXT;
delete from TCS_STATISTIC_REPORT_GPTMP_TODAY using TCS_STATISTIC_REPORT_GPTMP where TCS_STATISTIC_REPORT_GPTMP.ACCOUNT_ORG_CODE=TCS_STATISTIC_REPORT_GPTMP_TODAY.ACCOUNT_ORG_CODE AND TCS_STATISTIC_REPORT_GPTMP.REPORT_DATE=TCS_STATISTIC_REPORT_GPTMP_TODAY.REPORT_DATE AND TCS_STATISTIC_REPORT_GPTMP.SPECIAL_PERIOD_FLAG=TCS_STATISTIC_REPORT_GPTMP_TODAY.SPECIAL_PERIOD_FLAG AND TCS_STATISTIC_REPORT_GPTMP.TREASURY_CODE=TCS_STATISTIC_REPORT_GPTMP_TODAY.TREASURY_CODE AND TCS_STATISTIC_REPORT_GPTMP.BUDGET_LEVEL_CODE=TCS_STATISTIC_REPORT_GPTMP_TODAY.BUDGET_LEVEL_CODE AND TCS_STATISTIC_REPORT_GPTMP.BUDGET_SUBJECT_CODE=TCS_STATISTIC_REPORT_GPTMP_TODAY.BUDGET_SUBJECT_CODE ;
insert into TCS_STATISTIC_REPORT_GPTMP_TODAY (CMD_TYPE,MSG_ID,ACCOUNT_ORG_CODE,REPORT_DATE,SPECIAL_PERIOD_FLAG,TREASURY_CODE,BUDGET_LEVEL_CODE,BUDGET_SUBJECT_CODE,BUDGET_SUBJECT_NAME,DAY_AMOUNT,TENDAY_AMOUNT,MONTH_AMOUNT,QUARTER_AMOUNT,YEAR_AMOUNT,RECEIVE_DATE) select CMD_TYPE,MSG_ID,ACCOUNT_ORG_CODE,REPORT_DATE,SPECIAL_PERIOD_FLAG,TREASURY_CODE,BUDGET_LEVEL_CODE,BUDGET_SUBJECT_CODE,BUDGET_SUBJECT_NAME,DAY_AMOUNT,TENDAY_AMOUNT,MONTH_AMOUNT,QUARTER_AMOUNT,YEAR_AMOUNT,RECEIVE_DATE from TCS_STATISTIC_REPORT_INC_EXT;
delete from TCS_STATISTIC_REPORT_GPTMP;
\timing
