\echo ------------------BAK_EMS_HEAD----------------
select now();
\timing
insert into BAK_EMS_HEAD_GPTMP (CMD_TYPE,EMS_NO, MODIFY_TIMES) select CMD_TYPE,EMS_NO, MODIFY_TIMES from BAK_EMS_HEAD_INC_EXT;

delete from BAK_EMS_HEAD using BAK_EMS_HEAD_GPTMP where BAK_EMS_HEAD_GPTMP.EMS_NO=BAK_EMS_HEAD.EMS_NO AND BAK_EMS_HEAD_GPTMP.MODIFY_TIMES=BAK_EMS_HEAD.MODIFY_TIMES ;

insert into BAK_EMS_HEAD(EMS_NO,MODIFY_TIMES,PRE_EMS_NO,COP_EMS_NO,TRADE_CODE,TRADE_NAME,HOUSE_NO,OWNER_CODE,OWNER_NAME,OWNER_TYPE,DECLARE_ER_TYPE,DECLARE_CODE,DECLARE_NAME,DISTRICT_CODE,ADDRESS,PHONE,EMS_TYPE,DECLARE_TYPE,APPEND_TYPE,INVEST_MODE,TRADE_MODE,BEGIN_DATE,END_DATE,IMG_AMOUNT,EXG_AMOUNT,IMG_WEIGHT,EXG_WEIGHT,STORE_VOL,STORE_AREA,IMG_ITEMS,EXG_ITEMS,EMS_APPR_NO,LICENSE_NO,LAST_EMS_NO,CORR_EMS_NO,CONTR_NO,ID_CARD,ID_CARD_PWD,NOTE_1,NOTE_2,INVEST_AMOUNT,NOTE_AMOUNT,NOTE_QTY,NOTE,INPUT_DATE,INPUT_ER,DECLARE_DATE,EMS_APPR_MARK,EMS_CERTIFY,PRODUCT_RATIO,MODIFY_MARK,DECLARE_MARK,CHK_MARK,EXE_MARK,NEW_APPR_DATE,CNG_APPR_DATE,CLEAR_DATE,SIGN_DATE,SIGN_COPY,PRINT_DATE,PRINT_MARK,RETURN_DATE,RETURN_MARK,EMS_ACE_MARK,H883_ACE_MARK,CONTROL_MARK,PROCESS_MARK,CLEAR_MODE,CLEAR_TERM,CLEAR_MARK,CLEAR_TIMES,SERVICE_FEE_MARK,SERVICE_FEE_RATE,SERVICE_FEE,FILE_NO,RECORDER_NO,DOCUMENT_NO,MASTER_CUSTOMS,I_E_PORT,FOREIGN_CO_NAME,AGREE_NO,CUT_MODE,PAY_MODE,PRODUCE_TYPE,CONTR_OUT,MESSAGE_TYPE,EPORT_ID,DIGITAL_SIGN_MARK,DIGITAL_SIGN_LEN,DIGITAL_SIGN,ETL_MARK,I_DATE,IMGED_AMOUNT,CLEAR_APPR_MARK,CLEAR_APPL_DATE,CLOSE_MARK,CLOSE_DATE,CHECK_MARK,CHECK_RESULT,FOREIGN_MGR,TRANS_MODE,TRADE_COUNTRY,EQUIP_MODE,IN_RATIO,EX_CURR,IM_CURR,OPER_MARK,FACT_DEV_AMT,APPR_IMG_AMT,APPR_EXG_AMT,CLOSE_RESULT,DEDUCT_DATE,ACCOUNT_FLAG,HT_APPR_IMG_AMT,CASE_MARK) select EMS_NO,MODIFY_TIMES,PRE_EMS_NO,COP_EMS_NO,TRADE_CODE,TRADE_NAME,HOUSE_NO,OWNER_CODE,OWNER_NAME,OWNER_TYPE,DECLARE_ER_TYPE,DECLARE_CODE,DECLARE_NAME,DISTRICT_CODE,ADDRESS,PHONE,EMS_TYPE,DECLARE_TYPE,APPEND_TYPE,INVEST_MODE,TRADE_MODE,BEGIN_DATE,END_DATE,IMG_AMOUNT,EXG_AMOUNT,IMG_WEIGHT,EXG_WEIGHT,STORE_VOL,STORE_AREA,IMG_ITEMS,EXG_ITEMS,EMS_APPR_NO,LICENSE_NO,LAST_EMS_NO,CORR_EMS_NO,CONTR_NO,ID_CARD,ID_CARD_PWD,NOTE_1,NOTE_2,INVEST_AMOUNT,NOTE_AMOUNT,NOTE_QTY,NOTE,INPUT_DATE,INPUT_ER,DECLARE_DATE,EMS_APPR_MARK,EMS_CERTIFY,PRODUCT_RATIO,MODIFY_MARK,DECLARE_MARK,CHK_MARK,EXE_MARK,NEW_APPR_DATE,CNG_APPR_DATE,CLEAR_DATE,SIGN_DATE,SIGN_COPY,PRINT_DATE,PRINT_MARK,RETURN_DATE,RETURN_MARK,EMS_ACE_MARK,H883_ACE_MARK,CONTROL_MARK,PROCESS_MARK,CLEAR_MODE,CLEAR_TERM,CLEAR_MARK,CLEAR_TIMES,SERVICE_FEE_MARK,SERVICE_FEE_RATE,SERVICE_FEE,FILE_NO,RECORDER_NO,DOCUMENT_NO,MASTER_CUSTOMS,I_E_PORT,FOREIGN_CO_NAME,AGREE_NO,CUT_MODE,PAY_MODE,PRODUCE_TYPE,CONTR_OUT,MESSAGE_TYPE,EPORT_ID,DIGITAL_SIGN_MARK,DIGITAL_SIGN_LEN,DIGITAL_SIGN,ETL_MARK,I_DATE,IMGED_AMOUNT,CLEAR_APPR_MARK,CLEAR_APPL_DATE,CLOSE_MARK,CLOSE_DATE,CHECK_MARK,CHECK_RESULT,FOREIGN_MGR,TRANS_MODE,TRADE_COUNTRY,EQUIP_MODE,IN_RATIO,EX_CURR,IM_CURR,OPER_MARK,FACT_DEV_AMT,APPR_IMG_AMT,APPR_EXG_AMT,CLOSE_RESULT,DEDUCT_DATE,ACCOUNT_FLAG,HT_APPR_IMG_AMT,CASE_MARK from BAK_EMS_HEAD_INC_EXT where CMD_TYPE='I';

delete from BAK_EMS_HEAD_GPTMP;

\timing
