\echo ------------------CORP_LIST----------------
select now();
\timing
insert into CORP_LIST_GPTMP (CMD_TYPE,FORM_ID, FIELD_ID) select CMD_TYPE,FORM_ID, FIELD_ID from CORP_LIST_INC_EXT;

delete from CORP_LIST using CORP_LIST_GPTMP where CORP_LIST_GPTMP.FORM_ID=CORP_LIST.FORM_ID AND CORP_LIST_GPTMP.FIELD_ID=CORP_LIST.FIELD_ID ;

insert into CORP_LIST(FORM_ID,FIELD_ID,TX) select FORM_ID,FIELD_ID,TX from CORP_LIST_INC_EXT where CMD_TYPE='I';

delete from CORP_LIST_GPTMP;

\timing
