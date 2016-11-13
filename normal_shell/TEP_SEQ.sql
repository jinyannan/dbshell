\echo ------------------TEP_SEQ----------------
select now();
\timing
insert into TEP_SEQ_GPTMP (CMD_TYPE,TEP_KEY) select CMD_TYPE,TEP_KEY from TEP_SEQ_INC_EXT;

delete from TEP_SEQ using TEP_SEQ_GPTMP where TEP_SEQ_GPTMP.TEP_KEY=TEP_SEQ.TEP_KEY ;

insert into TEP_SEQ(TEP_KEY,TEP_SEQ) select TEP_KEY,TEP_SEQ from TEP_SEQ_INC_EXT where CMD_TYPE='I';

delete from TEP_SEQ_GPTMP;

\timing
