\echo -----------------------RAM_STATUS_MODI_LOG------------------------
select now();
\timing
delete from RAM_STATUS_MODI_LOG using RAM_STATUS_MODI_LOG_GPTMP_TODAY where RAM_STATUS_MODI_LOG.CUT_ID=RAM_STATUS_MODI_LOG_GPTMP_TODAY.CUT_ID AND RAM_STATUS_MODI_LOG.G_NO=RAM_STATUS_MODI_LOG_GPTMP_TODAY.G_NO AND RAM_STATUS_MODI_LOG.MODIFY_DATE=RAM_STATUS_MODI_LOG_GPTMP_TODAY.MODIFY_DATE AND RAM_STATUS_MODI_LOG.FIELD_NAME=RAM_STATUS_MODI_LOG_GPTMP_TODAY.FIELD_NAME ;
insert into RAM_STATUS_MODI_LOG (CUT_ID,G_NO,MODIFY_DATE,MODIFY_ER,FIELD_NAME,ORIGIN_VALUE,NEW_VALUE,REASON) select CUT_ID,G_NO,MODIFY_DATE,MODIFY_ER,FIELD_NAME,ORIGIN_VALUE,NEW_VALUE,REASON from RAM_STATUS_MODI_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing