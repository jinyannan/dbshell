\echo -----------------------TCS_ERROR_LOG------------------------
select now();
\timing
delete from TCS_ERROR_LOG using TCS_ERROR_LOG_GPTMP_TODAY where TCS_ERROR_LOG.GUID=TCS_ERROR_LOG_GPTMP_TODAY.GUID ;
insert into TCS_ERROR_LOG (GUID,BIZ_ID,CREATE_TIME,ERR_ID,NOTE) select GUID,BIZ_ID,CREATE_TIME,ERR_ID,NOTE from TCS_ERROR_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing
