\echo ------------------MNLBAK_EX_FASCICLE_LIST----------------
select now();
\timing
delete from MNLBAK_EX_FASCICLE_LIST_GPTMP;
insert into MNLBAK_EX_FASCICLE_LIST_GPTMP (CMD_TYPE,FASCICLE_NO, CONTR_ITEM) select CMD_TYPE,FASCICLE_NO, CONTR_ITEM from MNLBAK_EX_FASCICLE_LIST_INC_EXT;
delete from MNLBAK_EX_FASCICLE_LIST_GPTMP_TODAY using MNLBAK_EX_FASCICLE_LIST_GPTMP where MNLBAK_EX_FASCICLE_LIST_GPTMP.FASCICLE_NO=MNLBAK_EX_FASCICLE_LIST_GPTMP_TODAY.FASCICLE_NO AND MNLBAK_EX_FASCICLE_LIST_GPTMP.CONTR_ITEM=MNLBAK_EX_FASCICLE_LIST_GPTMP_TODAY.CONTR_ITEM ;
insert into MNLBAK_EX_FASCICLE_LIST_GPTMP_TODAY (CMD_TYPE,MANUAL_NO,FASCICLE_NO,CONTR_ITEM,APPR_QTY,FACT_QTY) select CMD_TYPE,MANUAL_NO,FASCICLE_NO,CONTR_ITEM,APPR_QTY,FACT_QTY from MNLBAK_EX_FASCICLE_LIST_INC_EXT;
delete from MNLBAK_EX_FASCICLE_LIST_GPTMP;
\timing