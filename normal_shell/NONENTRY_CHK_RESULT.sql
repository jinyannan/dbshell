\echo ------------------NONENTRY_CHK_RESULT----------------
select now();
\timing
insert into NONENTRY_CHK_RESULT_GPTMP (CMD_TYPE,RSK_NO) select CMD_TYPE,RSK_NO from NONENTRY_CHK_RESULT_INC_EXT;

delete from NONENTRY_CHK_RESULT using NONENTRY_CHK_RESULT_GPTMP where NONENTRY_CHK_RESULT_GPTMP.RSK_NO=NONENTRY_CHK_RESULT.RSK_NO ;

insert into NONENTRY_CHK_RESULT(RSK_NO,I_E_FLAG,TRAF_MODE,I_E_DATE,TRAF_NAME,EXAM_MODE_CODE,VOYAGE_NO,BILL_NO,FORM_ID,RSK_REQUEST_STR,EXAM_ADDR,EXAM_ADDR_CODE,EXAM_RESULT,EXAM_PROC_IDEA,ALC_OP,ALC_DATE,CHK_ER1,CHK_ER2,EXAM_PROC_TIME,CHK_FLAG,NOTE_S) select RSK_NO,I_E_FLAG,TRAF_MODE,I_E_DATE,TRAF_NAME,EXAM_MODE_CODE,VOYAGE_NO,BILL_NO,FORM_ID,RSK_REQUEST_STR,EXAM_ADDR,EXAM_ADDR_CODE,EXAM_RESULT,EXAM_PROC_IDEA,ALC_OP,ALC_DATE,CHK_ER1,CHK_ER2,EXAM_PROC_TIME,CHK_FLAG,NOTE_S from NONENTRY_CHK_RESULT_INC_EXT where CMD_TYPE='I';

delete from NONENTRY_CHK_RESULT_GPTMP;

\timing
