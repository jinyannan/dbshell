\echo ------------------COPLOG_MODIFY_REL----------------
select now();
\timing
delete from COPLOG_MODIFY_REL_GPTMP;
insert into COPLOG_MODIFY_REL_GPTMP (CMD_TYPE,LOG_ID) select CMD_TYPE,LOG_ID from COPLOG_MODIFY_REL_INC_EXT;
delete from COPLOG_MODIFY_REL_GPTMP_TODAY using COPLOG_MODIFY_REL_GPTMP where COPLOG_MODIFY_REL_GPTMP.LOG_ID=COPLOG_MODIFY_REL_GPTMP_TODAY.LOG_ID ;
insert into COPLOG_MODIFY_REL_GPTMP_TODAY (CMD_TYPE,LOG_ID,LOG_SYSTEM,LOG_NO,LOG_FIELD_NAME,LOG_SOURCE,LOG_DEST,LOG_TEXT,LOG_TYPE,LOG_OPER_ID,LOG_OPER_CUSTOMS_CODE,LOG_CUSTOMS_CODE,LOG_DATE,LOG_COMPUTER_NAME) select CMD_TYPE,LOG_ID,LOG_SYSTEM,LOG_NO,LOG_FIELD_NAME,LOG_SOURCE,LOG_DEST,LOG_TEXT,LOG_TYPE,LOG_OPER_ID,LOG_OPER_CUSTOMS_CODE,LOG_CUSTOMS_CODE,LOG_DATE,LOG_COMPUTER_NAME from COPLOG_MODIFY_REL_INC_EXT;
delete from COPLOG_MODIFY_REL_GPTMP;
\timing
