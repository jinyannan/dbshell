\echo ------------------EGS_WORKFLOW----------------
select now();
\timing
delete from EGS_WORKFLOW_GPTMP;
insert into EGS_WORKFLOW_GPTMP (CMD_TYPE,EGS_NO, STEP_ID, CREATE_DATE) select CMD_TYPE,EGS_NO, STEP_ID, CREATE_DATE from EGS_WORKFLOW_INC_EXT;
delete from EGS_WORKFLOW_GPTMP_TODAY using EGS_WORKFLOW_GPTMP where EGS_WORKFLOW_GPTMP.EGS_NO=EGS_WORKFLOW_GPTMP_TODAY.EGS_NO AND EGS_WORKFLOW_GPTMP.STEP_ID=EGS_WORKFLOW_GPTMP_TODAY.STEP_ID AND EGS_WORKFLOW_GPTMP.CREATE_DATE=EGS_WORKFLOW_GPTMP_TODAY.CREATE_DATE ;
insert into EGS_WORKFLOW_GPTMP_TODAY (CMD_TYPE,EGS_NO,EGS_TYPE,STEP_ID,CREATE_DATE,PROC_ER,MASTER_CUSTOMS,PROC_RESULT,NOTE) select CMD_TYPE,EGS_NO,EGS_TYPE,STEP_ID,CREATE_DATE,PROC_ER,MASTER_CUSTOMS,PROC_RESULT,NOTE from EGS_WORKFLOW_INC_EXT;
delete from EGS_WORKFLOW_GPTMP;
\timing
