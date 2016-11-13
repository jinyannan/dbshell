\echo -----------------------BWS_SEQ------------------------
select now();
\timing
delete from BWS_SEQ using BWS_SEQ_GPTMP_TODAY where BWS_SEQ.BWS_KEY=BWS_SEQ_GPTMP_TODAY.BWS_KEY ;
insert into BWS_SEQ (BWS_KEY,BWS_SEQ) select BWS_KEY,BWS_SEQ from BWS_SEQ_GPTMP_TODAY  where CMD_TYPE='I';
\timing
