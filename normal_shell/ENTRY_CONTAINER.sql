\echo ------------------ENTRY_CONTAINER----------------
select now();
\timing
insert into ENTRY_CONTAINER_GPTMP (CMD_TYPE,ENTRY_ID, CONTAINER_ID) select CMD_TYPE,ENTRY_ID, CONTAINER_ID from ENTRY_CONTAINER_INC_EXT;

delete from ENTRY_CONTAINER using ENTRY_CONTAINER_GPTMP where ENTRY_CONTAINER_GPTMP.ENTRY_ID=ENTRY_CONTAINER.ENTRY_ID AND ENTRY_CONTAINER_GPTMP.CONTAINER_ID=ENTRY_CONTAINER.CONTAINER_ID ;

insert into ENTRY_CONTAINER(ENTRY_ID,CONTAINER_ID,CONTAINER_WT) select ENTRY_ID,CONTAINER_ID,CONTAINER_WT from ENTRY_CONTAINER_INC_EXT where CMD_TYPE='I';

delete from ENTRY_CONTAINER_GPTMP;

\timing
