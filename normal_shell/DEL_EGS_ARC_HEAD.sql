\echo ------------------DEL_EGS_ARC_HEAD----------------
select now();
\timing
insert into DEL_EGS_ARC_HEAD_GPTMP (CMD_TYPE,EGS_NO) select CMD_TYPE,EGS_NO from DEL_EGS_ARC_HEAD_INC_EXT;

delete from DEL_EGS_ARC_HEAD using DEL_EGS_ARC_HEAD_GPTMP where DEL_EGS_ARC_HEAD_GPTMP.EGS_NO=DEL_EGS_ARC_HEAD.EGS_NO ;

insert into DEL_EGS_ARC_HEAD(PRE_EGS_NO,EGS_NO,EGS_NAME,APPR_OFFICE,APPR_NO,MASTER_CUSTOMS,REG_CUSTOMS,I_E_FLAG,SPONSOR_NAME,UNDERTAKE_NAME,SPONSOR_ER,SPONSOR_ER_PHONE,CHECK_ER,BEGIN_DATE,END_DATE,EGS_SITE_MAME,EGS_AREA,EGS_INTE_AREA,DECLARE_NO,DECLARE_PHONE,COUNTRY_QTY,EX_MERCHANT_QTY,TW_APPR_NO,INPUT_DATE,MODI_REASON,AUDIT_OFFICER,DEPOSIT_MARK,AUDIT_DATE,AUDIT_ER,AUDIT_NOTE,POSTPONE_AUDIT_ER,POSTPONE_AUDIT_DATE,POSTPONE_APPR_NO,POSTPONE_TIMES,CLOSE_DATE,CLOSE_ER,NOTES,DECLARE_TYPE,MODIFY_TIMES,DECLARE_SOURCE,CHK_MARK,EXE_MARK,AGENT_CODE,AGENT_NAME) select PRE_EGS_NO,EGS_NO,EGS_NAME,APPR_OFFICE,APPR_NO,MASTER_CUSTOMS,REG_CUSTOMS,I_E_FLAG,SPONSOR_NAME,UNDERTAKE_NAME,SPONSOR_ER,SPONSOR_ER_PHONE,CHECK_ER,BEGIN_DATE,END_DATE,EGS_SITE_MAME,EGS_AREA,EGS_INTE_AREA,DECLARE_NO,DECLARE_PHONE,COUNTRY_QTY,EX_MERCHANT_QTY,TW_APPR_NO,INPUT_DATE,MODI_REASON,AUDIT_OFFICER,DEPOSIT_MARK,AUDIT_DATE,AUDIT_ER,AUDIT_NOTE,POSTPONE_AUDIT_ER,POSTPONE_AUDIT_DATE,POSTPONE_APPR_NO,POSTPONE_TIMES,CLOSE_DATE,CLOSE_ER,NOTES,DECLARE_TYPE,MODIFY_TIMES,DECLARE_SOURCE,CHK_MARK,EXE_MARK,AGENT_CODE,AGENT_NAME from DEL_EGS_ARC_HEAD_INC_EXT where CMD_TYPE='I';

delete from DEL_EGS_ARC_HEAD_GPTMP;

\timing
