\echo ------------------BCK_SEQ----------------
select now();
\timing
insert into BCK_SEQ_GPTMP (CMD_TYPE,BCK_KEY) select CMD_TYPE,BCK_KEY from BCK_SEQ_INC_EXT;

delete from BCK_SEQ using BCK_SEQ_GPTMP where BCK_SEQ_GPTMP.BCK_KEY=BCK_SEQ.BCK_KEY ;

insert into BCK_SEQ(BCK_KEY,BCK_SEQ) select BCK_KEY,BCK_SEQ from BCK_SEQ_INC_EXT where CMD_TYPE='I';

delete from BCK_SEQ_GPTMP;

\timing
