\echo -----------------------MNL_SEQ------------------------
select now();
\timing
delete from MNL_SEQ using MNL_SEQ_GPTMP_TODAY where MNL_SEQ.MNL_KEY=MNL_SEQ_GPTMP_TODAY.MNL_KEY ;
insert into MNL_SEQ (MNL_KEY,MNL_SEQ) select MNL_KEY,MNL_SEQ from MNL_SEQ_GPTMP_TODAY  where CMD_TYPE='I';
\timing
