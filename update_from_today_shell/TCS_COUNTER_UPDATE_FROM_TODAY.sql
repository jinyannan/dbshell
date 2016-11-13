\echo -----------------------TCS_COUNTER------------------------
select now();
\timing
delete from TCS_COUNTER using TCS_COUNTER_GPTMP_TODAY where TCS_COUNTER.TCS_KEY=TCS_COUNTER_GPTMP_TODAY.TCS_KEY ;
insert into TCS_COUNTER (TCS_KEY,COUNTER) select TCS_KEY,COUNTER from TCS_COUNTER_GPTMP_TODAY  where CMD_TYPE='I';
\timing
