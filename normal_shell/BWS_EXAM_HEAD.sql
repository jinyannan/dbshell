\echo ------------------BWS_EXAM_HEAD----------------
select now();
\timing
insert into BWS_EXAM_HEAD_GPTMP (CMD_TYPE,BWS_EXAM_NO) select CMD_TYPE,BWS_EXAM_NO from BWS_EXAM_HEAD_INC_EXT;

delete from BWS_EXAM_HEAD using BWS_EXAM_HEAD_GPTMP where BWS_EXAM_HEAD_GPTMP.BWS_EXAM_NO=BWS_EXAM_HEAD.BWS_EXAM_NO ;

insert into BWS_EXAM_HEAD(BWS_EXAM_NO,EPORT_NO,EXAM_TYPE,CERT_TYPE,I_E_FLAG,BWS_NO,MASTER_CUSTOMS,TRADE_CODE,TRADE_NAME,TRANSIT_CODE,TRANSIT_NAME,ENTRUST_CODE,ENTRUST_NAME,VEHICLE_NT,TOTAL_PACK_NO,TOTAL_WEIGHT,IC_CARD,SHIP_ID,CONTA_ID1,SEAL_NO1,CONTA_ID2,SEAL_NO2,INPUT_DATE,INPUT_ER,DECLARE_DATE,NOTE,CHK_MARK,PASS_MODE,PASS_TIME,KK_CODE,KK_PASS_WEIGHT,PASS_REASON) select BWS_EXAM_NO,EPORT_NO,EXAM_TYPE,CERT_TYPE,I_E_FLAG,BWS_NO,MASTER_CUSTOMS,TRADE_CODE,TRADE_NAME,TRANSIT_CODE,TRANSIT_NAME,ENTRUST_CODE,ENTRUST_NAME,VEHICLE_NT,TOTAL_PACK_NO,TOTAL_WEIGHT,IC_CARD,SHIP_ID,CONTA_ID1,SEAL_NO1,CONTA_ID2,SEAL_NO2,INPUT_DATE,INPUT_ER,DECLARE_DATE,NOTE,CHK_MARK,PASS_MODE,PASS_TIME,KK_CODE,KK_PASS_WEIGHT,PASS_REASON from BWS_EXAM_HEAD_INC_EXT where CMD_TYPE='I';

delete from BWS_EXAM_HEAD_GPTMP;

\timing
