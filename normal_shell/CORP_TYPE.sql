\echo ------------------CORP_TYPE----------------
select now();
\timing
insert into CORP_TYPE_GPTMP (CMD_TYPE,CORP_TYPE) select CMD_TYPE,CORP_TYPE from CORP_TYPE_INC_EXT;

delete from CORP_TYPE using CORP_TYPE_GPTMP where CORP_TYPE_GPTMP.CORP_TYPE=CORP_TYPE.CORP_TYPE ;

insert into CORP_TYPE(CORP_TYPE,MANUAL_TAG) select CORP_TYPE,MANUAL_TAG from CORP_TYPE_INC_EXT where CMD_TYPE='I';

delete from CORP_TYPE_GPTMP;

\timing
