\echo ------------------IM_CONTRACT_CLEAR----------------
select now();
\timing
insert into IM_CONTRACT_CLEAR_GPTMP (CMD_TYPE,MANUAL_NO, CONTR_ITEM) select CMD_TYPE,MANUAL_NO, CONTR_ITEM from IM_CONTRACT_CLEAR_INC_EXT;

delete from IM_CONTRACT_CLEAR using IM_CONTRACT_CLEAR_GPTMP where IM_CONTRACT_CLEAR_GPTMP.MANUAL_NO=IM_CONTRACT_CLEAR.MANUAL_NO AND IM_CONTRACT_CLEAR_GPTMP.CONTR_ITEM=IM_CONTRACT_CLEAR.CONTR_ITEM ;

insert into IM_CONTRACT_CLEAR(MANUAL_NO,CONTR_ITEM,APPR_AMT,FACT_AMT,APPR_QTY,FACT_QTY,CONSUME_AMT,CONSUME_QTY,RESOR_IN_AMT,RESOR_IN_QTY,RESOR_EX_AMT,RESOR_EX_QTY,RESOR_TAX_AMT,RESOR_TAX_QTY,REMAIN_AMT,REMAIN_QTY,ABANDON_AMT,ABANDON_QTY,ABANDON_DATE,ABANDON_ER,UNIT_1,CLEAR_ER,CLEAR_DATE,CLOSE_ER,CLOSE_DATE) select MANUAL_NO,CONTR_ITEM,APPR_AMT,FACT_AMT,APPR_QTY,FACT_QTY,CONSUME_AMT,CONSUME_QTY,RESOR_IN_AMT,RESOR_IN_QTY,RESOR_EX_AMT,RESOR_EX_QTY,RESOR_TAX_AMT,RESOR_TAX_QTY,REMAIN_AMT,REMAIN_QTY,ABANDON_AMT,ABANDON_QTY,ABANDON_DATE,ABANDON_ER,UNIT_1,CLEAR_ER,CLEAR_DATE,CLOSE_ER,CLOSE_DATE from IM_CONTRACT_CLEAR_INC_EXT where CMD_TYPE='I';

delete from IM_CONTRACT_CLEAR_GPTMP;

\timing
