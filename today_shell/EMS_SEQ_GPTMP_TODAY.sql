\echo ------------------EMS_SEQ----------------
select now();
\timing
delete from EMS_SEQ_GPTMP;
insert into EMS_SEQ_GPTMP (CMD_TYPE,EMS_KEY) select CMD_TYPE,EMS_KEY from EMS_SEQ_INC_EXT;
delete from EMS_SEQ_GPTMP_TODAY using EMS_SEQ_GPTMP where EMS_SEQ_GPTMP.EMS_KEY=EMS_SEQ_GPTMP_TODAY.EMS_KEY ;
insert into EMS_SEQ_GPTMP_TODAY (CMD_TYPE,EMS_KEY,EMS_SEQ) select CMD_TYPE,EMS_KEY,EMS_SEQ from EMS_SEQ_INC_EXT;
delete from EMS_SEQ_GPTMP;
\timing
