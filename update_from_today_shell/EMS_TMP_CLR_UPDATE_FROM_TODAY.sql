\echo -----------------------EMS_TMP_CLR------------------------
select now();
\timing
delete from EMS_TMP_CLR using EMS_TMP_CLR_GPTMP_TODAY where EMS_TMP_CLR.EMS_NO=EMS_TMP_CLR_GPTMP_TODAY.EMS_NO AND EMS_TMP_CLR.G_TYPE=EMS_TMP_CLR_GPTMP_TODAY.G_TYPE AND EMS_TMP_CLR.G_NO=EMS_TMP_CLR_GPTMP_TODAY.G_NO ;
insert into EMS_TMP_CLR (EMS_NO,G_TYPE,G_NO,CLR_INC_AMOUNT,CLR_INC_QTY,CLR_CUT_AMOUNT,CLR_CUT_QTY,CLR_DS_QTY,CLR_DS_AMOUNT,CLR_QTY,CLR_AMOUNT,AVR_PRICE,CLR_RUB_QTY,CLR_RUB_AMOUNT,CLR_CM_QTY,CLR_CM_AMOUNT) select EMS_NO,G_TYPE,G_NO,CLR_INC_AMOUNT,CLR_INC_QTY,CLR_CUT_AMOUNT,CLR_CUT_QTY,CLR_DS_QTY,CLR_DS_AMOUNT,CLR_QTY,CLR_AMOUNT,AVR_PRICE,CLR_RUB_QTY,CLR_RUB_AMOUNT,CLR_CM_QTY,CLR_CM_AMOUNT from EMS_TMP_CLR_GPTMP_TODAY  where CMD_TYPE='I';
\timing
