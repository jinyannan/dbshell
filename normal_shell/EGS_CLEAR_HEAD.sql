\echo ------------------EGS_CLEAR_HEAD----------------
select now();
\timing
insert into EGS_CLEAR_HEAD_GPTMP (CMD_TYPE,CLR_NO) select CMD_TYPE,CLR_NO from EGS_CLEAR_HEAD_INC_EXT;

delete from EGS_CLEAR_HEAD using EGS_CLEAR_HEAD_GPTMP where EGS_CLEAR_HEAD_GPTMP.CLR_NO=EGS_CLEAR_HEAD.CLR_NO ;

insert into EGS_CLEAR_HEAD(CLR_NO,PRE_CLR_NO,EGS_NO,EGS_NAME,MASTER_CUSTOMS,CLEAR_TYPE,I_E_PORT,I_E_DATE,I_E_FLAG,DECL_DATE,AGENT_CODE,AGENT_NAME,DECLARE_NO,DECLARE_PHONE,TRAF_MODE,BILL_NO,BILL_SUB_NO,GROSS_WT,NET_WT,WRAP_TYPE,PACK_NO,NOTES,VERIFY_DATE,VERIFY_ER,CLEAR_DATE,CLEAR_ER,AUDIT_ER,AUDIT_DATE,AUDIT_NOTE,TURN_NO,ENTRY_ID,CLEAR_NO,DECLARE_SOURCE,IM_CUSTOMS_CODE,IM_AGENT_CODE,IM_AGENT_NAME,IM_DECL_NO,IM_EGS_NO,IM_EGS_NAME,CHK_MARK,EXE_MARK,LICENSE_NO) select CLR_NO,PRE_CLR_NO,EGS_NO,EGS_NAME,MASTER_CUSTOMS,CLEAR_TYPE,I_E_PORT,I_E_DATE,I_E_FLAG,DECL_DATE,AGENT_CODE,AGENT_NAME,DECLARE_NO,DECLARE_PHONE,TRAF_MODE,BILL_NO,BILL_SUB_NO,GROSS_WT,NET_WT,WRAP_TYPE,PACK_NO,NOTES,VERIFY_DATE,VERIFY_ER,CLEAR_DATE,CLEAR_ER,AUDIT_ER,AUDIT_DATE,AUDIT_NOTE,TURN_NO,ENTRY_ID,CLEAR_NO,DECLARE_SOURCE,IM_CUSTOMS_CODE,IM_AGENT_CODE,IM_AGENT_NAME,IM_DECL_NO,IM_EGS_NO,IM_EGS_NAME,CHK_MARK,EXE_MARK,LICENSE_NO from EGS_CLEAR_HEAD_INC_EXT where CMD_TYPE='I';

delete from EGS_CLEAR_HEAD_GPTMP;

\timing
