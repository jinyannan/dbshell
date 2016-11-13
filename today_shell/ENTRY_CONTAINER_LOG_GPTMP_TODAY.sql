\echo ------------------ENTRY_CONTAINER_LOG----------------
select now();
\timing
delete from ENTRY_CONTAINER_LOG_GPTMP;
insert into ENTRY_CONTAINER_LOG_GPTMP (CMD_TYPE,ENTRY_ID, CONTAINER_ID, OP_TIME) select CMD_TYPE,ENTRY_ID, CONTAINER_ID, OP_TIME from ENTRY_CONTAINER_LOG_INC_EXT;
delete from ENTRY_CONTAINER_LOG_GPTMP_TODAY using ENTRY_CONTAINER_LOG_GPTMP where ENTRY_CONTAINER_LOG_GPTMP.ENTRY_ID=ENTRY_CONTAINER_LOG_GPTMP_TODAY.ENTRY_ID AND ENTRY_CONTAINER_LOG_GPTMP.CONTAINER_ID=ENTRY_CONTAINER_LOG_GPTMP_TODAY.CONTAINER_ID AND ENTRY_CONTAINER_LOG_GPTMP.OP_TIME=ENTRY_CONTAINER_LOG_GPTMP_TODAY.OP_TIME ;
insert into ENTRY_CONTAINER_LOG_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,CONTAINER_ID,CONTAINER_WT,OP_TIME) select CMD_TYPE,ENTRY_ID,CONTAINER_ID,CONTAINER_WT,OP_TIME from ENTRY_CONTAINER_LOG_INC_EXT;
delete from ENTRY_CONTAINER_LOG_GPTMP;
\timing
