\echo ------------------EXTERNAL_JOU----------------
select now();
\timing
delete from EXTERNAL_JOU_GPTMP;
insert into EXTERNAL_JOU_GPTMP (CMD_TYPE,MANUAL_NO, CUSTOMS_CODE, APPL_NO) select CMD_TYPE,MANUAL_NO, CUSTOMS_CODE, APPL_NO from EXTERNAL_JOU_INC_EXT;
delete from EXTERNAL_JOU_GPTMP_TODAY using EXTERNAL_JOU_GPTMP where EXTERNAL_JOU_GPTMP.MANUAL_NO=EXTERNAL_JOU_GPTMP_TODAY.MANUAL_NO AND EXTERNAL_JOU_GPTMP.CUSTOMS_CODE=EXTERNAL_JOU_GPTMP_TODAY.CUSTOMS_CODE AND EXTERNAL_JOU_GPTMP.APPL_NO=EXTERNAL_JOU_GPTMP_TODAY.APPL_NO ;
insert into EXTERNAL_JOU_GPTMP_TODAY (CMD_TYPE,MANUAL_NO,CUSTOMS_CODE,APPL_NO,FASCICLE_NO,E_DATE,APPL_ER,APPL_DATE,RETURN_DATE,RETURN_FLAG,PASSWORD,NOTE_S) select CMD_TYPE,MANUAL_NO,CUSTOMS_CODE,APPL_NO,FASCICLE_NO,E_DATE,APPL_ER,APPL_DATE,RETURN_DATE,RETURN_FLAG,PASSWORD,NOTE_S from EXTERNAL_JOU_INC_EXT;
delete from EXTERNAL_JOU_GPTMP;
\timing
