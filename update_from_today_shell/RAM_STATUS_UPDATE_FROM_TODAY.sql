\echo -----------------------RAM_STATUS------------------------
select now();
\timing
delete from RAM_STATUS using RAM_STATUS_GPTMP_TODAY where RAM_STATUS.CUT_ID=RAM_STATUS_GPTMP_TODAY.CUT_ID AND RAM_STATUS.G_NO=RAM_STATUS_GPTMP_TODAY.G_NO ;
insert into RAM_STATUS (CUT_ID,G_NO,MASTER_CUSTOMS,CUT_MODE,VERIFY_DATE,OWNER_CODE,OWNER_NAME,CODE_TS,G_NAME,G_MODEL,FREEZE_MONTHS,G_UNIT,FACT_AMT,FACT_QTY) select CUT_ID,G_NO,MASTER_CUSTOMS,CUT_MODE,VERIFY_DATE,OWNER_CODE,OWNER_NAME,CODE_TS,G_NAME,G_MODEL,FREEZE_MONTHS,G_UNIT,FACT_AMT,FACT_QTY from RAM_STATUS_GPTMP_TODAY  where CMD_TYPE='I';
\timing
