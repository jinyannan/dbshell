\echo ------------------BWS_SEQ----------------
select now();
\timing
delete from BWS_SEQ_GPTMP;
insert into BWS_SEQ_GPTMP (CMD_TYPE,BWS_KEY) select CMD_TYPE,BWS_KEY from BWS_SEQ_INC_EXT;
delete from BWS_SEQ_GPTMP_TODAY using BWS_SEQ_GPTMP where BWS_SEQ_GPTMP.BWS_KEY=BWS_SEQ_GPTMP_TODAY.BWS_KEY ;
insert into BWS_SEQ_GPTMP_TODAY (CMD_TYPE,BWS_KEY,BWS_SEQ) select CMD_TYPE,BWS_KEY,BWS_SEQ from BWS_SEQ_INC_EXT;
delete from BWS_SEQ_GPTMP;
\timing
