\echo -----------------------SERVICE_FEE------------------------
select now();
\timing
delete from SERVICE_FEE using SERVICE_FEE_GPTMP_TODAY where SERVICE_FEE.MANUAL_NO=SERVICE_FEE_GPTMP_TODAY.MANUAL_NO ;
insert into SERVICE_FEE (MANUAL_NO,DUE_FEE_AMT,PAY_FEE_AMT,CREATE_DATE,RETURN_ID,RETURN_FLAG,REMAIN_AMT) select MANUAL_NO,DUE_FEE_AMT,PAY_FEE_AMT,CREATE_DATE,RETURN_ID,RETURN_FLAG,REMAIN_AMT from SERVICE_FEE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
