\echo -----------------------CONTA------------------------
select now();
\timing
delete from CONTA using CONTA_GPTMP_TODAY where CONTA.FORM_ID=CONTA_GPTMP_TODAY.FORM_ID AND CONTA.CONTA_ID=CONTA_GPTMP_TODAY.CONTA_ID ;
insert into CONTA (FORM_ID,CONTA_ID,FORM_TYPE,I_E_FLAG,CONTA_MODEL,D_WEIGHT,SEAL_NO,SEAL_NUM,D_SHIP_ID,BUSINESS_SEAL_NO,CONTAINER_WT,CONTA_AMOUNT,WHOLE_FLAG,OUT_CHECKPOINT_TIME,OUT_AREA_ID,OUT_CHECKPOINT_NO,OUT_DRIVER_ID,OUT_REAL_WT,OUT_SHIP_ID,IN_CHECKPOINT_TIME,IN_AREA_ID,IN_CHECKPOINT_NO,IN_DRIVER_ID,IN_REAL_WT,IN_SHIP_ID,CHK_MARK,DIST_CHK_MARK,MANUAL_FLAG,CANCEL_FLAG,CANCEL_PERSON,CANCEL_DATETIME,RISK_FLAG,OPERATION_FLAG,OBLIGATE_FIELD_1,OBLIGATE_FIELD_2,NOTES) select FORM_ID,CONTA_ID,FORM_TYPE,I_E_FLAG,CONTA_MODEL,D_WEIGHT,SEAL_NO,SEAL_NUM,D_SHIP_ID,BUSINESS_SEAL_NO,CONTAINER_WT,CONTA_AMOUNT,WHOLE_FLAG,OUT_CHECKPOINT_TIME,OUT_AREA_ID,OUT_CHECKPOINT_NO,OUT_DRIVER_ID,OUT_REAL_WT,OUT_SHIP_ID,IN_CHECKPOINT_TIME,IN_AREA_ID,IN_CHECKPOINT_NO,IN_DRIVER_ID,IN_REAL_WT,IN_SHIP_ID,CHK_MARK,DIST_CHK_MARK,MANUAL_FLAG,CANCEL_FLAG,CANCEL_PERSON,CANCEL_DATETIME,RISK_FLAG,OPERATION_FLAG,OBLIGATE_FIELD_1,OBLIGATE_FIELD_2,NOTES from CONTA_GPTMP_TODAY  where CMD_TYPE='I';
\timing