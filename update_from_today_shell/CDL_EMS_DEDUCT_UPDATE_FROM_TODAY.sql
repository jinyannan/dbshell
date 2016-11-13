\echo -----------------------CDL_EMS_DEDUCT------------------------
select now();
\timing
delete from CDL_EMS_DEDUCT using CDL_EMS_DEDUCT_GPTMP_TODAY where CDL_EMS_DEDUCT.ENTRY_ID=CDL_EMS_DEDUCT_GPTMP_TODAY.ENTRY_ID AND CDL_EMS_DEDUCT.EMS_NO=CDL_EMS_DEDUCT_GPTMP_TODAY.EMS_NO AND CDL_EMS_DEDUCT.G_TYPE=CDL_EMS_DEDUCT_GPTMP_TODAY.G_TYPE AND CDL_EMS_DEDUCT.ENTRY_G_NO=CDL_EMS_DEDUCT_GPTMP_TODAY.ENTRY_G_NO ;
insert into CDL_EMS_DEDUCT (ENTRY_ID,EMS_NO,G_TYPE,EMS_G_NO,ENTRY_G_NO,EXG_VERSION,IN_QTY,I_ACCOUNT,I_WT,I_E_FLAG,I_CURR,I_E_PORT,TRADE_MODE,TRAF_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER,JOU_MARK,I_E_DATE,USD_ACCOUNT) select ENTRY_ID,EMS_NO,G_TYPE,EMS_G_NO,ENTRY_G_NO,EXG_VERSION,IN_QTY,I_ACCOUNT,I_WT,I_E_FLAG,I_CURR,I_E_PORT,TRADE_MODE,TRAF_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER,JOU_MARK,I_E_DATE,USD_ACCOUNT from CDL_EMS_DEDUCT_GPTMP_TODAY  where CMD_TYPE='I';
\timing
