\echo -----------------------IM_TRANS_GOODS_CONTA_REL------------------------
select now();
\timing
delete from IM_TRANS_GOODS_CONTA_REL using IM_TRANS_GOODS_CONTA_REL_GPTMP_TODAY where IM_TRANS_GOODS_CONTA_REL.PRE_NO=IM_TRANS_GOODS_CONTA_REL_GPTMP_TODAY.PRE_NO AND IM_TRANS_GOODS_CONTA_REL.RECORD_NUMBER=IM_TRANS_GOODS_CONTA_REL_GPTMP_TODAY.RECORD_NUMBER AND IM_TRANS_GOODS_CONTA_REL.G_NO=IM_TRANS_GOODS_CONTA_REL_GPTMP_TODAY.G_NO AND IM_TRANS_GOODS_CONTA_REL.CONTA_NO=IM_TRANS_GOODS_CONTA_REL_GPTMP_TODAY.CONTA_NO ;
insert into IM_TRANS_GOODS_CONTA_REL (PRE_NO,RECORD_NUMBER,G_NO,CONTA_NO,CONTA_GOODS_COUNT,CONTA_GOODS_WEIGHT,SEND_PORT,RECV_PORT) select PRE_NO,RECORD_NUMBER,G_NO,CONTA_NO,CONTA_GOODS_COUNT,CONTA_GOODS_WEIGHT,SEND_PORT,RECV_PORT from IM_TRANS_GOODS_CONTA_REL_GPTMP_TODAY  where CMD_TYPE='I';
\timing
