\echo ------------------RED_FEE_INVOICE----------------
select now();
\timing
insert into RED_FEE_INVOICE_GPTMP (CMD_TYPE,MANUAL_NO, FEE_ID) select CMD_TYPE,MANUAL_NO, FEE_ID from RED_FEE_INVOICE_INC_EXT;

delete from RED_FEE_INVOICE using RED_FEE_INVOICE_GPTMP where RED_FEE_INVOICE_GPTMP.MANUAL_NO=RED_FEE_INVOICE.MANUAL_NO AND RED_FEE_INVOICE_GPTMP.FEE_ID=RED_FEE_INVOICE.FEE_ID ;

insert into RED_FEE_INVOICE(MANUAL_NO,F_NO,FEE_ID,CREATE_DATE,CHK_ER,TYPE_ER,TYPE_DATE,FINANCIAL_FLAG,FINANCIAL_DATE,BOOK_NO,FEE_AMT,NOTE_S) select MANUAL_NO,F_NO,FEE_ID,CREATE_DATE,CHK_ER,TYPE_ER,TYPE_DATE,FINANCIAL_FLAG,FINANCIAL_DATE,BOOK_NO,FEE_AMT,NOTE_S from RED_FEE_INVOICE_INC_EXT where CMD_TYPE='I';

delete from RED_FEE_INVOICE_GPTMP;

\timing
