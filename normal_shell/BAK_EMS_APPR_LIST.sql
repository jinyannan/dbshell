\echo ------------------BAK_EMS_APPR_LIST----------------
select now();
\timing
insert into BAK_EMS_APPR_LIST_GPTMP (CMD_TYPE,APPR_NO, G_TYPE, G_NO, RECEIVE_TIMES) select CMD_TYPE,APPR_NO, G_TYPE, G_NO, RECEIVE_TIMES from BAK_EMS_APPR_LIST_INC_EXT;

delete from BAK_EMS_APPR_LIST using BAK_EMS_APPR_LIST_GPTMP where BAK_EMS_APPR_LIST_GPTMP.APPR_NO=BAK_EMS_APPR_LIST.APPR_NO AND BAK_EMS_APPR_LIST_GPTMP.G_TYPE=BAK_EMS_APPR_LIST.G_TYPE AND BAK_EMS_APPR_LIST_GPTMP.G_NO=BAK_EMS_APPR_LIST.G_NO AND BAK_EMS_APPR_LIST_GPTMP.RECEIVE_TIMES=BAK_EMS_APPR_LIST.RECEIVE_TIMES ;

insert into BAK_EMS_APPR_LIST(APPR_NO,G_TYPE,G_NO,RECEIVE_TIMES,CODE_TS,G_NAME,G_MODEL,UNIT,UNIT_PRICE,QTY,AMT,ORIGIN_COUNTRY,UNIT_1,FACTOR_1,NOTE,CURR,MODIFY_MARK) select APPR_NO,G_TYPE,G_NO,RECEIVE_TIMES,CODE_TS,G_NAME,G_MODEL,UNIT,UNIT_PRICE,QTY,AMT,ORIGIN_COUNTRY,UNIT_1,FACTOR_1,NOTE,CURR,MODIFY_MARK from BAK_EMS_APPR_LIST_INC_EXT where CMD_TYPE='I';

delete from BAK_EMS_APPR_LIST_GPTMP;

\timing
