\echo ------------------EMS_VAR----------------
select now();
\timing
insert into EMS_VAR_GPTMP (CMD_TYPE,VAR_TYPE, VAR_ID, VAR_SUB_ID, CUSTOMS_CODE) select CMD_TYPE,VAR_TYPE, VAR_ID, VAR_SUB_ID, CUSTOMS_CODE from EMS_VAR_INC_EXT;

delete from EMS_VAR using EMS_VAR_GPTMP where EMS_VAR_GPTMP.VAR_TYPE=EMS_VAR.VAR_TYPE AND EMS_VAR_GPTMP.VAR_ID=EMS_VAR.VAR_ID AND EMS_VAR_GPTMP.VAR_SUB_ID=EMS_VAR.VAR_SUB_ID AND EMS_VAR_GPTMP.CUSTOMS_CODE=EMS_VAR.CUSTOMS_CODE ;

insert into EMS_VAR(VAR_TYPE,VAR_ID,VAR_SUB_ID,CUSTOMS_CODE,VAR_VALUE,VAR_VALUE1,VAR_VALUE2,VAR_VALUE3,VAR_DESC,MODIFY_TIME,VAR_ENABLED) select VAR_TYPE,VAR_ID,VAR_SUB_ID,CUSTOMS_CODE,VAR_VALUE,VAR_VALUE1,VAR_VALUE2,VAR_VALUE3,VAR_DESC,MODIFY_TIME,VAR_ENABLED from EMS_VAR_INC_EXT where CMD_TYPE='I';

delete from EMS_VAR_GPTMP;

\timing
