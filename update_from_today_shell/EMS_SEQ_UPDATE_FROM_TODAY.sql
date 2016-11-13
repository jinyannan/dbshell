\echo -----------------------EMS_SEQ------------------------
select now();
\timing
delete from EMS_SEQ using EMS_SEQ_GPTMP_TODAY where EMS_SEQ.EMS_KEY=EMS_SEQ_GPTMP_TODAY.EMS_KEY ;
insert into EMS_SEQ (EMS_KEY,EMS_SEQ) select EMS_KEY,EMS_SEQ from EMS_SEQ_GPTMP_TODAY  where CMD_TYPE='I';
\timing
