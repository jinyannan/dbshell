\echo -----------------------MNLBAK_IM_CONTRACT_DEDUC------------------------
select now();
\timing
delete from MNLBAK_IM_CONTRACT_DEDUC using MNLBAK_IM_CONTRACT_DEDUC_GPTMP_TODAY where MNLBAK_IM_CONTRACT_DEDUC.MANUAL_NO=MNLBAK_IM_CONTRACT_DEDUC_GPTMP_TODAY.MANUAL_NO AND MNLBAK_IM_CONTRACT_DEDUC.ENTRY_ID=MNLBAK_IM_CONTRACT_DEDUC_GPTMP_TODAY.ENTRY_ID AND MNLBAK_IM_CONTRACT_DEDUC.G_NO=MNLBAK_IM_CONTRACT_DEDUC_GPTMP_TODAY.G_NO ;
insert into MNLBAK_IM_CONTRACT_DEDUC (MANUAL_NO,CONTR_ITEM,ENTRY_ID,ENTRY_ITEM,I_E_PORT,I_E_DATE,G_NO,IN_QTY,I_ACCOUNT,I_CURR,DUTY_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER,DUTY_PRINT) select MANUAL_NO,CONTR_ITEM,ENTRY_ID,ENTRY_ITEM,I_E_PORT,I_E_DATE,G_NO,IN_QTY,I_ACCOUNT,I_CURR,DUTY_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER,DUTY_PRINT from MNLBAK_IM_CONTRACT_DEDUC_GPTMP_TODAY  where CMD_TYPE='I';
\timing
