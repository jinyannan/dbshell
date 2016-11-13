\echo -----------------------CORP_TYPE------------------------
select now();
\timing
delete from CORP_TYPE using CORP_TYPE_GPTMP_TODAY where CORP_TYPE.CORP_TYPE=CORP_TYPE_GPTMP_TODAY.CORP_TYPE ;
insert into CORP_TYPE (CORP_TYPE,MANUAL_TAG) select CORP_TYPE,MANUAL_TAG from CORP_TYPE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
