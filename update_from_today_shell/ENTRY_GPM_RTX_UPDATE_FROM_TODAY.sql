\echo -----------------------ENTRY_GPM_RTX------------------------
select now();
\timing
delete from ENTRY_GPM_RTX using ENTRY_GPM_RTX_GPTMP_TODAY where ENTRY_GPM_RTX.SIGN_TYPE=ENTRY_GPM_RTX_GPTMP_TODAY.SIGN_TYPE AND ENTRY_GPM_RTX.ENTRY_ID=ENTRY_GPM_RTX_GPTMP_TODAY.ENTRY_ID AND ENTRY_GPM_RTX.PROC_MODE=ENTRY_GPM_RTX_GPTMP_TODAY.PROC_MODE ;
insert into ENTRY_GPM_RTX (SIGN_TYPE,ENTRY_ID,PROC_MODE,PROC_DATE) select SIGN_TYPE,ENTRY_ID,PROC_MODE,PROC_DATE from ENTRY_GPM_RTX_GPTMP_TODAY  where CMD_TYPE='I';
\timing