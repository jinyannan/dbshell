\echo ------------------ENTRY_GPM_RTX_SENDLOG----------------
select now();
\timing
delete from ENTRY_GPM_RTX_SENDLOG_GPTMP;
insert into ENTRY_GPM_RTX_SENDLOG_GPTMP (CMD_TYPE,ENTRY_ID, SIGN_TYPE, PROC_MODE, SEND_DATE) select CMD_TYPE,ENTRY_ID, SIGN_TYPE, PROC_MODE, SEND_DATE from ENTRY_GPM_RTX_SENDLOG_INC_EXT;
delete from ENTRY_GPM_RTX_SENDLOG_GPTMP_TODAY using ENTRY_GPM_RTX_SENDLOG_GPTMP where ENTRY_GPM_RTX_SENDLOG_GPTMP.ENTRY_ID=ENTRY_GPM_RTX_SENDLOG_GPTMP_TODAY.ENTRY_ID AND ENTRY_GPM_RTX_SENDLOG_GPTMP.SIGN_TYPE=ENTRY_GPM_RTX_SENDLOG_GPTMP_TODAY.SIGN_TYPE AND ENTRY_GPM_RTX_SENDLOG_GPTMP.PROC_MODE=ENTRY_GPM_RTX_SENDLOG_GPTMP_TODAY.PROC_MODE AND ENTRY_GPM_RTX_SENDLOG_GPTMP.SEND_DATE=ENTRY_GPM_RTX_SENDLOG_GPTMP_TODAY.SEND_DATE ;
insert into ENTRY_GPM_RTX_SENDLOG_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,SIGN_TYPE,PROC_MODE,SEND_DATE,SEND_FILE_NAME,SEND_ER) select CMD_TYPE,ENTRY_ID,SIGN_TYPE,PROC_MODE,SEND_DATE,SEND_FILE_NAME,SEND_ER from ENTRY_GPM_RTX_SENDLOG_INC_EXT;
delete from ENTRY_GPM_RTX_SENDLOG_GPTMP;
\timing