\echo ------------------CDL_CONTAINER----------------
select now();
\timing
insert into CDL_CONTAINER_GPTMP (CMD_TYPE,LIST_NO, CONTAINER_ID) select CMD_TYPE,LIST_NO, CONTAINER_ID from CDL_CONTAINER_INC_EXT;

delete from CDL_CONTAINER using CDL_CONTAINER_GPTMP where CDL_CONTAINER_GPTMP.LIST_NO=CDL_CONTAINER.LIST_NO AND CDL_CONTAINER_GPTMP.CONTAINER_ID=CDL_CONTAINER.CONTAINER_ID ;

insert into CDL_CONTAINER(LIST_NO,CONTAINER_ID,CONTAINER_WT) select LIST_NO,CONTAINER_ID,CONTAINER_WT from CDL_CONTAINER_INC_EXT where CMD_TYPE='I';

delete from CDL_CONTAINER_GPTMP;

\timing