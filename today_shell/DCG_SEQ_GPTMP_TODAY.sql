\echo ------------------DCG_SEQ----------------
select now();
\timing
delete from DCG_SEQ_GPTMP;
insert into DCG_SEQ_GPTMP (CMD_TYPE,DCG_KEY) select CMD_TYPE,DCG_KEY from DCG_SEQ_INC_EXT;
delete from DCG_SEQ_GPTMP_TODAY using DCG_SEQ_GPTMP where DCG_SEQ_GPTMP.DCG_KEY=DCG_SEQ_GPTMP_TODAY.DCG_KEY ;
insert into DCG_SEQ_GPTMP_TODAY (CMD_TYPE,DCG_KEY,DCG_SEQ) select CMD_TYPE,DCG_KEY,DCG_SEQ from DCG_SEQ_INC_EXT;
delete from DCG_SEQ_GPTMP;
\timing
