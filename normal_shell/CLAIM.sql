\echo ------------------CLAIM----------------
select now();
\timing
insert into CLAIM_GPTMP (CMD_TYPE,GUARANTEE_NO) select CMD_TYPE,GUARANTEE_NO from CLAIM_INC_EXT;

delete from CLAIM using CLAIM_GPTMP where CLAIM_GPTMP.GUARANTEE_NO=CLAIM.GUARANTEE_NO ;

insert into CLAIM(GUARANTEE_NO,CLAIM_NO,MANUAL_NO,OWNER_NO,GUARANTEE_AMT,GUARANTEE_LIMIT_DATE,BANK_ID,CLAIM_AMT,CLAIM_RATE,YEAR_RATE,CHK_ER,CHK_DATE,RECHK_ER,RECHK_DATE,CLAIM_DATE,CLAIM_ER,BANK_DATE,TYPE_ER,TYPE_DATE,OTHER_CERT_NO,PROC_MARK,LAST_ER,LAST_DATE,PAY_PRINT_DATE) select GUARANTEE_NO,CLAIM_NO,MANUAL_NO,OWNER_NO,GUARANTEE_AMT,GUARANTEE_LIMIT_DATE,BANK_ID,CLAIM_AMT,CLAIM_RATE,YEAR_RATE,CHK_ER,CHK_DATE,RECHK_ER,RECHK_DATE,CLAIM_DATE,CLAIM_ER,BANK_DATE,TYPE_ER,TYPE_DATE,OTHER_CERT_NO,PROC_MARK,LAST_ER,LAST_DATE,PAY_PRINT_DATE from CLAIM_INC_EXT where CMD_TYPE='I';

delete from CLAIM_GPTMP;

\timing
