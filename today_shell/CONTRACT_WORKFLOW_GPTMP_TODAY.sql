\echo ------------------CONTRACT_WORKFLOW----------------
select now();
\timing
delete from CONTRACT_WORKFLOW_GPTMP;
insert into CONTRACT_WORKFLOW_GPTMP (CMD_TYPE,MANUAL_NO, STEP_ID, PROC_DATE) select CMD_TYPE,MANUAL_NO, STEP_ID, PROC_DATE from CONTRACT_WORKFLOW_INC_EXT;
delete from CONTRACT_WORKFLOW_GPTMP_TODAY using CONTRACT_WORKFLOW_GPTMP where CONTRACT_WORKFLOW_GPTMP.MANUAL_NO=CONTRACT_WORKFLOW_GPTMP_TODAY.MANUAL_NO AND CONTRACT_WORKFLOW_GPTMP.STEP_ID=CONTRACT_WORKFLOW_GPTMP_TODAY.STEP_ID AND CONTRACT_WORKFLOW_GPTMP.PROC_DATE=CONTRACT_WORKFLOW_GPTMP_TODAY.PROC_DATE ;
insert into CONTRACT_WORKFLOW_GPTMP_TODAY (CMD_TYPE,MANUAL_NO,STEP_ID,PROC_DATE,PROC_ER,PROC_ID,PROC_POS,STATUS_STATE) select CMD_TYPE,MANUAL_NO,STEP_ID,PROC_DATE,PROC_ER,PROC_ID,PROC_POS,STATUS_STATE from CONTRACT_WORKFLOW_INC_EXT;
delete from CONTRACT_WORKFLOW_GPTMP;
\timing
