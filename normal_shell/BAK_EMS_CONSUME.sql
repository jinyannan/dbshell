\echo ------------------BAK_EMS_CONSUME----------------
select now();
\timing
insert into BAK_EMS_CONSUME_GPTMP (CMD_TYPE,EMS_NO, EXG_NO, EXG_VERSION, IMG_NO, MODIFY_TIMES) select CMD_TYPE,EMS_NO, EXG_NO, EXG_VERSION, IMG_NO, MODIFY_TIMES from BAK_EMS_CONSUME_INC_EXT;

delete from BAK_EMS_CONSUME using BAK_EMS_CONSUME_GPTMP where BAK_EMS_CONSUME_GPTMP.EMS_NO=BAK_EMS_CONSUME.EMS_NO AND BAK_EMS_CONSUME_GPTMP.EXG_NO=BAK_EMS_CONSUME.EXG_NO AND BAK_EMS_CONSUME_GPTMP.EXG_VERSION=BAK_EMS_CONSUME.EXG_VERSION AND BAK_EMS_CONSUME_GPTMP.IMG_NO=BAK_EMS_CONSUME.IMG_NO AND BAK_EMS_CONSUME_GPTMP.MODIFY_TIMES=BAK_EMS_CONSUME.MODIFY_TIMES ;

insert into BAK_EMS_CONSUME(EMS_NO,EXG_NO,EXG_VERSION,IMG_NO,MODIFY_TIMES,DEC_CM,DEC_DM,OTHER_CM,OTHER_DM,CM_MARK,PRODUCT_MARK,PRODUCT_TYPE,MODIFY_MARK,CONTROL_MARK,NOTE,ETL_MARK) select EMS_NO,EXG_NO,EXG_VERSION,IMG_NO,MODIFY_TIMES,DEC_CM,DEC_DM,OTHER_CM,OTHER_DM,CM_MARK,PRODUCT_MARK,PRODUCT_TYPE,MODIFY_MARK,CONTROL_MARK,NOTE,ETL_MARK from BAK_EMS_CONSUME_INC_EXT where CMD_TYPE='I';

delete from BAK_EMS_CONSUME_GPTMP;

\timing
