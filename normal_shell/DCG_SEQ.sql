\echo ------------------DCG_SEQ----------------
select now();
\timing
insert into DCG_SEQ_GPTMP (CMD_TYPE,DCG_KEY) select CMD_TYPE,DCG_KEY from DCG_SEQ_INC_EXT;

delete from DCG_SEQ using DCG_SEQ_GPTMP where DCG_SEQ_GPTMP.DCG_KEY=DCG_SEQ.DCG_KEY ;

insert into DCG_SEQ(DCG_KEY,DCG_SEQ) select DCG_KEY,DCG_SEQ from DCG_SEQ_INC_EXT where CMD_TYPE='I';

delete from DCG_SEQ_GPTMP;

\timing
