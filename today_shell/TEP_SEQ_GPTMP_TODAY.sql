\echo ------------------TEP_SEQ----------------
select now();
\timing
delete from TEP_SEQ_GPTMP;
insert into TEP_SEQ_GPTMP (CMD_TYPE,TEP_KEY) select CMD_TYPE,TEP_KEY from TEP_SEQ_INC_EXT;
delete from TEP_SEQ_GPTMP_TODAY using TEP_SEQ_GPTMP where TEP_SEQ_GPTMP.TEP_KEY=TEP_SEQ_GPTMP_TODAY.TEP_KEY ;
insert into TEP_SEQ_GPTMP_TODAY (CMD_TYPE,TEP_KEY,TEP_SEQ) select CMD_TYPE,TEP_KEY,TEP_SEQ from TEP_SEQ_INC_EXT;
delete from TEP_SEQ_GPTMP;
\timing
