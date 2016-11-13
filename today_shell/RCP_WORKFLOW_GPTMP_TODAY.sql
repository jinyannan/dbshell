\echo ------------------RCP_WORKFLOW----------------
select now();
\timing
delete from RCP_WORKFLOW_GPTMP;
insert into RCP_WORKFLOW_GPTMP (CMD_TYPE,LEVYNO, TRANSFER_NUM, PROCESS_STATUS, PROCESS_DATE) select CMD_TYPE,LEVYNO, TRANSFER_NUM, PROCESS_STATUS, PROCESS_DATE from RCP_WORKFLOW_INC_EXT;
delete from RCP_WORKFLOW_GPTMP_TODAY using RCP_WORKFLOW_GPTMP where RCP_WORKFLOW_GPTMP.LEVYNO=RCP_WORKFLOW_GPTMP_TODAY.LEVYNO AND RCP_WORKFLOW_GPTMP.TRANSFER_NUM=RCP_WORKFLOW_GPTMP_TODAY.TRANSFER_NUM AND RCP_WORKFLOW_GPTMP.PROCESS_STATUS=RCP_WORKFLOW_GPTMP_TODAY.PROCESS_STATUS AND RCP_WORKFLOW_GPTMP.PROCESS_DATE=RCP_WORKFLOW_GPTMP_TODAY.PROCESS_DATE ;
insert into RCP_WORKFLOW_GPTMP_TODAY (CMD_TYPE,LEVYNO,TRANSFER_NUM,PROCESS_STATUS,PROCESS_DATE,ENTRY_ID,NOTE) select CMD_TYPE,LEVYNO,TRANSFER_NUM,PROCESS_STATUS,PROCESS_DATE,ENTRY_ID,NOTE from RCP_WORKFLOW_INC_EXT;
delete from RCP_WORKFLOW_GPTMP;
\timing