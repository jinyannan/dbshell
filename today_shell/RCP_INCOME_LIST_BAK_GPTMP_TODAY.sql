\echo ------------------RCP_INCOME_LIST_BAK----------------
select now();
\timing
delete from RCP_INCOME_LIST_BAK_GPTMP;
insert into RCP_INCOME_LIST_BAK_GPTMP (CMD_TYPE,LEVYNO, LISTNO) select CMD_TYPE,LEVYNO, LISTNO from RCP_INCOME_LIST_BAK_INC_EXT;
delete from RCP_INCOME_LIST_BAK_GPTMP_TODAY using RCP_INCOME_LIST_BAK_GPTMP where RCP_INCOME_LIST_BAK_GPTMP.LEVYNO=RCP_INCOME_LIST_BAK_GPTMP_TODAY.LEVYNO AND RCP_INCOME_LIST_BAK_GPTMP.LISTNO=RCP_INCOME_LIST_BAK_GPTMP_TODAY.LISTNO ;
insert into RCP_INCOME_LIST_BAK_GPTMP_TODAY (CMD_TYPE,LEVYNO,LISTNO,CUSTOMSDATE) select CMD_TYPE,LEVYNO,LISTNO,CUSTOMSDATE from RCP_INCOME_LIST_BAK_INC_EXT;
delete from RCP_INCOME_LIST_BAK_GPTMP;
\timing
