\echo ------------------EXAM_CONTA_HEAD----------------
select now();
\timing
insert into EXAM_CONTA_HEAD_GPTMP (CMD_TYPE,EXAM_REC_ID) select CMD_TYPE,EXAM_REC_ID from EXAM_CONTA_HEAD_INC_EXT;

delete from EXAM_CONTA_HEAD using EXAM_CONTA_HEAD_GPTMP where EXAM_CONTA_HEAD_GPTMP.EXAM_REC_ID=EXAM_CONTA_HEAD.EXAM_REC_ID ;

insert into EXAM_CONTA_HEAD(EXAM_REC_ID,ENTRY_ID,RSK_NO,CREATE_ER,CREATE_TIME,EXAM_B_TIME,EXAM_E_TIME,EXAM_ER1,EXAM_ER2,RESULT_ER,RESULT_TIME,PRINT_ER,PRINT_TIME,END_TYPE,END_ER,END_TIME,END_REASON,NOTE_S) select EXAM_REC_ID,ENTRY_ID,RSK_NO,CREATE_ER,CREATE_TIME,EXAM_B_TIME,EXAM_E_TIME,EXAM_ER1,EXAM_ER2,RESULT_ER,RESULT_TIME,PRINT_ER,PRINT_TIME,END_TYPE,END_ER,END_TIME,END_REASON,NOTE_S from EXAM_CONTA_HEAD_INC_EXT where CMD_TYPE='I';

delete from EXAM_CONTA_HEAD_GPTMP;

\timing
