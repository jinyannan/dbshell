\echo -----------------------CDL_MODI_LOG------------------------
select now();
\timing
delete from CDL_MODI_LOG using CDL_MODI_LOG_GPTMP_TODAY where CDL_MODI_LOG.LIST_NO=CDL_MODI_LOG_GPTMP_TODAY.LIST_NO AND CDL_MODI_LOG.OP_TIME=CDL_MODI_LOG_GPTMP_TODAY.OP_TIME AND CDL_MODI_LOG.MODI_TYPE=CDL_MODI_LOG_GPTMP_TODAY.MODI_TYPE AND CDL_MODI_LOG.ITEM_NAME=CDL_MODI_LOG_GPTMP_TODAY.ITEM_NAME ;
insert into CDL_MODI_LOG (LIST_NO,OP_TIME,MODI_TYPE,ITEM_NAME,ITEM_SOURCE,ITEM_CURRENT,NOTES) select LIST_NO,OP_TIME,MODI_TYPE,ITEM_NAME,ITEM_SOURCE,ITEM_CURRENT,NOTES from CDL_MODI_LOG_GPTMP_TODAY  where CMD_TYPE='I';
\timing
