\echo ------------------RED_SERVICE_FEE----------------
select now();
\timing
insert into RED_SERVICE_FEE_GPTMP (CMD_TYPE,MANUAL_NO) select CMD_TYPE,MANUAL_NO from RED_SERVICE_FEE_INC_EXT;

delete from RED_SERVICE_FEE using RED_SERVICE_FEE_GPTMP where RED_SERVICE_FEE_GPTMP.MANUAL_NO=RED_SERVICE_FEE.MANUAL_NO ;

insert into RED_SERVICE_FEE(MANUAL_NO,DUE_FEE_AMT,PAY_FEE_AMT,CREATE_DATE,RETURN_ID,RETURN_FLAG,REMAIN_AMT) select MANUAL_NO,DUE_FEE_AMT,PAY_FEE_AMT,CREATE_DATE,RETURN_ID,RETURN_FLAG,REMAIN_AMT from RED_SERVICE_FEE_INC_EXT where CMD_TYPE='I';

delete from RED_SERVICE_FEE_GPTMP;

\timing
