\echo ------------------MNLBAK_IM_CONTRACT_DEDUC----------------
select now();
\timing
insert into MNLBAK_IM_CONTRACT_DEDUC_GPTMP (CMD_TYPE,MANUAL_NO, ENTRY_ID, G_NO) select CMD_TYPE,MANUAL_NO, ENTRY_ID, G_NO from MNLBAK_IM_CONTRACT_DEDUC_INC_EXT;

delete from MNLBAK_IM_CONTRACT_DEDUC using MNLBAK_IM_CONTRACT_DEDUC_GPTMP where MNLBAK_IM_CONTRACT_DEDUC_GPTMP.MANUAL_NO=MNLBAK_IM_CONTRACT_DEDUC.MANUAL_NO AND MNLBAK_IM_CONTRACT_DEDUC_GPTMP.ENTRY_ID=MNLBAK_IM_CONTRACT_DEDUC.ENTRY_ID AND MNLBAK_IM_CONTRACT_DEDUC_GPTMP.G_NO=MNLBAK_IM_CONTRACT_DEDUC.G_NO ;

insert into MNLBAK_IM_CONTRACT_DEDUC(MANUAL_NO,CONTR_ITEM,ENTRY_ID,ENTRY_ITEM,I_E_PORT,I_E_DATE,G_NO,IN_QTY,I_ACCOUNT,I_CURR,DUTY_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER,DUTY_PRINT) select MANUAL_NO,CONTR_ITEM,ENTRY_ID,ENTRY_ITEM,I_E_PORT,I_E_DATE,G_NO,IN_QTY,I_ACCOUNT,I_CURR,DUTY_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER,DUTY_PRINT from MNLBAK_IM_CONTRACT_DEDUC_INC_EXT where CMD_TYPE='I';

delete from MNLBAK_IM_CONTRACT_DEDUC_GPTMP;

\timing
