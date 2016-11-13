\echo -----------------------IM_TRANS_ALARM_LIST_REL------------------------
select now();
\timing
delete from IM_TRANS_ALARM_LIST_REL using IM_TRANS_ALARM_LIST_REL_GPTMP_TODAY where IM_TRANS_ALARM_LIST_REL.PRE_NO=IM_TRANS_ALARM_LIST_REL_GPTMP_TODAY.PRE_NO AND IM_TRANS_ALARM_LIST_REL.RECORD_NUMBER=IM_TRANS_ALARM_LIST_REL_GPTMP_TODAY.RECORD_NUMBER ;
insert into IM_TRANS_ALARM_LIST_REL (PRE_NO,RECORD_NUMBER,TRAF_MODE,SHIP_ID,SHIP_NAME_EN,VOYAGE_NO,BILL_NO,I_E_DATE,ENTRY_NO,BIND_FLAG,REC_FLAG,PACK_NO,GROSS_WT,GOODS_COUNT,CONTA_C,OWNER_NAME,EX_CHECK_FLAG,EX_CHECK_TIME,REAL_PACK_NO,REAL_GROSS_WT,NOTE) select PRE_NO,RECORD_NUMBER,TRAF_MODE,SHIP_ID,SHIP_NAME_EN,VOYAGE_NO,BILL_NO,I_E_DATE,ENTRY_NO,BIND_FLAG,REC_FLAG,PACK_NO,GROSS_WT,GOODS_COUNT,CONTA_C,OWNER_NAME,EX_CHECK_FLAG,EX_CHECK_TIME,REAL_PACK_NO,REAL_GROSS_WT,NOTE from IM_TRANS_ALARM_LIST_REL_GPTMP_TODAY  where CMD_TYPE='I';
\timing
