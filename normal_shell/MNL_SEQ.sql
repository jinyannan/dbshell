\echo ------------------MNL_SEQ----------------
select now();
\timing
insert into MNL_SEQ_GPTMP (CMD_TYPE,MNL_KEY) select CMD_TYPE,MNL_KEY from MNL_SEQ_INC_EXT;

delete from MNL_SEQ using MNL_SEQ_GPTMP where MNL_SEQ_GPTMP.MNL_KEY=MNL_SEQ.MNL_KEY ;

insert into MNL_SEQ(MNL_KEY,MNL_SEQ) select MNL_KEY,MNL_SEQ from MNL_SEQ_INC_EXT where CMD_TYPE='I';

delete from MNL_SEQ_GPTMP;

\timing
