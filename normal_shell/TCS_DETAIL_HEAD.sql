\echo ------------------TCS_DETAIL_HEAD----------------
select now();
\timing
insert into TCS_DETAIL_HEAD_GPTMP (CMD_TYPE,ACCOUNT_ORG_CODE, IN_TREASURY_DATE, PACK_NO, CURRENT_PACK_NO) select CMD_TYPE,ACCOUNT_ORG_CODE, IN_TREASURY_DATE, PACK_NO, CURRENT_PACK_NO from TCS_DETAIL_HEAD_INC_EXT;

delete from TCS_DETAIL_HEAD using TCS_DETAIL_HEAD_GPTMP where TCS_DETAIL_HEAD_GPTMP.ACCOUNT_ORG_CODE=TCS_DETAIL_HEAD.ACCOUNT_ORG_CODE AND TCS_DETAIL_HEAD_GPTMP.IN_TREASURY_DATE=TCS_DETAIL_HEAD.IN_TREASURY_DATE AND TCS_DETAIL_HEAD_GPTMP.PACK_NO=TCS_DETAIL_HEAD.PACK_NO AND TCS_DETAIL_HEAD_GPTMP.CURRENT_PACK_NO=TCS_DETAIL_HEAD.CURRENT_PACK_NO ;

insert into TCS_DETAIL_HEAD(MSG_ID,ACCOUNT_ORG_CODE,IN_TREASURY_DATE,PACK_NO,CHILD_PACK_NUM,CURRENT_PACK_NO,ALL_NUM,ALL_AMOUNT,CURRENT_NUM,CURRENT_AMOUNT,VERIFY_MARK,VERIFY_NOTE,MAX_ITEM_NO,RECEIVE_DATE) select MSG_ID,ACCOUNT_ORG_CODE,IN_TREASURY_DATE,PACK_NO,CHILD_PACK_NUM,CURRENT_PACK_NO,ALL_NUM,ALL_AMOUNT,CURRENT_NUM,CURRENT_AMOUNT,VERIFY_MARK,VERIFY_NOTE,MAX_ITEM_NO,RECEIVE_DATE from TCS_DETAIL_HEAD_INC_EXT where CMD_TYPE='I';

delete from TCS_DETAIL_HEAD_GPTMP;

\timing
