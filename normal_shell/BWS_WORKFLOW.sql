\echo ------------------BWS_WORKFLOW----------------
select now();
\timing
insert into BWS_WORKFLOW_GPTMP (CMD_TYPE,BWS_ID, STEP_ID, CREATE_DATE) select CMD_TYPE,BWS_ID, STEP_ID, CREATE_DATE from BWS_WORKFLOW_INC_EXT;

delete from BWS_WORKFLOW using BWS_WORKFLOW_GPTMP where BWS_WORKFLOW_GPTMP.BWS_ID=BWS_WORKFLOW.BWS_ID AND BWS_WORKFLOW_GPTMP.STEP_ID=BWS_WORKFLOW.STEP_ID AND BWS_WORKFLOW_GPTMP.CREATE_DATE=BWS_WORKFLOW.CREATE_DATE ;

insert into BWS_WORKFLOW(BWS_ID,STEP_ID,CREATE_DATE,PROC_ER,PROC_ID,PROC_POS,PROC_RESULT) select BWS_ID,STEP_ID,CREATE_DATE,PROC_ER,PROC_ID,PROC_POS,PROC_RESULT from BWS_WORKFLOW_INC_EXT where CMD_TYPE='I';

delete from BWS_WORKFLOW_GPTMP;

\timing
