\echo ------------------EGS_SEQ----------------
select now();
\timing
delete from EGS_SEQ_GPTMP;
insert into EGS_SEQ_GPTMP (CMD_TYPE,EGS_KEY) select CMD_TYPE,EGS_KEY from EGS_SEQ_INC_EXT;
delete from EGS_SEQ_GPTMP_TODAY using EGS_SEQ_GPTMP where EGS_SEQ_GPTMP.EGS_KEY=EGS_SEQ_GPTMP_TODAY.EGS_KEY ;
insert into EGS_SEQ_GPTMP_TODAY (CMD_TYPE,EGS_KEY,EGS_SEQ) select CMD_TYPE,EGS_KEY,EGS_SEQ from EGS_SEQ_INC_EXT;
delete from EGS_SEQ_GPTMP;
\timing
