\echo ------------------TMP_EMS_CONSUME----------------
select now();
\timing
delete from TMP_EMS_CONSUME_GPTMP;
insert into TMP_EMS_CONSUME_GPTMP (CMD_TYPE,EMS_NO, EXG_NO, EXG_VERSION, IMG_NO) select CMD_TYPE,EMS_NO, EXG_NO, EXG_VERSION, IMG_NO from TMP_EMS_CONSUME_INC_EXT;
delete from TMP_EMS_CONSUME_GPTMP_TODAY using TMP_EMS_CONSUME_GPTMP where TMP_EMS_CONSUME_GPTMP.EMS_NO=TMP_EMS_CONSUME_GPTMP_TODAY.EMS_NO AND TMP_EMS_CONSUME_GPTMP.EXG_NO=TMP_EMS_CONSUME_GPTMP_TODAY.EXG_NO AND TMP_EMS_CONSUME_GPTMP.EXG_VERSION=TMP_EMS_CONSUME_GPTMP_TODAY.EXG_VERSION AND TMP_EMS_CONSUME_GPTMP.IMG_NO=TMP_EMS_CONSUME_GPTMP_TODAY.IMG_NO ;
insert into TMP_EMS_CONSUME_GPTMP_TODAY (CMD_TYPE,EMS_NO,EXG_NO,EXG_VERSION,IMG_NO,MODIFY_TIMES,DEC_CM,DEC_DM,OTHER_CM,OTHER_DM,CM_MARK,PRODUCT_MARK,PRODUCT_TYPE,MODIFY_MARK,CONTROL_MARK,NOTE,ETL_MARK) select CMD_TYPE,EMS_NO,EXG_NO,EXG_VERSION,IMG_NO,MODIFY_TIMES,DEC_CM,DEC_DM,OTHER_CM,OTHER_DM,CM_MARK,PRODUCT_MARK,PRODUCT_TYPE,MODIFY_MARK,CONTROL_MARK,NOTE,ETL_MARK from TMP_EMS_CONSUME_INC_EXT;
delete from TMP_EMS_CONSUME_GPTMP;
\timing
