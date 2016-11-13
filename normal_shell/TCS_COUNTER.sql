\echo ------------------TCS_COUNTER----------------
select now();
\timing
insert into TCS_COUNTER_GPTMP (CMD_TYPE,TCS_KEY) select CMD_TYPE,TCS_KEY from TCS_COUNTER_INC_EXT;

delete from TCS_COUNTER using TCS_COUNTER_GPTMP where TCS_COUNTER_GPTMP.TCS_KEY=TCS_COUNTER.TCS_KEY ;

insert into TCS_COUNTER(TCS_KEY,COUNTER) select TCS_KEY,COUNTER from TCS_COUNTER_INC_EXT where CMD_TYPE='I';

delete from TCS_COUNTER_GPTMP;

\timing
