\echo ------------------SERVICE_LIST----------------
select now();
\timing
delete from SERVICE_LIST_GPTMP;
insert into SERVICE_LIST_GPTMP (CMD_TYPE,MANUAL_NO, F_NO) select CMD_TYPE,MANUAL_NO, F_NO from SERVICE_LIST_INC_EXT;
delete from SERVICE_LIST_GPTMP_TODAY using SERVICE_LIST_GPTMP where SERVICE_LIST_GPTMP.MANUAL_NO=SERVICE_LIST_GPTMP_TODAY.MANUAL_NO AND SERVICE_LIST_GPTMP.F_NO=SERVICE_LIST_GPTMP_TODAY.F_NO ;
insert into SERVICE_LIST_GPTMP_TODAY (CMD_TYPE,MANUAL_NO,F_NO,FEE_TYPE,FEE_RATE,G_NO,G_NAME,FEE_AMT,FEE_CURR,FEE_RMB,SERVICE_FEE) select CMD_TYPE,MANUAL_NO,F_NO,FEE_TYPE,FEE_RATE,G_NO,G_NAME,FEE_AMT,FEE_CURR,FEE_RMB,SERVICE_FEE from SERVICE_LIST_INC_EXT;
delete from SERVICE_LIST_GPTMP;
\timing
