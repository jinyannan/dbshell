\echo ------------------MNL_SEQ----------------
select now();
\timing
delete from MNL_SEQ_GPTMP;
insert into MNL_SEQ_GPTMP (CMD_TYPE,MNL_KEY) select CMD_TYPE,MNL_KEY from MNL_SEQ_INC_EXT;
delete from MNL_SEQ_GPTMP_TODAY using MNL_SEQ_GPTMP where MNL_SEQ_GPTMP.MNL_KEY=MNL_SEQ_GPTMP_TODAY.MNL_KEY ;
insert into MNL_SEQ_GPTMP_TODAY (CMD_TYPE,MNL_KEY,MNL_SEQ) select CMD_TYPE,MNL_KEY,MNL_SEQ from MNL_SEQ_INC_EXT;
delete from MNL_SEQ_GPTMP;
\timing
