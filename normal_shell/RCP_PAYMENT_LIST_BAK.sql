\echo ------------------RCP_PAYMENT_LIST_BAK----------------
select now();
\timing
insert into RCP_PAYMENT_LIST_BAK_GPTMP (CMD_TYPE,LEVYNO, LISTNO) select CMD_TYPE,LEVYNO, LISTNO from RCP_PAYMENT_LIST_BAK_INC_EXT;

delete from RCP_PAYMENT_LIST_BAK using RCP_PAYMENT_LIST_BAK_GPTMP where RCP_PAYMENT_LIST_BAK_GPTMP.LEVYNO=RCP_PAYMENT_LIST_BAK.LEVYNO AND RCP_PAYMENT_LIST_BAK_GPTMP.LISTNO=RCP_PAYMENT_LIST_BAK.LISTNO ;

insert into RCP_PAYMENT_LIST_BAK(LEVYNO,LISTNO,CUSTOMSDATE) select LEVYNO,LISTNO,CUSTOMSDATE from RCP_PAYMENT_LIST_BAK_INC_EXT where CMD_TYPE='I';

delete from RCP_PAYMENT_LIST_BAK_GPTMP;

\timing
