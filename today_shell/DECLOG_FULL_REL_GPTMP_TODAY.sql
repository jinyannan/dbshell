\echo ------------------DECLOG_FULL_REL----------------
select now();
\timing
delete from DECLOG_FULL_REL_GPTMP;
insert into DECLOG_FULL_REL_GPTMP (CMD_TYPE,LOG_ID) select CMD_TYPE,LOG_ID from DECLOG_FULL_REL_INC_EXT;
delete from DECLOG_FULL_REL_GPTMP_TODAY using DECLOG_FULL_REL_GPTMP where DECLOG_FULL_REL_GPTMP.LOG_ID=DECLOG_FULL_REL_GPTMP_TODAY.LOG_ID ;
insert into DECLOG_FULL_REL_GPTMP_TODAY (CMD_TYPE,LOG_ID,LOG_MODE,LOG_DATE,LOG_OPER_ID,LOG_CUSTOMS_CODE,LOG_COMPUTER,TRADE_CO,DECL_CO,CUSTOMS_CODE,DECL_TYPE,DECL_CARD_VER,DECL_CARD_DATE,DECL_CARD_OP,DECL_TOTAL_ERROR,DECL_SUB_ERROR,DECL_NAME,DECL_SEX,DECL_DEGREE,DECL_ID_CODE,DECL_TEL_BP_CODE,DECL_LICE_DATE,DECL_FAULT_TIME,DECL_LOCK_FLAG,DECL_CANCEL_DATE,DECL_CHK_DATE,DECL_CHK_CODE,DECL_CLASS,DECL_NOTE,DECL_CHANGE,DECL_VALID_DATE,DECL_ZG_CODE,DECL_TRAIN_CO) select CMD_TYPE,LOG_ID,LOG_MODE,LOG_DATE,LOG_OPER_ID,LOG_CUSTOMS_CODE,LOG_COMPUTER,TRADE_CO,DECL_CO,CUSTOMS_CODE,DECL_TYPE,DECL_CARD_VER,DECL_CARD_DATE,DECL_CARD_OP,DECL_TOTAL_ERROR,DECL_SUB_ERROR,DECL_NAME,DECL_SEX,DECL_DEGREE,DECL_ID_CODE,DECL_TEL_BP_CODE,DECL_LICE_DATE,DECL_FAULT_TIME,DECL_LOCK_FLAG,DECL_CANCEL_DATE,DECL_CHK_DATE,DECL_CHK_CODE,DECL_CLASS,DECL_NOTE,DECL_CHANGE,DECL_VALID_DATE,DECL_ZG_CODE,DECL_TRAIN_CO from DECLOG_FULL_REL_INC_EXT;
delete from DECLOG_FULL_REL_GPTMP;
\timing
