\echo ------------------MNLBAK_EX_CONTRACT_DEDUC----------------
select now();
\timing
delete from MNLBAK_EX_CONTRACT_DEDUC_GPTMP;
insert into MNLBAK_EX_CONTRACT_DEDUC_GPTMP (CMD_TYPE,MANUAL_NO, ENTRY_ID, G_NO) select CMD_TYPE,MANUAL_NO, ENTRY_ID, G_NO from MNLBAK_EX_CONTRACT_DEDUC_INC_EXT;
delete from MNLBAK_EX_CONTRACT_DEDUC_GPTMP_TODAY using MNLBAK_EX_CONTRACT_DEDUC_GPTMP where MNLBAK_EX_CONTRACT_DEDUC_GPTMP.MANUAL_NO=MNLBAK_EX_CONTRACT_DEDUC_GPTMP_TODAY.MANUAL_NO AND MNLBAK_EX_CONTRACT_DEDUC_GPTMP.ENTRY_ID=MNLBAK_EX_CONTRACT_DEDUC_GPTMP_TODAY.ENTRY_ID AND MNLBAK_EX_CONTRACT_DEDUC_GPTMP.G_NO=MNLBAK_EX_CONTRACT_DEDUC_GPTMP_TODAY.G_NO ;
insert into MNLBAK_EX_CONTRACT_DEDUC_GPTMP_TODAY (CMD_TYPE,MANUAL_NO,CONTR_ITEM,ENTRY_ID,ENTRY_ITEM,I_E_PORT,I_E_DATE,G_NO,IN_QTY,I_ACCOUNT,I_CURR,DUTY_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER) select CMD_TYPE,MANUAL_NO,CONTR_ITEM,ENTRY_ID,ENTRY_ITEM,I_E_PORT,I_E_DATE,G_NO,IN_QTY,I_ACCOUNT,I_CURR,DUTY_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER from MNLBAK_EX_CONTRACT_DEDUC_INC_EXT;
delete from MNLBAK_EX_CONTRACT_DEDUC_GPTMP;
\timing
