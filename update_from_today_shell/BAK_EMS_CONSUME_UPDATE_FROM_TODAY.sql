\echo -----------------------BAK_EMS_CONSUME------------------------
select now();
\timing
delete from BAK_EMS_CONSUME using BAK_EMS_CONSUME_GPTMP_TODAY where BAK_EMS_CONSUME.EMS_NO=BAK_EMS_CONSUME_GPTMP_TODAY.EMS_NO AND BAK_EMS_CONSUME.EXG_NO=BAK_EMS_CONSUME_GPTMP_TODAY.EXG_NO AND BAK_EMS_CONSUME.EXG_VERSION=BAK_EMS_CONSUME_GPTMP_TODAY.EXG_VERSION AND BAK_EMS_CONSUME.IMG_NO=BAK_EMS_CONSUME_GPTMP_TODAY.IMG_NO AND BAK_EMS_CONSUME.MODIFY_TIMES=BAK_EMS_CONSUME_GPTMP_TODAY.MODIFY_TIMES ;
insert into BAK_EMS_CONSUME (EMS_NO,EXG_NO,EXG_VERSION,IMG_NO,MODIFY_TIMES,DEC_CM,DEC_DM,OTHER_CM,OTHER_DM,CM_MARK,PRODUCT_MARK,PRODUCT_TYPE,MODIFY_MARK,CONTROL_MARK,NOTE,ETL_MARK) select EMS_NO,EXG_NO,EXG_VERSION,IMG_NO,MODIFY_TIMES,DEC_CM,DEC_DM,OTHER_CM,OTHER_DM,CM_MARK,PRODUCT_MARK,PRODUCT_TYPE,MODIFY_MARK,CONTROL_MARK,NOTE,ETL_MARK from BAK_EMS_CONSUME_GPTMP_TODAY  where CMD_TYPE='I';
\timing
