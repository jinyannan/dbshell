\echo ------------------EX_TRANS_ALARM_LIST_REL----------------
select now();
\timing
insert into EX_TRANS_ALARM_LIST_REL_GPTMP (CMD_TYPE,PRE_NO, RECORD_NUMBER) select CMD_TYPE,PRE_NO, RECORD_NUMBER from EX_TRANS_ALARM_LIST_REL_INC_EXT;

delete from EX_TRANS_ALARM_LIST_REL using EX_TRANS_ALARM_LIST_REL_GPTMP where EX_TRANS_ALARM_LIST_REL_GPTMP.PRE_NO=EX_TRANS_ALARM_LIST_REL.PRE_NO AND EX_TRANS_ALARM_LIST_REL_GPTMP.RECORD_NUMBER=EX_TRANS_ALARM_LIST_REL.RECORD_NUMBER ;

insert into EX_TRANS_ALARM_LIST_REL(PRE_NO,RECORD_NUMBER,TRAF_MODE,SHIP_ID,SHIP_NAME_EN,VOYAGE_NO,BILL_NO,I_E_DATE,ENTRY_NO,BIND_FLAG,REC_FLAG,PACK_NO,GROSS_WT,GOODS_COUNT,CONTA_C,OWNER_NAME,EX_CHECK_FLAG,EX_CHECK_TIME,REAL_PACK_NO,REAL_GROSS_WT,NOTE) select PRE_NO,RECORD_NUMBER,TRAF_MODE,SHIP_ID,SHIP_NAME_EN,VOYAGE_NO,BILL_NO,I_E_DATE,ENTRY_NO,BIND_FLAG,REC_FLAG,PACK_NO,GROSS_WT,GOODS_COUNT,CONTA_C,OWNER_NAME,EX_CHECK_FLAG,EX_CHECK_TIME,REAL_PACK_NO,REAL_GROSS_WT,NOTE from EX_TRANS_ALARM_LIST_REL_INC_EXT where CMD_TYPE='I';

delete from EX_TRANS_ALARM_LIST_REL_GPTMP;

\timing