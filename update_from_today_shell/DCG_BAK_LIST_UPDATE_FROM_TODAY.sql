\echo -----------------------DCG_BAK_LIST------------------------
select now();
\timing
delete from DCG_BAK_LIST using DCG_BAK_LIST_GPTMP_TODAY where DCG_BAK_LIST.DCG_NO=DCG_BAK_LIST_GPTMP_TODAY.DCG_NO ;
insert into DCG_BAK_LIST (DCG_NO,CREATE_DATE) select DCG_NO,CREATE_DATE from DCG_BAK_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
