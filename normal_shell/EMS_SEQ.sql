\echo ------------------EMS_SEQ----------------
select now();
\timing
insert into EMS_SEQ_GPTMP (CMD_TYPE,EMS_KEY) select CMD_TYPE,EMS_KEY from EMS_SEQ_INC_EXT;

delete from EMS_SEQ using EMS_SEQ_GPTMP where EMS_SEQ_GPTMP.EMS_KEY=EMS_SEQ.EMS_KEY ;

insert into EMS_SEQ(EMS_KEY,EMS_SEQ) select EMS_KEY,EMS_SEQ from EMS_SEQ_INC_EXT where CMD_TYPE='I';

delete from EMS_SEQ_GPTMP;

\timing
