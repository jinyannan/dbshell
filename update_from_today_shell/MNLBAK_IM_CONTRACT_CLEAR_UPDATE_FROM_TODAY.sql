\echo -----------------------MNLBAK_IM_CONTRACT_CLEAR------------------------
select now();
\timing
delete from MNLBAK_IM_CONTRACT_CLEAR using MNLBAK_IM_CONTRACT_CLEAR_GPTMP_TODAY where MNLBAK_IM_CONTRACT_CLEAR.MANUAL_NO=MNLBAK_IM_CONTRACT_CLEAR_GPTMP_TODAY.MANUAL_NO AND MNLBAK_IM_CONTRACT_CLEAR.CONTR_ITEM=MNLBAK_IM_CONTRACT_CLEAR_GPTMP_TODAY.CONTR_ITEM ;
insert into MNLBAK_IM_CONTRACT_CLEAR (MANUAL_NO,CONTR_ITEM,APPR_AMT,FACT_AMT,APPR_QTY,FACT_QTY,CONSUME_AMT,CONSUME_QTY,RESOR_IN_AMT,RESOR_IN_QTY,RESOR_EX_AMT,RESOR_EX_QTY,RESOR_TAX_AMT,RESOR_TAX_QTY,REMAIN_AMT,REMAIN_QTY,ABANDON_AMT,ABANDON_QTY,ABANDON_DATE,ABANDON_ER,UNIT_1,CLEAR_ER,CLEAR_DATE,CLOSE_ER,CLOSE_DATE) select MANUAL_NO,CONTR_ITEM,APPR_AMT,FACT_AMT,APPR_QTY,FACT_QTY,CONSUME_AMT,CONSUME_QTY,RESOR_IN_AMT,RESOR_IN_QTY,RESOR_EX_AMT,RESOR_EX_QTY,RESOR_TAX_AMT,RESOR_TAX_QTY,REMAIN_AMT,REMAIN_QTY,ABANDON_AMT,ABANDON_QTY,ABANDON_DATE,ABANDON_ER,UNIT_1,CLEAR_ER,CLEAR_DATE,CLOSE_ER,CLOSE_DATE from MNLBAK_IM_CONTRACT_CLEAR_GPTMP_TODAY  where CMD_TYPE='I';
\timing
