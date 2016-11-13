\echo ------------------EGS_SEQ----------------
select now();
\timing
insert into EGS_SEQ_GPTMP (CMD_TYPE,EGS_KEY) select CMD_TYPE,EGS_KEY from EGS_SEQ_INC_EXT;

delete from EGS_SEQ using EGS_SEQ_GPTMP where EGS_SEQ_GPTMP.EGS_KEY=EGS_SEQ.EGS_KEY ;

insert into EGS_SEQ(EGS_KEY,EGS_SEQ) select EGS_KEY,EGS_SEQ from EGS_SEQ_INC_EXT where CMD_TYPE='I';

delete from EGS_SEQ_GPTMP;

\timing
