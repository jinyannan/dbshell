\echo -----------------------REL_ALC_WORK------------------------
select now();
\timing
delete from REL_ALC_WORK using REL_ALC_WORK_GPTMP_TODAY where REL_ALC_WORK.ENTRY_ID=REL_ALC_WORK_GPTMP_TODAY.ENTRY_ID ;
insert into REL_ALC_WORK (ENTRY_ID,STEP_ID,REC_DATE,CUSTOMS_CODE,I_E_PORT,TRAF_NAME,VOYAGE_NO,BILL_NO,PROC_FLAG,OP_DATE,PASSED_FLAG) select ENTRY_ID,STEP_ID,REC_DATE,CUSTOMS_CODE,I_E_PORT,TRAF_NAME,VOYAGE_NO,BILL_NO,PROC_FLAG,OP_DATE,PASSED_FLAG from REL_ALC_WORK_GPTMP_TODAY  where CMD_TYPE='I';
\timing