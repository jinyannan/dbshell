\echo ------------------CORP_HEAD----------------
select now();
\timing
insert into CORP_HEAD_GPTMP (CMD_TYPE,FORM_ID) select CMD_TYPE,FORM_ID from CORP_HEAD_INC_EXT;

delete from CORP_HEAD using CORP_HEAD_GPTMP where CORP_HEAD_GPTMP.FORM_ID=CORP_HEAD.FORM_ID ;

insert into CORP_HEAD(FORM_ID,TABLE_ID,CORP_ID,INPUT_TIME,ER,CUSTOMS) select FORM_ID,TABLE_ID,CORP_ID,INPUT_TIME,ER,CUSTOMS from CORP_HEAD_INC_EXT where CMD_TYPE='I';

delete from CORP_HEAD_GPTMP;

\timing
