\echo ------------------BWS_SEQ----------------
select now();
\timing
insert into BWS_SEQ_GPTMP (CMD_TYPE,BWS_KEY) select CMD_TYPE,BWS_KEY from BWS_SEQ_INC_EXT;

delete from BWS_SEQ using BWS_SEQ_GPTMP where BWS_SEQ_GPTMP.BWS_KEY=BWS_SEQ.BWS_KEY ;

insert into BWS_SEQ(BWS_KEY,BWS_SEQ) select BWS_KEY,BWS_SEQ from BWS_SEQ_INC_EXT where CMD_TYPE='I';

delete from BWS_SEQ_GPTMP;

\timing
