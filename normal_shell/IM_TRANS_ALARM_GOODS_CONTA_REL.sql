\echo ------------------IM_TRANS_ALARM_GOODS_CONTA_REL----------------
select now();
\timing
insert into IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP (CMD_TYPE,PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO) select CMD_TYPE,PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO from IM_TRANS_ALARM_GOODS_CONTA_REL_INC_EXT;

delete from IM_TRANS_ALARM_GOODS_CONTA_REL using IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP where IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP.PRE_NO=IM_TRANS_ALARM_GOODS_CONTA_REL.PRE_NO AND IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP.RECORD_NUMBER=IM_TRANS_ALARM_GOODS_CONTA_REL.RECORD_NUMBER AND IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP.G_NO=IM_TRANS_ALARM_GOODS_CONTA_REL.G_NO AND IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP.CONTA_NO=IM_TRANS_ALARM_GOODS_CONTA_REL.CONTA_NO ;

insert into IM_TRANS_ALARM_GOODS_CONTA_REL(PRE_NO,RECORD_NUMBER,G_NO,CONTA_NO,CONTA_GOODS_COUNT,CONTA_GOODS_WEIGHT) select PRE_NO,RECORD_NUMBER,G_NO,CONTA_NO,CONTA_GOODS_COUNT,CONTA_GOODS_WEIGHT from IM_TRANS_ALARM_GOODS_CONTA_REL_INC_EXT where CMD_TYPE='I';

delete from IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP;

\timing
