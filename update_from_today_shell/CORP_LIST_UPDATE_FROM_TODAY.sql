\echo -----------------------CORP_LIST------------------------
select now();
\timing
delete from CORP_LIST using CORP_LIST_GPTMP_TODAY where CORP_LIST.FORM_ID=CORP_LIST_GPTMP_TODAY.FORM_ID AND CORP_LIST.FIELD_ID=CORP_LIST_GPTMP_TODAY.FIELD_ID ;
insert into CORP_LIST (FORM_ID,FIELD_ID,TX) select FORM_ID,FIELD_ID,TX from CORP_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
