\echo ------------------EMS_DCR_HEAD----------------
select now();
\timing
insert into EMS_DCR_HEAD_GPTMP (CMD_TYPE,EMS_NO, DCR_TIMES) select CMD_TYPE,EMS_NO, DCR_TIMES from EMS_DCR_HEAD_INC_EXT;

delete from EMS_DCR_HEAD using EMS_DCR_HEAD_GPTMP where EMS_DCR_HEAD_GPTMP.EMS_NO=EMS_DCR_HEAD.EMS_NO AND EMS_DCR_HEAD_GPTMP.DCR_TIMES=EMS_DCR_HEAD.DCR_TIMES ;

insert into EMS_DCR_HEAD(EMS_NO,DCR_TIMES,DCR_TYPE,BEGIN_DATE,END_DATE,ENTRY_I_NUM,ENTRY_E_NUM,IMG_NUM,EXG_NUM,IMR_NUM,EXR_NUM,ID_CARD,ID_CARD_PWD,INPUT_DATE,INPUT_ER,DCR_DATE,EMS_APPR_MARK,EMS_CERTIFY,NOTE_1,NOTE_AMOUNT,NOTE_QTY,NOTE,DCR_MARK,DECLARE_MARK,CHK_MARK,CHK_DATE,PRINT_DATE,PRINT_MARK,RETURN_DATE,RETURN_MARK,NOTE_MARK,PROCESS_MARK,MESSAGE_TYPE,DIGITAL_SIGN_MARK,DIGITAL_SIGN_LEN,DIGITAL_SIGN,DECL_IN_AMT,DECL_EX_AMT) select EMS_NO,DCR_TIMES,DCR_TYPE,BEGIN_DATE,END_DATE,ENTRY_I_NUM,ENTRY_E_NUM,IMG_NUM,EXG_NUM,IMR_NUM,EXR_NUM,ID_CARD,ID_CARD_PWD,INPUT_DATE,INPUT_ER,DCR_DATE,EMS_APPR_MARK,EMS_CERTIFY,NOTE_1,NOTE_AMOUNT,NOTE_QTY,NOTE,DCR_MARK,DECLARE_MARK,CHK_MARK,CHK_DATE,PRINT_DATE,PRINT_MARK,RETURN_DATE,RETURN_MARK,NOTE_MARK,PROCESS_MARK,MESSAGE_TYPE,DIGITAL_SIGN_MARK,DIGITAL_SIGN_LEN,DIGITAL_SIGN,DECL_IN_AMT,DECL_EX_AMT from EMS_DCR_HEAD_INC_EXT where CMD_TYPE='I';

delete from EMS_DCR_HEAD_GPTMP;

\timing
