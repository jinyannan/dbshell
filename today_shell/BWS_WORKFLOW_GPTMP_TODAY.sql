\echo ------------------BWS_WORKFLOW----------------
select now();
\timing
delete from BWS_WORKFLOW_GPTMP;
insert into BWS_WORKFLOW_GPTMP (CMD_TYPE,BWS_ID, STEP_ID, CREATE_DATE) select CMD_TYPE,BWS_ID, STEP_ID, CREATE_DATE from BWS_WORKFLOW_INC_EXT;
delete from BWS_WORKFLOW_GPTMP_TODAY using BWS_WORKFLOW_GPTMP where BWS_WORKFLOW_GPTMP.BWS_ID=BWS_WORKFLOW_GPTMP_TODAY.BWS_ID AND BWS_WORKFLOW_GPTMP.STEP_ID=BWS_WORKFLOW_GPTMP_TODAY.STEP_ID AND BWS_WORKFLOW_GPTMP.CREATE_DATE=BWS_WORKFLOW_GPTMP_TODAY.CREATE_DATE ;
insert into BWS_WORKFLOW_GPTMP_TODAY (CMD_TYPE,BWS_ID,STEP_ID,CREATE_DATE,PROC_ER,PROC_ID,PROC_POS,PROC_RESULT) select CMD_TYPE,BWS_ID,STEP_ID,CREATE_DATE,PROC_ER,PROC_ID,PROC_POS,PROC_RESULT from BWS_WORKFLOW_INC_EXT;
delete from BWS_WORKFLOW_GPTMP;
\timing
