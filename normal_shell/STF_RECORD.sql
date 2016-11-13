\echo ------------------STF_RECORD----------------
select now();
\timing
insert into STF_RECORD_GPTMP (CMD_TYPE,ENTRY_ID) select CMD_TYPE,ENTRY_ID from STF_RECORD_INC_EXT;

delete from STF_RECORD using STF_RECORD_GPTMP where STF_RECORD_GPTMP.ENTRY_ID=STF_RECORD.ENTRY_ID ;

insert into STF_RECORD(ENTRY_ID,STF_ID,I_E_FLAG,MANUAL_NO,STF_DATE1,STF_ER1,STF_DATE2,STF_ER2,ROOM_NO,NOTE_TEXT) select ENTRY_ID,STF_ID,I_E_FLAG,MANUAL_NO,STF_DATE1,STF_ER1,STF_DATE2,STF_ER2,ROOM_NO,NOTE_TEXT from STF_RECORD_INC_EXT where CMD_TYPE='I';

delete from STF_RECORD_GPTMP;

\timing
