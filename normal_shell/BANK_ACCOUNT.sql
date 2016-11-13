\echo ------------------BANK_ACCOUNT----------------
select now();
\timing
insert into BANK_ACCOUNT_GPTMP (CMD_TYPE,MANUAL_NO, ID_STAT, RECEIVE_DATE) select CMD_TYPE,MANUAL_NO, ID_STAT, RECEIVE_DATE from BANK_ACCOUNT_INC_EXT;

delete from BANK_ACCOUNT using BANK_ACCOUNT_GPTMP where BANK_ACCOUNT_GPTMP.MANUAL_NO=BANK_ACCOUNT.MANUAL_NO AND BANK_ACCOUNT_GPTMP.ID_STAT=BANK_ACCOUNT.ID_STAT AND BANK_ACCOUNT_GPTMP.RECEIVE_DATE=BANK_ACCOUNT.RECEIVE_DATE ;

insert into BANK_ACCOUNT(MANUAL_NO,ID_STAT,RECEIVE_DATE,M_CONTR_NO,M_OWNER_NAME,M_LIMIT_DATE,M_ACCOUNT_AMT,M_DEAL_MARK,M_TYPE_DATE,M_BANK_NOTE_NO,M_BANK_OPEN_DATE,M_BANK_NOTE_DATE,M_APPR_DATE,M_NEXT_FLAG,CONTR_NO,OWNER_NAME,LIMIT_DATE,ACCOUNT_AMT,DEAL_MARK,TYPE_DATE,BANK_NOTE_NO,BANK_OPEN_DATE,BANK_NOTE_DATE,APPR_DATE,BANK_ID,NEXT_FLAG,PORT_CODE,COMP_RESULT) select MANUAL_NO,ID_STAT,RECEIVE_DATE,M_CONTR_NO,M_OWNER_NAME,M_LIMIT_DATE,M_ACCOUNT_AMT,M_DEAL_MARK,M_TYPE_DATE,M_BANK_NOTE_NO,M_BANK_OPEN_DATE,M_BANK_NOTE_DATE,M_APPR_DATE,M_NEXT_FLAG,CONTR_NO,OWNER_NAME,LIMIT_DATE,ACCOUNT_AMT,DEAL_MARK,TYPE_DATE,BANK_NOTE_NO,BANK_OPEN_DATE,BANK_NOTE_DATE,APPR_DATE,BANK_ID,NEXT_FLAG,PORT_CODE,COMP_RESULT from BANK_ACCOUNT_INC_EXT where CMD_TYPE='I';

delete from BANK_ACCOUNT_GPTMP;

\timing
