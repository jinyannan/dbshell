\echo ------------------IM_TRANS_ALARM_GOODS_CONTA_REL----------------
select now();
\timing
delete from IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP;
insert into IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP (CMD_TYPE,PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO) select CMD_TYPE,PRE_NO, RECORD_NUMBER, G_NO, CONTA_NO from IM_TRANS_ALARM_GOODS_CONTA_REL_INC_EXT;
delete from IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP_TODAY using IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP where IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP.PRE_NO=IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP_TODAY.PRE_NO AND IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP.RECORD_NUMBER=IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP_TODAY.RECORD_NUMBER AND IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP.G_NO=IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP_TODAY.G_NO AND IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP.CONTA_NO=IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP_TODAY.CONTA_NO ;
insert into IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP_TODAY (CMD_TYPE,PRE_NO,RECORD_NUMBER,G_NO,CONTA_NO,CONTA_GOODS_COUNT,CONTA_GOODS_WEIGHT) select CMD_TYPE,PRE_NO,RECORD_NUMBER,G_NO,CONTA_NO,CONTA_GOODS_COUNT,CONTA_GOODS_WEIGHT from IM_TRANS_ALARM_GOODS_CONTA_REL_INC_EXT;
delete from IM_TRANS_ALARM_GOODS_CONTA_REL_GPTMP;
\timing
