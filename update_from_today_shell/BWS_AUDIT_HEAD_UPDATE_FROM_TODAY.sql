\echo -----------------------BWS_AUDIT_HEAD------------------------
select now();
\timing
delete from BWS_AUDIT_HEAD using BWS_AUDIT_HEAD_GPTMP_TODAY where BWS_AUDIT_HEAD.AUDIT_NO=BWS_AUDIT_HEAD_GPTMP_TODAY.AUDIT_NO ;
insert into BWS_AUDIT_HEAD (AUDIT_NO,EPORT_NO,AUDIT_TYPE,I_E_FLAG,MASTER_CUSTOMS,I_E_DATE,DECL_DATE,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,DECLARE_CODE,DECLARE_NAME,BWS_NO,AUDIT_NO_RELATED,BWS_NO_RELATED,CHK_MARK,PACK_NO,GROSS_WT) select AUDIT_NO,EPORT_NO,AUDIT_TYPE,I_E_FLAG,MASTER_CUSTOMS,I_E_DATE,DECL_DATE,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,DECLARE_CODE,DECLARE_NAME,BWS_NO,AUDIT_NO_RELATED,BWS_NO_RELATED,CHK_MARK,PACK_NO,GROSS_WT from BWS_AUDIT_HEAD_GPTMP_TODAY  where CMD_TYPE='I';
\timing
