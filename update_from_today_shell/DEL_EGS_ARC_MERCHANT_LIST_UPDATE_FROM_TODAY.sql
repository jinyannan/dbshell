\echo -----------------------DEL_EGS_ARC_MERCHANT_LIST------------------------
select now();
\timing
delete from DEL_EGS_ARC_MERCHANT_LIST using DEL_EGS_ARC_MERCHANT_LIST_GPTMP_TODAY where DEL_EGS_ARC_MERCHANT_LIST.EGS_NO=DEL_EGS_ARC_MERCHANT_LIST_GPTMP_TODAY.EGS_NO AND DEL_EGS_ARC_MERCHANT_LIST.AGENT_CODE=DEL_EGS_ARC_MERCHANT_LIST_GPTMP_TODAY.AGENT_CODE AND DEL_EGS_ARC_MERCHANT_LIST.MERCHANT_NO=DEL_EGS_ARC_MERCHANT_LIST_GPTMP_TODAY.MERCHANT_NO ;
insert into DEL_EGS_ARC_MERCHANT_LIST (EGS_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,EXHIBITION_NO,EXHIBITION_SITE_NO,AGENT_CODE) select EGS_NO,MERCHANT_NO,MERCHANT_NAME,MERCHANT_COUNTRY,EXHIBITION_NO,EXHIBITION_SITE_NO,AGENT_CODE from DEL_EGS_ARC_MERCHANT_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
