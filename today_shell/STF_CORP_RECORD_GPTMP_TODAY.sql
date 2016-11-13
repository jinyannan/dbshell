\echo ------------------STF_CORP_RECORD----------------
select now();
\timing
delete from STF_CORP_RECORD_GPTMP;
insert into STF_CORP_RECORD_GPTMP (CMD_TYPE,ENTRY_ID) select CMD_TYPE,ENTRY_ID from STF_CORP_RECORD_INC_EXT;
delete from STF_CORP_RECORD_GPTMP_TODAY using STF_CORP_RECORD_GPTMP where STF_CORP_RECORD_GPTMP.ENTRY_ID=STF_CORP_RECORD_GPTMP_TODAY.ENTRY_ID ;
insert into STF_CORP_RECORD_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,STF_CORP_ID,MANUAL_CORP_NO,I_E_FLAG,UNIT_CODE,STF_CORP_DATE1,STF_CORP_ER1,STF_CORP_DATE2,STF_CORP_ER2,ROOM_CORP_NO,NOTE_TEXT) select CMD_TYPE,ENTRY_ID,STF_CORP_ID,MANUAL_CORP_NO,I_E_FLAG,UNIT_CODE,STF_CORP_DATE1,STF_CORP_ER1,STF_CORP_DATE2,STF_CORP_ER2,ROOM_CORP_NO,NOTE_TEXT from STF_CORP_RECORD_INC_EXT;
delete from STF_CORP_RECORD_GPTMP;
\timing
