\echo ------------------MNLBAK_CLAIM----------------
select now();
\timing
delete from MNLBAK_CLAIM_GPTMP;
insert into MNLBAK_CLAIM_GPTMP (CMD_TYPE,GUARANTEE_NO) select CMD_TYPE,GUARANTEE_NO from MNLBAK_CLAIM_INC_EXT;
delete from MNLBAK_CLAIM_GPTMP_TODAY using MNLBAK_CLAIM_GPTMP where MNLBAK_CLAIM_GPTMP.GUARANTEE_NO=MNLBAK_CLAIM_GPTMP_TODAY.GUARANTEE_NO ;
insert into MNLBAK_CLAIM_GPTMP_TODAY (CMD_TYPE,GUARANTEE_NO,CLAIM_NO,MANUAL_NO,OWNER_NO,GUARANTEE_AMT,GUARANTEE_LIMIT_DATE,BANK_ID,CLAIM_AMT,CLAIM_RATE,YEAR_RATE,CHK_ER,CHK_DATE,RECHK_ER,RECHK_DATE,CLAIM_DATE,CLAIM_ER,BANK_DATE,TYPE_ER,TYPE_DATE,OTHER_CERT_NO,PROC_MARK,LAST_ER,LAST_DATE,PAY_PRINT_DATE) select CMD_TYPE,GUARANTEE_NO,CLAIM_NO,MANUAL_NO,OWNER_NO,GUARANTEE_AMT,GUARANTEE_LIMIT_DATE,BANK_ID,CLAIM_AMT,CLAIM_RATE,YEAR_RATE,CHK_ER,CHK_DATE,RECHK_ER,RECHK_DATE,CLAIM_DATE,CLAIM_ER,BANK_DATE,TYPE_ER,TYPE_DATE,OTHER_CERT_NO,PROC_MARK,LAST_ER,LAST_DATE,PAY_PRINT_DATE from MNLBAK_CLAIM_INC_EXT;
delete from MNLBAK_CLAIM_GPTMP;
\timing
