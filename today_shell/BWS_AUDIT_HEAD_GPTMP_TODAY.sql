\echo ------------------BWS_AUDIT_HEAD----------------
select now();
\timing
delete from BWS_AUDIT_HEAD_GPTMP;
insert into BWS_AUDIT_HEAD_GPTMP (CMD_TYPE,AUDIT_NO) select CMD_TYPE,AUDIT_NO from BWS_AUDIT_HEAD_INC_EXT;
delete from BWS_AUDIT_HEAD_GPTMP_TODAY using BWS_AUDIT_HEAD_GPTMP where BWS_AUDIT_HEAD_GPTMP.AUDIT_NO=BWS_AUDIT_HEAD_GPTMP_TODAY.AUDIT_NO ;
insert into BWS_AUDIT_HEAD_GPTMP_TODAY (CMD_TYPE,AUDIT_NO,EPORT_NO,AUDIT_TYPE,I_E_FLAG,MASTER_CUSTOMS,I_E_DATE,DECL_DATE,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,DECLARE_CODE,DECLARE_NAME,BWS_NO,AUDIT_NO_RELATED,BWS_NO_RELATED,CHK_MARK,PACK_NO,GROSS_WT) select CMD_TYPE,AUDIT_NO,EPORT_NO,AUDIT_TYPE,I_E_FLAG,MASTER_CUSTOMS,I_E_DATE,DECL_DATE,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,DECLARE_CODE,DECLARE_NAME,BWS_NO,AUDIT_NO_RELATED,BWS_NO_RELATED,CHK_MARK,PACK_NO,GROSS_WT from BWS_AUDIT_HEAD_INC_EXT;
delete from BWS_AUDIT_HEAD_GPTMP;
\timing
