\echo ------------------TEMP_DB----------------
select now();
\timing
insert into TEMP_DB_GPTMP (CMD_TYPE,PRE_NO, PROCESS_STEP) select CMD_TYPE,PRE_NO, PROCESS_STEP from TEMP_DB_INC_EXT;

delete from TEMP_DB using TEMP_DB_GPTMP where TEMP_DB_GPTMP.PRE_NO=TEMP_DB.PRE_NO AND TEMP_DB_GPTMP.PROCESS_STEP=TEMP_DB.PROCESS_STEP ;

insert into TEMP_DB(PRE_NO,PROCESS_STEP) select PRE_NO,PROCESS_STEP from TEMP_DB_INC_EXT where CMD_TYPE='I';

delete from TEMP_DB_GPTMP;

\timing
