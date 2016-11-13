\echo ------------------CDL_EDI_MESS----------------
select now();
\timing
insert into CDL_EDI_MESS_GPTMP (CMD_TYPE,MESS_CODE) select CMD_TYPE,MESS_CODE from CDL_EDI_MESS_INC_EXT;

delete from CDL_EDI_MESS using CDL_EDI_MESS_GPTMP where CDL_EDI_MESS_GPTMP.MESS_CODE=CDL_EDI_MESS.MESS_CODE ;

insert into CDL_EDI_MESS(MESS_CODE,MESS_LEVEL,MESS) select MESS_CODE,MESS_LEVEL,MESS from CDL_EDI_MESS_INC_EXT where CMD_TYPE='I';

delete from CDL_EDI_MESS_GPTMP;

\timing
