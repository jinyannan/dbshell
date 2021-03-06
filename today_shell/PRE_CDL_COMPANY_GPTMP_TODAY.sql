\echo ------------------PRE_CDL_COMPANY----------------
select now();
\timing
delete from PRE_CDL_COMPANY_GPTMP;
insert into PRE_CDL_COMPANY_GPTMP (CMD_TYPE,TRADE_CO, RECORDS_DATE, TRADE_BONDED_FLAG) select CMD_TYPE,TRADE_CO, RECORDS_DATE, TRADE_BONDED_FLAG from PRE_CDL_COMPANY_INC_EXT;
delete from PRE_CDL_COMPANY_GPTMP_TODAY using PRE_CDL_COMPANY_GPTMP where PRE_CDL_COMPANY_GPTMP.TRADE_CO=PRE_CDL_COMPANY_GPTMP_TODAY.TRADE_CO AND PRE_CDL_COMPANY_GPTMP.RECORDS_DATE=PRE_CDL_COMPANY_GPTMP_TODAY.RECORDS_DATE AND PRE_CDL_COMPANY_GPTMP.TRADE_BONDED_FLAG=PRE_CDL_COMPANY_GPTMP_TODAY.TRADE_BONDED_FLAG ;
insert into PRE_CDL_COMPANY_GPTMP_TODAY (CMD_TYPE,TRADE_CO,RECORDS_DATE,PROC_FLAG,TRADE_NAME,CUSTOMS_CODE,APP_MOD_FLAG,TRADE_BONDED_FLAG,GRT_TYPE,GRT_PRICE,GRT_DATE,IE_COUNT,R_NOTES,PRE_COP_NO) select CMD_TYPE,TRADE_CO,RECORDS_DATE,PROC_FLAG,TRADE_NAME,CUSTOMS_CODE,APP_MOD_FLAG,TRADE_BONDED_FLAG,GRT_TYPE,GRT_PRICE,GRT_DATE,IE_COUNT,R_NOTES,PRE_COP_NO from PRE_CDL_COMPANY_INC_EXT;
delete from PRE_CDL_COMPANY_GPTMP;
\timing
