\echo ------------------ECO_LIST----------------
select now();
\timing
insert into ECO_LIST_GPTMP (CMD_TYPE,CERTIFICATE_NO, G_NO) select CMD_TYPE,CERTIFICATE_NO, G_NO from ECO_LIST_INC_EXT;

delete from ECO_LIST using ECO_LIST_GPTMP where ECO_LIST_GPTMP.CERTIFICATE_NO=ECO_LIST.CERTIFICATE_NO AND ECO_LIST_GPTMP.G_NO=ECO_LIST.G_NO ;

insert into ECO_LIST(CERTIFICATE_NO,G_NO,MARK,PACK_AND_DESC,CODE_TS,ORIGINAL_CRITERION,G_QTY,G_UNIT,GROSS_WEIGHT,NET_WEIGHT,QTY_1,UNIT_1,QTY_2,UNIT_2,FOB_CURR,FOB_AMOUNT) select CERTIFICATE_NO,G_NO,MARK,PACK_AND_DESC,CODE_TS,ORIGINAL_CRITERION,G_QTY,G_UNIT,GROSS_WEIGHT,NET_WEIGHT,QTY_1,UNIT_1,QTY_2,UNIT_2,FOB_CURR,FOB_AMOUNT from ECO_LIST_INC_EXT where CMD_TYPE='I';

delete from ECO_LIST_GPTMP;

\timing