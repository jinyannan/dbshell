\echo -----------------------RSK_EXAM_LIST_CONTAINER------------------------
select now();
\timing
delete from RSK_EXAM_LIST_CONTAINER using RSK_EXAM_LIST_CONTAINER_GPTMP_TODAY where RSK_EXAM_LIST_CONTAINER.EXAM_REC_ID=RSK_EXAM_LIST_CONTAINER_GPTMP_TODAY.EXAM_REC_ID AND RSK_EXAM_LIST_CONTAINER.CONTAINER_ID=RSK_EXAM_LIST_CONTAINER_GPTMP_TODAY.CONTAINER_ID ;
insert into RSK_EXAM_LIST_CONTAINER (EXAM_REC_ID,C_NO,CONTAINER_ID,CONTAINER_ID_RESULT,NEW_SEAL_NO,SEAL_NO,SEAL_NO_RESULT,HOLLOW_AREA1,HOLLOW_AREA2,MANUAL_FLAG,CONTA_RESULT) select EXAM_REC_ID,C_NO,CONTAINER_ID,CONTAINER_ID_RESULT,NEW_SEAL_NO,SEAL_NO,SEAL_NO_RESULT,HOLLOW_AREA1,HOLLOW_AREA2,MANUAL_FLAG,CONTA_RESULT from RSK_EXAM_LIST_CONTAINER_GPTMP_TODAY  where CMD_TYPE='I';
\timing
