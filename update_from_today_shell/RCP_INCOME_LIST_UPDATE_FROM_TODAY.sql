\echo -----------------------RCP_INCOME_LIST------------------------
select now();
\timing
delete from RCP_INCOME_LIST using RCP_INCOME_LIST_GPTMP_TODAY where RCP_INCOME_LIST.LEVYNO=RCP_INCOME_LIST_GPTMP_TODAY.LEVYNO AND RCP_INCOME_LIST.LISTNO=RCP_INCOME_LIST_GPTMP_TODAY.LISTNO ;
insert into RCP_INCOME_LIST (LEVYNO,LISTNO,CUSTOMSDATE) select LEVYNO,LISTNO,CUSTOMSDATE from RCP_INCOME_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing