\echo ------------------TCS_ERROR_LOG----------------
select now();
\timing
insert into TCS_ERROR_LOG_GPTMP (CMD_TYPE,GUID) select CMD_TYPE,GUID from TCS_ERROR_LOG_INC_EXT;

delete from TCS_ERROR_LOG using TCS_ERROR_LOG_GPTMP where TCS_ERROR_LOG_GPTMP.GUID=TCS_ERROR_LOG.GUID ;

insert into TCS_ERROR_LOG(GUID,BIZ_ID,CREATE_TIME,ERR_ID,NOTE) select GUID,BIZ_ID,CREATE_TIME,ERR_ID,NOTE from TCS_ERROR_LOG_INC_EXT where CMD_TYPE='I';

delete from TCS_ERROR_LOG_GPTMP;

\timing
