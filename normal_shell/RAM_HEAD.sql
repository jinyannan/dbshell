\echo ------------------RAM_HEAD----------------
select now();
\timing
insert into RAM_HEAD_GPTMP (CMD_TYPE,RAM_ID) select CMD_TYPE,RAM_ID from RAM_HEAD_INC_EXT;

delete from RAM_HEAD using RAM_HEAD_GPTMP where RAM_HEAD_GPTMP.RAM_ID=RAM_HEAD.RAM_ID ;

insert into RAM_HEAD(PRE_RAM_ID,RAM_ID,CUT_ID,RELATIVE_ID,RAM_TYPE,PROJECT_ID,OWNER_CODE,OWNER_NAME,MASTER_CUSTOMS,LINKMAN,I_DATE,INPUT_DATE,INPUT_ER,PRE_PRINT_ER,PRE_PRINT_DATE,DECL_DATE,CHK_DATE,CHK_ER,CHECK_NOTE,RECHK_DATE,RECHK_ER,RECHK_NOTE,REPLY_DATE,REPLY_ER,REPLY_CHECK_NOTE,MODIFY_DATE,MODIFY_ER,MODIFY_NOTE,EXE_MARK,TOTAL_AMT,PRINT_DATE,PRINT_ER,SOURCE_TYPE,RESERVE1,NOTE,HASH_SIGN,REASON,LIMIT_DATE,VERIFY_DATE,ENTRY_ID,RTX_DATE,BANK_NAME,DATE_BEGIN,DATE_END,MAX_LOAN_VALUE,TAX_AMT,END_LOAN_DATE,END_LOAN_ER,UNFREEZE_TYPE,I_E_PORT,CUT_APP_REASON,CUT_FILE,I_E_ZGCUST,IM_CUSTOMS_CODE,IM_COP_CODE,IM_COP_NAME,IM_PROJECT_ID,IM_LINKMAN,YD_REPLY_ER,YD_REPLY_DATE,YD_REPLY_NOTE,REAL_DUTY,REAL_TAX,REAL_REG,REAL_ANTI,REAL_OTHER) select PRE_RAM_ID,RAM_ID,CUT_ID,RELATIVE_ID,RAM_TYPE,PROJECT_ID,OWNER_CODE,OWNER_NAME,MASTER_CUSTOMS,LINKMAN,I_DATE,INPUT_DATE,INPUT_ER,PRE_PRINT_ER,PRE_PRINT_DATE,DECL_DATE,CHK_DATE,CHK_ER,CHECK_NOTE,RECHK_DATE,RECHK_ER,RECHK_NOTE,REPLY_DATE,REPLY_ER,REPLY_CHECK_NOTE,MODIFY_DATE,MODIFY_ER,MODIFY_NOTE,EXE_MARK,TOTAL_AMT,PRINT_DATE,PRINT_ER,SOURCE_TYPE,RESERVE1,NOTE,HASH_SIGN,REASON,LIMIT_DATE,VERIFY_DATE,ENTRY_ID,RTX_DATE,BANK_NAME,DATE_BEGIN,DATE_END,MAX_LOAN_VALUE,TAX_AMT,END_LOAN_DATE,END_LOAN_ER,UNFREEZE_TYPE,I_E_PORT,CUT_APP_REASON,CUT_FILE,I_E_ZGCUST,IM_CUSTOMS_CODE,IM_COP_CODE,IM_COP_NAME,IM_PROJECT_ID,IM_LINKMAN,YD_REPLY_ER,YD_REPLY_DATE,YD_REPLY_NOTE,REAL_DUTY,REAL_TAX,REAL_REG,REAL_ANTI,REAL_OTHER from RAM_HEAD_INC_EXT where CMD_TYPE='I';

delete from RAM_HEAD_GPTMP;

\timing
