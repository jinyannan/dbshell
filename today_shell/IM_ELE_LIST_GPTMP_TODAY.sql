\echo ------------------IM_ELE_LIST----------------
select now();
\timing
delete from IM_ELE_LIST_GPTMP;
insert into IM_ELE_LIST_GPTMP (CMD_TYPE,LICENSE_NO, L_G_NO) select CMD_TYPE,LICENSE_NO, L_G_NO from IM_ELE_LIST_INC_EXT;
delete from IM_ELE_LIST_GPTMP_TODAY using IM_ELE_LIST_GPTMP where IM_ELE_LIST_GPTMP.LICENSE_NO=IM_ELE_LIST_GPTMP_TODAY.LICENSE_NO AND IM_ELE_LIST_GPTMP.L_G_NO=IM_ELE_LIST_GPTMP_TODAY.L_G_NO ;
insert into IM_ELE_LIST_GPTMP_TODAY (CMD_TYPE,LICENSE_NO,L_G_NO,G_MODEL,LIC_QTY,LIC_USD_PRICE) select CMD_TYPE,LICENSE_NO,L_G_NO,G_MODEL,LIC_QTY,LIC_USD_PRICE from IM_ELE_LIST_INC_EXT;
delete from IM_ELE_LIST_GPTMP;
\timing
