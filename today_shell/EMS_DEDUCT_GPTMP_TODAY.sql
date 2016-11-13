\echo ------------------EMS_DEDUCT----------------
select now();
\timing
delete from EMS_DEDUCT_GPTMP;
insert into EMS_DEDUCT_GPTMP (CMD_TYPE,ENTRY_ID, EMS_NO, G_TYPE, ENTRY_G_NO) select CMD_TYPE,ENTRY_ID, EMS_NO, G_TYPE, ENTRY_G_NO from EMS_DEDUCT_INC_EXT;
delete from EMS_DEDUCT_GPTMP_TODAY using EMS_DEDUCT_GPTMP where EMS_DEDUCT_GPTMP.ENTRY_ID=EMS_DEDUCT_GPTMP_TODAY.ENTRY_ID AND EMS_DEDUCT_GPTMP.EMS_NO=EMS_DEDUCT_GPTMP_TODAY.EMS_NO AND EMS_DEDUCT_GPTMP.G_TYPE=EMS_DEDUCT_GPTMP_TODAY.G_TYPE AND EMS_DEDUCT_GPTMP.ENTRY_G_NO=EMS_DEDUCT_GPTMP_TODAY.ENTRY_G_NO ;
insert into EMS_DEDUCT_GPTMP_TODAY (CMD_TYPE,ENTRY_ID,EMS_NO,G_TYPE,EMS_G_NO,ENTRY_G_NO,EXG_VERSION,IN_QTY,I_ACCOUNT,I_WT,I_E_FLAG,I_CURR,I_E_PORT,TRADE_MODE,TRAF_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER,JOU_MARK,I_E_DATE,USD_ACCOUNT) select CMD_TYPE,ENTRY_ID,EMS_NO,G_TYPE,EMS_G_NO,ENTRY_G_NO,EXG_VERSION,IN_QTY,I_ACCOUNT,I_WT,I_E_FLAG,I_CURR,I_E_PORT,TRADE_MODE,TRAF_MODE,VERIFY_MODE,VERIFY_DATE,VERIFY_ER,JOU_MARK,I_E_DATE,USD_ACCOUNT from EMS_DEDUCT_INC_EXT;
delete from EMS_DEDUCT_GPTMP;
\timing