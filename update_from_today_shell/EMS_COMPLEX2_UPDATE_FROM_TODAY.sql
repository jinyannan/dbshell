\echo -----------------------EMS_COMPLEX2------------------------
select now();
\timing
delete from EMS_COMPLEX2 using EMS_COMPLEX2_GPTMP_TODAY where EMS_COMPLEX2.ICODE_TS=EMS_COMPLEX2_GPTMP_TODAY.ICODE_TS AND EMS_COMPLEX2.ECODE_TS=EMS_COMPLEX2_GPTMP_TODAY.ECODE_TS ;
insert into EMS_COMPLEX2 (ICODE_TS,IG_NAME,IG_MODEL,ICLASSIFY,ECODE_TS,EG_NAME,EG_MODEL,ECLASSIFY,INPUT_DATE,LIMIT_TYPE,LIMIT_DESC,NOTE) select ICODE_TS,IG_NAME,IG_MODEL,ICLASSIFY,ECODE_TS,EG_NAME,EG_MODEL,ECLASSIFY,INPUT_DATE,LIMIT_TYPE,LIMIT_DESC,NOTE from EMS_COMPLEX2_GPTMP_TODAY  where CMD_TYPE='I';
\timing
