\echo ------------------IM_DECL_ALARM_LIST----------------
select now();
\timing
delete from IM_DECL_ALARM_LIST_GPTMP;
insert into IM_DECL_ALARM_LIST_GPTMP (CMD_TYPE,PRE_NO, RECORD_NUMBER, G_NO) select CMD_TYPE,PRE_NO, RECORD_NUMBER, G_NO from IM_DECL_ALARM_LIST_INC_EXT;
delete from IM_DECL_ALARM_LIST_GPTMP_TODAY using IM_DECL_ALARM_LIST_GPTMP where IM_DECL_ALARM_LIST_GPTMP.PRE_NO=IM_DECL_ALARM_LIST_GPTMP_TODAY.PRE_NO AND IM_DECL_ALARM_LIST_GPTMP.RECORD_NUMBER=IM_DECL_ALARM_LIST_GPTMP_TODAY.RECORD_NUMBER AND IM_DECL_ALARM_LIST_GPTMP.G_NO=IM_DECL_ALARM_LIST_GPTMP_TODAY.G_NO ;
insert into IM_DECL_ALARM_LIST_GPTMP_TODAY (CMD_TYPE,PRE_NO,RECORD_NUMBER,TURN_NO,G_NO,CODE_TS,G_NAME,PACK_TYPE,GOODS_PIECE,GOODS_AMOUNT,GOODS_UNIT,GOODS_WEIGHT,GOODS_PRICE,GOODS_CURR,GOODS_CHK_MARK) select CMD_TYPE,PRE_NO,RECORD_NUMBER,TURN_NO,G_NO,CODE_TS,G_NAME,PACK_TYPE,GOODS_PIECE,GOODS_AMOUNT,GOODS_UNIT,GOODS_WEIGHT,GOODS_PRICE,GOODS_CURR,GOODS_CHK_MARK from IM_DECL_ALARM_LIST_INC_EXT;
delete from IM_DECL_ALARM_LIST_GPTMP;
\timing