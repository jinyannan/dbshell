\echo -----------------------EGS_CHECK_LOG------------------------
select now();
\timing
delete from EGS_CHECK_LOG using EGS_CHECK_LOG_GPTMP_TODAY where EGS_CHECK_LOG.EGS_NO=EGS_CHECK_LOG_GPTMP_TODAY.EGS_NO AND EGS_CHECK_LOG.CHK_TIMES=EGS_CHECK_LOG_GPTMP_TODAY.CHK_TIMES AND EGS_CHECK_LOG.FORM_TYPE=EGS_CHECK_LOG_GPTMP_TODAY.FORM_TYPE AND EGS_CHECK_LOG.G_NO=EGS_CHECK_LOG_GPTMP_TODAY.G_NO ;
insert into EGS_CHECK_LOG (EGS_NO,EPORT_NO,CHK_TIMES,FORM_TYPE,G_NO,EGS_TYPE,CHK_MARK,CHK_ER,CHK_DATE,CHK_RESULT,MESSAGE,NOTE) select EGS_NO,EPORT_NO,CHK_TIMES,FORM_TYPE,G_NO,EGS_TYPE,CHK_MARK,CHK_ER,CHK_DATE,CHK_RESULT,MESSAGE,NOTE from EGS_CHECK_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing
