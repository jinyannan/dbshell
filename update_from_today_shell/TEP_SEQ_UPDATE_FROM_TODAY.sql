\echo -----------------------TEP_SEQ------------------------
select now();
\timing
delete from TEP_SEQ using TEP_SEQ_GPTMP_TODAY where TEP_SEQ.TEP_KEY=TEP_SEQ_GPTMP_TODAY.TEP_KEY ;
insert into TEP_SEQ (TEP_KEY,TEP_SEQ) select TEP_KEY,TEP_SEQ from TEP_SEQ_GPTMP_TODAY  where CMD_TYPE='I';
\timing
