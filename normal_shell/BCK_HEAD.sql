\echo ------------------BCK_HEAD----------------
select now();
\timing
insert into BCK_HEAD_GPTMP (CMD_TYPE,BCK_NO) select CMD_TYPE,BCK_NO from BCK_HEAD_INC_EXT;

delete from BCK_HEAD using BCK_HEAD_GPTMP where BCK_HEAD_GPTMP.BCK_NO=BCK_HEAD.BCK_NO ;

insert into BCK_HEAD(BCK_NO,PRE_BCK_NO,TRADE_CODE,REG_CO,CO_CLASS,ADDR_CO,CONTAC_CO,TEL_CO,RISK_VALUE,EMS_NO,CODE_TS_LIST,CHECK_PROP,CHECK_TYPE,CHECK_MODE,URGENT_DEGREE,CHECK_LIST,ASS_INFO,APPLY_INPUTER,APPLY_CUSTOMS_CODE,APPLY_POS,APPLY_COMMIT_DATE,APPLY_CHECKER,APPLY_CHECK_DATE,APPLY_FLAG,EVALUATE_NOTE,EVALUATER,EVALUATE_DATE,EVALUATE_FLAG,ALC_ER,ALC_DATE,EXECUTOR,CHECK_DETAIL,CHECK_DATE,CHECK_RESULT,CHECK_INPUTER,EXEC_CHECKER,EXEC_CHECK_DATE,EXEC_CHECK_FLAG,END_RESULT,END_CHECKER,END_CHECK_DATE,RELATIVE_NO,HANDOVER_NO,CASE_NO,DUTY,TAX,PAY_TAX,EXE_MARK,EXE_MARK_DATE,NOTE,CHECK_LIMIT_DATE,REQUIRE_SENDER,REQUIRE_SEND_DATE,REQUIRE_CUSTOMS_CODE,REQUIRE_REJ_DATE,CHECK_FEEDBACK_DATE,IMPROVE_RESULT,IMPROVE_FEEDBACK_DATE) select BCK_NO,PRE_BCK_NO,TRADE_CODE,REG_CO,CO_CLASS,ADDR_CO,CONTAC_CO,TEL_CO,RISK_VALUE,EMS_NO,CODE_TS_LIST,CHECK_PROP,CHECK_TYPE,CHECK_MODE,URGENT_DEGREE,CHECK_LIST,ASS_INFO,APPLY_INPUTER,APPLY_CUSTOMS_CODE,APPLY_POS,APPLY_COMMIT_DATE,APPLY_CHECKER,APPLY_CHECK_DATE,APPLY_FLAG,EVALUATE_NOTE,EVALUATER,EVALUATE_DATE,EVALUATE_FLAG,ALC_ER,ALC_DATE,EXECUTOR,CHECK_DETAIL,CHECK_DATE,CHECK_RESULT,CHECK_INPUTER,EXEC_CHECKER,EXEC_CHECK_DATE,EXEC_CHECK_FLAG,END_RESULT,END_CHECKER,END_CHECK_DATE,RELATIVE_NO,HANDOVER_NO,CASE_NO,DUTY,TAX,PAY_TAX,EXE_MARK,EXE_MARK_DATE,NOTE,CHECK_LIMIT_DATE,REQUIRE_SENDER,REQUIRE_SEND_DATE,REQUIRE_CUSTOMS_CODE,REQUIRE_REJ_DATE,CHECK_FEEDBACK_DATE,IMPROVE_RESULT,IMPROVE_FEEDBACK_DATE from BCK_HEAD_INC_EXT where CMD_TYPE='I';

delete from BCK_HEAD_GPTMP;

\timing
