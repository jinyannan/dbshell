\echo ------------------RSK_RECHECK_REL----------------
select now();
\timing
delete from RSK_RECHECK_REL_GPTMP;
insert into RSK_RECHECK_REL_GPTMP (CMD_TYPE,FORM_ID) select CMD_TYPE,FORM_ID from RSK_RECHECK_REL_INC_EXT;
delete from RSK_RECHECK_REL_GPTMP_TODAY using RSK_RECHECK_REL_GPTMP where RSK_RECHECK_REL_GPTMP.FORM_ID=RSK_RECHECK_REL_GPTMP_TODAY.FORM_ID ;
insert into RSK_RECHECK_REL_GPTMP_TODAY (CMD_TYPE,FORM_ID,CHECK_FLAG,LOCK_OP_CUSTOMS,LOCK_OP_ID,LOCK_OP_TEL,LOCK_DATE,UNLOCK_CUSTOMS,UNLOCK_OP_ID,UNLOCK_DATE,RSK_NO) select CMD_TYPE,FORM_ID,CHECK_FLAG,LOCK_OP_CUSTOMS,LOCK_OP_ID,LOCK_OP_TEL,LOCK_DATE,UNLOCK_CUSTOMS,UNLOCK_OP_ID,UNLOCK_DATE,RSK_NO from RSK_RECHECK_REL_INC_EXT;
delete from RSK_RECHECK_REL_GPTMP;
\timing
