\echo -----------------------PRE_REL_ALC_WORK------------------------
select now();
\timing
delete from PRE_REL_ALC_WORK using PRE_REL_ALC_WORK_GPTMP_TODAY where PRE_REL_ALC_WORK.ENTRY_ID=PRE_REL_ALC_WORK_GPTMP_TODAY.ENTRY_ID ;
insert into PRE_REL_ALC_WORK (ENTRY_ID,CUSTOMS_CODE,I_E_PORT,D_DATE,REC_DATE,DECL_TYPE,AVR_FLAG,RSK_FLAG,REL_TYPE,TRAF_NAME,VOYAGE_NO,BILL_NO,LAST_STEP,PROC_FLAG,OP_DATE) select ENTRY_ID,CUSTOMS_CODE,I_E_PORT,D_DATE,REC_DATE,DECL_TYPE,AVR_FLAG,RSK_FLAG,REL_TYPE,TRAF_NAME,VOYAGE_NO,BILL_NO,LAST_STEP,PROC_FLAG,OP_DATE from PRE_REL_ALC_WORK_GPTMP_TODAY  where CMD_TYPE='I';
\timing
