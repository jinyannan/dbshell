\echo ------------------TCS_COUNTER----------------
select now();
\timing
delete from TCS_COUNTER_GPTMP;
insert into TCS_COUNTER_GPTMP (CMD_TYPE,TCS_KEY) select CMD_TYPE,TCS_KEY from TCS_COUNTER_INC_EXT;
delete from TCS_COUNTER_GPTMP_TODAY using TCS_COUNTER_GPTMP where TCS_COUNTER_GPTMP.TCS_KEY=TCS_COUNTER_GPTMP_TODAY.TCS_KEY ;
insert into TCS_COUNTER_GPTMP_TODAY (CMD_TYPE,TCS_KEY,COUNTER) select CMD_TYPE,TCS_KEY,COUNTER from TCS_COUNTER_INC_EXT;
delete from TCS_COUNTER_GPTMP;
\timing