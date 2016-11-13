\echo -----------------------EGS_SEQ------------------------
select now();
\timing
delete from EGS_SEQ using EGS_SEQ_GPTMP_TODAY where EGS_SEQ.EGS_KEY=EGS_SEQ_GPTMP_TODAY.EGS_KEY ;
insert into EGS_SEQ (EGS_KEY,EGS_SEQ) select EGS_KEY,EGS_SEQ from EGS_SEQ_GPTMP_TODAY  where CMD_TYPE='I';
\timing
