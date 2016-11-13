\echo ------------------CNS_COUNTER_TABLE----------------
select now();
\timing
insert into CNS_COUNTER_TABLE_GPTMP (CMD_TYPE,CUSTOMS_CODE) select CMD_TYPE,CUSTOMS_CODE from CNS_COUNTER_TABLE_INC_EXT;

delete from CNS_COUNTER_TABLE using CNS_COUNTER_TABLE_GPTMP where CNS_COUNTER_TABLE_GPTMP.CUSTOMS_CODE=CNS_COUNTER_TABLE.CUSTOMS_CODE ;

insert into CNS_COUNTER_TABLE(CUSTOMS_CODE,COUNTER) select CUSTOMS_CODE,COUNTER from CNS_COUNTER_TABLE_INC_EXT where CMD_TYPE='I';

delete from CNS_COUNTER_TABLE_GPTMP;

\timing
