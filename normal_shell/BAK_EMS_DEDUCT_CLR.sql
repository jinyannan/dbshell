\echo ------------------BAK_EMS_DEDUCT_CLR----------------
select now();
\timing
insert into BAK_EMS_DEDUCT_CLR_GPTMP (CMD_TYPE,EMS_NO, IMG_NO, ENTRY_ID, ENTRY_G_NO) select CMD_TYPE,EMS_NO, IMG_NO, ENTRY_ID, ENTRY_G_NO from BAK_EMS_DEDUCT_CLR_INC_EXT;

delete from BAK_EMS_DEDUCT_CLR using BAK_EMS_DEDUCT_CLR_GPTMP where BAK_EMS_DEDUCT_CLR_GPTMP.EMS_NO=BAK_EMS_DEDUCT_CLR.EMS_NO AND BAK_EMS_DEDUCT_CLR_GPTMP.IMG_NO=BAK_EMS_DEDUCT_CLR.IMG_NO AND BAK_EMS_DEDUCT_CLR_GPTMP.ENTRY_ID=BAK_EMS_DEDUCT_CLR.ENTRY_ID AND BAK_EMS_DEDUCT_CLR_GPTMP.ENTRY_G_NO=BAK_EMS_DEDUCT_CLR.ENTRY_G_NO ;

insert into BAK_EMS_DEDUCT_CLR(EMS_NO,IMG_NO,ENTRY_ID,ENTRY_G_NO,EXG_NO,EXG_VERSION,IN_QTY,DEC_CM,DEC_DM,DEC_CM_QTY,DEC_DM_QTY,I_E_FLAG,TRADE_MODE,TRAF_MODE,VERIFY_MODE,JOU_MARK) select EMS_NO,IMG_NO,ENTRY_ID,ENTRY_G_NO,EXG_NO,EXG_VERSION,IN_QTY,DEC_CM,DEC_DM,DEC_CM_QTY,DEC_DM_QTY,I_E_FLAG,TRADE_MODE,TRAF_MODE,VERIFY_MODE,JOU_MARK from BAK_EMS_DEDUCT_CLR_INC_EXT where CMD_TYPE='I';

delete from BAK_EMS_DEDUCT_CLR_GPTMP;

\timing
