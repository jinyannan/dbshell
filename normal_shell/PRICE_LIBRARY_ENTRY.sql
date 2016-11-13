\echo ------------------PRICE_LIBRARY_ENTRY----------------
select now();
\timing
insert into PRICE_LIBRARY_ENTRY_GPTMP (CMD_TYPE,REC_NO, I_E_FLAG, REC_TYPE, CREATE_DATE) select CMD_TYPE,REC_NO, I_E_FLAG, REC_TYPE, CREATE_DATE from PRICE_LIBRARY_ENTRY_INC_EXT;

delete from PRICE_LIBRARY_ENTRY using PRICE_LIBRARY_ENTRY_GPTMP where PRICE_LIBRARY_ENTRY_GPTMP.REC_NO=PRICE_LIBRARY_ENTRY.REC_NO AND PRICE_LIBRARY_ENTRY_GPTMP.I_E_FLAG=PRICE_LIBRARY_ENTRY.I_E_FLAG AND PRICE_LIBRARY_ENTRY_GPTMP.REC_TYPE=PRICE_LIBRARY_ENTRY.REC_TYPE AND PRICE_LIBRARY_ENTRY_GPTMP.CREATE_DATE=PRICE_LIBRARY_ENTRY.CREATE_DATE ;

insert into PRICE_LIBRARY_ENTRY(REC_NO,I_E_FLAG,REC_TYPE,CREATE_DATE,CODE_TS,G_NAME,G_NAME_E,BRAND_C,BRAND_E,G_MODEL,ORIGIN_COUNTRY,TRADE_COUNTRY,TRANS_MODE,TRANS_PORT,TRADE_CURR,VAL_PRICE,VAL_CURR,DECL_PRICE,G_QTY,G_UNIT,QTY_1,UNIT_1,QTY_2,UNIT_2,TRAF_MODE,TRADE_MODE,TRADE_CO,TRADE_NAME,OWNER_CO,OWNER_NAME,WRAP_TYPE,PAY_WAY,NOTE_S,I_E_DATE,SIGN_DATE,BEG_DATE,END_DATE,CUSTOMER_CODE,FORM_ID,ID_TYPE,MARK1,MARK2,MARK3,MARK4,REMARK) select REC_NO,I_E_FLAG,REC_TYPE,CREATE_DATE,CODE_TS,G_NAME,G_NAME_E,BRAND_C,BRAND_E,G_MODEL,ORIGIN_COUNTRY,TRADE_COUNTRY,TRANS_MODE,TRANS_PORT,TRADE_CURR,VAL_PRICE,VAL_CURR,DECL_PRICE,G_QTY,G_UNIT,QTY_1,UNIT_1,QTY_2,UNIT_2,TRAF_MODE,TRADE_MODE,TRADE_CO,TRADE_NAME,OWNER_CO,OWNER_NAME,WRAP_TYPE,PAY_WAY,NOTE_S,I_E_DATE,SIGN_DATE,BEG_DATE,END_DATE,CUSTOMER_CODE,FORM_ID,ID_TYPE,MARK1,MARK2,MARK3,MARK4,REMARK from PRICE_LIBRARY_ENTRY_INC_EXT where CMD_TYPE='I';

delete from PRICE_LIBRARY_ENTRY_GPTMP;

\timing
