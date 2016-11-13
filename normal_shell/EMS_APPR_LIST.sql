\echo ------------------EMS_APPR_LIST----------------
select now();
\timing
insert into EMS_APPR_LIST_GPTMP (CMD_TYPE,APPR_NO, G_TYPE, G_NO, RECEIVE_TIMES) select CMD_TYPE,APPR_NO, G_TYPE, G_NO, RECEIVE_TIMES from EMS_APPR_LIST_INC_EXT;

delete from EMS_APPR_LIST using EMS_APPR_LIST_GPTMP where EMS_APPR_LIST_GPTMP.APPR_NO=EMS_APPR_LIST.APPR_NO AND EMS_APPR_LIST_GPTMP.G_TYPE=EMS_APPR_LIST.G_TYPE AND EMS_APPR_LIST_GPTMP.G_NO=EMS_APPR_LIST.G_NO AND EMS_APPR_LIST_GPTMP.RECEIVE_TIMES=EMS_APPR_LIST.RECEIVE_TIMES ;

insert into EMS_APPR_LIST(APPR_NO,G_TYPE,G_NO,RECEIVE_TIMES,CODE_TS,G_NAME,G_MODEL,UNIT,UNIT_PRICE,QTY,AMT,ORIGIN_COUNTRY,UNIT_1,FACTOR_1,NOTE,CURR,MODIFY_MARK) select APPR_NO,G_TYPE,G_NO,RECEIVE_TIMES,CODE_TS,G_NAME,G_MODEL,UNIT,UNIT_PRICE,QTY,AMT,ORIGIN_COUNTRY,UNIT_1,FACTOR_1,NOTE,CURR,MODIFY_MARK from EMS_APPR_LIST_INC_EXT where CMD_TYPE='I';

delete from EMS_APPR_LIST_GPTMP;

\timing
