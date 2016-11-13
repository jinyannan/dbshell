\echo -----------------------CORP_HEAD------------------------
select now();
\timing
delete from CORP_HEAD using CORP_HEAD_GPTMP_TODAY where CORP_HEAD.FORM_ID=CORP_HEAD_GPTMP_TODAY.FORM_ID ;
insert into CORP_HEAD (FORM_ID,TABLE_ID,CORP_ID,INPUT_TIME,ER,CUSTOMS) select FORM_ID,TABLE_ID,CORP_ID,INPUT_TIME,ER,CUSTOMS from CORP_HEAD_GPTMP_TODAY  where CMD_TYPE='I';
\timing
