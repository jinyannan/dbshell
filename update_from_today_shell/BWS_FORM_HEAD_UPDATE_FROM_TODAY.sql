\echo -----------------------BWS_FORM_HEAD------------------------
select now();
\timing
delete from BWS_FORM_HEAD using BWS_FORM_HEAD_GPTMP_TODAY where BWS_FORM_HEAD.FORM_ID=BWS_FORM_HEAD_GPTMP_TODAY.FORM_ID ;
insert into BWS_FORM_HEAD (FORM_ID,EPORT_NO,BWS_NO,I_E_FLAG,RELATIVE_ID,MASTER_CUSTOMS,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,DECLARE_CODE,DECLARE_NAME,BILL_NO,PACK_NO,WRAP_TYPE,GROSS_NT,GROSS_WT,NOTE,DECLARE_DATE,CHK_MARK) select FORM_ID,EPORT_NO,BWS_NO,I_E_FLAG,RELATIVE_ID,MASTER_CUSTOMS,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,DECLARE_CODE,DECLARE_NAME,BILL_NO,PACK_NO,WRAP_TYPE,GROSS_NT,GROSS_WT,NOTE,DECLARE_DATE,CHK_MARK from BWS_FORM_HEAD_GPTMP_TODAY  where CMD_TYPE='I';
\timing
