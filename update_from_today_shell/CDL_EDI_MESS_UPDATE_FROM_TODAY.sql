\echo -----------------------CDL_EDI_MESS------------------------
select now();
\timing
delete from CDL_EDI_MESS using CDL_EDI_MESS_GPTMP_TODAY where CDL_EDI_MESS.MESS_CODE=CDL_EDI_MESS_GPTMP_TODAY.MESS_CODE ;
insert into CDL_EDI_MESS (MESS_CODE,MESS_LEVEL,MESS) select MESS_CODE,MESS_LEVEL,MESS from CDL_EDI_MESS_GPTMP_TODAY  where CMD_TYPE='I';
\timing
