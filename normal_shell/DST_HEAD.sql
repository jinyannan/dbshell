\echo ------------------DST_HEAD----------------
select now();
\timing
insert into DST_HEAD_GPTMP (CMD_TYPE,PRE_NO) select CMD_TYPE,PRE_NO from DST_HEAD_INC_EXT;

delete from DST_HEAD using DST_HEAD_GPTMP where DST_HEAD_GPTMP.PRE_NO=DST_HEAD.PRE_NO ;

insert into DST_HEAD(DST_SEQ_NO,PRE_NO,EMS_NO,EMS_TYPE,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,DS_TYPE,DS_NO,DECLARE_DATE,MASTER_CUSTOMS,RATE_MARK,REL_NO,RTX_MARK,NOTE,OP_NAME,OP_ID,OP_TIME,ACCURAL_DATE,VALID_DATE) select DST_SEQ_NO,PRE_NO,EMS_NO,EMS_TYPE,TRADE_CODE,TRADE_NAME,OWNER_CODE,OWNER_NAME,DS_TYPE,DS_NO,DECLARE_DATE,MASTER_CUSTOMS,RATE_MARK,REL_NO,RTX_MARK,NOTE,OP_NAME,OP_ID,OP_TIME,ACCURAL_DATE,VALID_DATE from DST_HEAD_INC_EXT where CMD_TYPE='I';

delete from DST_HEAD_GPTMP;

\timing
