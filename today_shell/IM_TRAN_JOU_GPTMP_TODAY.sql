\echo ------------------IM_TRAN_JOU----------------
select now();
\timing
delete from IM_TRAN_JOU_GPTMP;
insert into IM_TRAN_JOU_GPTMP (CMD_TYPE,ENTRY_ID, G_NO) select CMD_TYPE,ENTRY_ID, G_NO from IM_TRAN_JOU_INC_EXT;
delete from IM_TRAN_JOU_GPTMP_TODAY using IM_TRAN_JOU_GPTMP where IM_TRAN_JOU_GPTMP.ENTRY_ID=IM_TRAN_JOU_GPTMP_TODAY.ENTRY_ID AND IM_TRAN_JOU_GPTMP.G_NO=IM_TRAN_JOU_GPTMP_TODAY.G_NO ;
insert into IM_TRAN_JOU_GPTMP_TODAY (CMD_TYPE,I_E_PORT,ENTRY_ID,G_NO,ENTRY_LIC_NO,CODE_TS,G_NAME,G_MODEL,QTY_1,UNIT_NAME,USD_PRICE,REL_DATE,REL_TIME,REL_ER,AFTER_MARK,SEND_GEN_DATE,NOTE_S,SECURITY_ID) select CMD_TYPE,I_E_PORT,ENTRY_ID,G_NO,ENTRY_LIC_NO,CODE_TS,G_NAME,G_MODEL,QTY_1,UNIT_NAME,USD_PRICE,REL_DATE,REL_TIME,REL_ER,AFTER_MARK,SEND_GEN_DATE,NOTE_S,SECURITY_ID from IM_TRAN_JOU_INC_EXT;
delete from IM_TRAN_JOU_GPTMP;
\timing
