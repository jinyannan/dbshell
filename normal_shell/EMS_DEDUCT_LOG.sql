\echo ------------------EMS_DEDUCT_LOG----------------
select now();
\timing
insert into EMS_DEDUCT_LOG_GPTMP (CMD_TYPE,ENTRY_ID, EMS_NO, CREATE_DATE, JOU_MARK) select CMD_TYPE,ENTRY_ID, EMS_NO, CREATE_DATE, JOU_MARK from EMS_DEDUCT_LOG_INC_EXT;

delete from EMS_DEDUCT_LOG using EMS_DEDUCT_LOG_GPTMP where EMS_DEDUCT_LOG_GPTMP.ENTRY_ID=EMS_DEDUCT_LOG.ENTRY_ID AND EMS_DEDUCT_LOG_GPTMP.EMS_NO=EMS_DEDUCT_LOG.EMS_NO AND EMS_DEDUCT_LOG_GPTMP.CREATE_DATE=EMS_DEDUCT_LOG.CREATE_DATE AND EMS_DEDUCT_LOG_GPTMP.JOU_MARK=EMS_DEDUCT_LOG.JOU_MARK ;

insert into EMS_DEDUCT_LOG(ENTRY_ID,EMS_NO,CREATE_DATE,JOU_MARK,NOTE,VERIFY_ER) select ENTRY_ID,EMS_NO,CREATE_DATE,JOU_MARK,NOTE,VERIFY_ER from EMS_DEDUCT_LOG_INC_EXT where CMD_TYPE='I';

delete from EMS_DEDUCT_LOG_GPTMP;

\timing
