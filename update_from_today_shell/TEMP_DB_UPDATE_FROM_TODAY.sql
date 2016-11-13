\echo -----------------------TEMP_DB------------------------
select now();
\timing
delete from TEMP_DB using TEMP_DB_GPTMP_TODAY where TEMP_DB.PRE_NO=TEMP_DB_GPTMP_TODAY.PRE_NO AND TEMP_DB.PROCESS_STEP=TEMP_DB_GPTMP_TODAY.PROCESS_STEP ;
insert into TEMP_DB (PRE_NO,PROCESS_STEP) select PRE_NO,PROCESS_STEP from TEMP_DB_GPTMP_TODAY  where CMD_TYPE='I';
\timing
