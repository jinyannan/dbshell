\echo -----------------------BCK_SEQ------------------------
select now();
\timing
delete from BCK_SEQ using BCK_SEQ_GPTMP_TODAY where BCK_SEQ.BCK_KEY=BCK_SEQ_GPTMP_TODAY.BCK_KEY ;
insert into BCK_SEQ (BCK_KEY,BCK_SEQ) select BCK_KEY,BCK_SEQ from BCK_SEQ_GPTMP_TODAY  where CMD_TYPE='I';
\timing
