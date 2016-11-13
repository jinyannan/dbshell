\echo ------------------BCK_SEQ----------------
select now();
\timing
delete from BCK_SEQ_GPTMP;
insert into BCK_SEQ_GPTMP (CMD_TYPE,BCK_KEY) select CMD_TYPE,BCK_KEY from BCK_SEQ_INC_EXT;
delete from BCK_SEQ_GPTMP_TODAY using BCK_SEQ_GPTMP where BCK_SEQ_GPTMP.BCK_KEY=BCK_SEQ_GPTMP_TODAY.BCK_KEY ;
insert into BCK_SEQ_GPTMP_TODAY (CMD_TYPE,BCK_KEY,BCK_SEQ) select CMD_TYPE,BCK_KEY,BCK_SEQ from BCK_SEQ_INC_EXT;
delete from BCK_SEQ_GPTMP;
\timing
