\echo -----------------------EX_CONTRACT_DEDUC------------------------
select now();
\timing
delete from EX_CONTRACT_DEDUC using EX_CONTRACT_DEDUC_GPTMP_TODAY where EX_CONTRACT_DEDUC.MANUAL_NO=EX_CONTRACT_DEDUC_GPTMP_TODAY.MANUAL_NO AND EX_CONTRACT_DEDUC.ENTRY_ID=EX_CONTRACT_DEDUC_GPTMP_TODAY.ENTRY_ID AND EX_CONTRACT_DEDUC.G_NO=EX_CONTRACT_DEDUC_GPTMP_TODAY.G_NO ;
insert into EX_CONTRACT_DEDUC (MANUAL_NO,CONTR_ITEM,ENTRY_ID,ENTRY_ITEM,I_E_PORT,I_E_DATE,G_NO,IN_QTY,I_ACCOUNT,I_CURR,DUTY_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER) select MANUAL_NO,CONTR_ITEM,ENTRY_ID,ENTRY_ITEM,I_E_PORT,I_E_DATE,G_NO,IN_QTY,I_ACCOUNT,I_CURR,DUTY_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER from EX_CONTRACT_DEDUC_GPTMP_TODAY  where CMD_TYPE='I';
\timing
