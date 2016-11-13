\echo -----------------------DCG_SEQ------------------------
select now();
\timing
delete from DCG_SEQ using DCG_SEQ_GPTMP_TODAY where DCG_SEQ.DCG_KEY=DCG_SEQ_GPTMP_TODAY.DCG_KEY ;
insert into DCG_SEQ (DCG_KEY,DCG_SEQ) select DCG_KEY,DCG_SEQ from DCG_SEQ_GPTMP_TODAY  where CMD_TYPE='I';
\timing
