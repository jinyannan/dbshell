\echo -----------------------PRE_COMPANY_REL------------------------
select now();
\timing
delete from PRE_COMPANY_REL using PRE_COMPANY_REL_GPTMP_TODAY where PRE_COMPANY_REL.PRE_TRADE_CO=PRE_COMPANY_REL_GPTMP_TODAY.PRE_TRADE_CO ;
insert into PRE_COMPANY_REL (PRE_TRADE_CO,TRADE_CO,REG_CO,FULL_NAME,CUSTOMS_CODE,VALID_DATE,ACCO_BANK,ACCO_NO,MAIL_CO,BROKER_TYPE,LICENSE_ID,EN_FULL_CO,EN_ADDR_CO,ADDR_CO,BUSI_TYPE,CONTAC_CO,TEL_CO,APPR_DEP,APPR_ID,LAW_MAN,LAW_MAN_TEL,INV_FUND_T,ID_NUMBER,RG_FUND,CURR_CODE,TAXY_RG_NO,CO_TYPE,IN_RATIO,SPE_CO,MAIN_PRO,ACT_FUND,COP_NOTE,PRE_OPER_CODE,PRE_OPER_DATE,PRE_OPER_FLAG,PRE_CHK_FLAG,PRE_CHK_DATE,COP_GB_CODE,COP_IO_CODE,COP_RANGE,DISTRICT_CODE,CO_OWNER) select PRE_TRADE_CO,TRADE_CO,REG_CO,FULL_NAME,CUSTOMS_CODE,VALID_DATE,ACCO_BANK,ACCO_NO,MAIL_CO,BROKER_TYPE,LICENSE_ID,EN_FULL_CO,EN_ADDR_CO,ADDR_CO,BUSI_TYPE,CONTAC_CO,TEL_CO,APPR_DEP,APPR_ID,LAW_MAN,LAW_MAN_TEL,INV_FUND_T,ID_NUMBER,RG_FUND,CURR_CODE,TAXY_RG_NO,CO_TYPE,IN_RATIO,SPE_CO,MAIN_PRO,ACT_FUND,COP_NOTE,PRE_OPER_CODE,PRE_OPER_DATE,PRE_OPER_FLAG,PRE_CHK_FLAG,PRE_CHK_DATE,COP_GB_CODE,COP_IO_CODE,COP_RANGE,DISTRICT_CODE,CO_OWNER from PRE_COMPANY_REL_GPTMP_TODAY  where CMD_TYPE='I';
\timing