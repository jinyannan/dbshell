\echo -----------------------EX_ELE_LIST------------------------
select now();
\timing
delete from EX_ELE_LIST using EX_ELE_LIST_GPTMP_TODAY where EX_ELE_LIST.LICENSE_NO=EX_ELE_LIST_GPTMP_TODAY.LICENSE_NO AND EX_ELE_LIST.L_G_NO=EX_ELE_LIST_GPTMP_TODAY.L_G_NO ;
insert into EX_ELE_LIST (LICENSE_NO,L_G_NO,G_MODEL,LIC_QTY,LIC_USD_PRICE) select LICENSE_NO,L_G_NO,G_MODEL,LIC_QTY,LIC_USD_PRICE from EX_ELE_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing