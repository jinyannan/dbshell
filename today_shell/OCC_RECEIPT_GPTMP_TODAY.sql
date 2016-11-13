\echo ------------------OCC_RECEIPT----------------
select now();
\timing
delete from OCC_RECEIPT_GPTMP;
insert into OCC_RECEIPT_GPTMP (CMD_TYPE,CERTIFICATE_NO, AGREEMENT_ID, ISSUE_PLACE) select CMD_TYPE,CERTIFICATE_NO, AGREEMENT_ID, ISSUE_PLACE from OCC_RECEIPT_INC_EXT;
delete from OCC_RECEIPT_GPTMP_TODAY using OCC_RECEIPT_GPTMP where OCC_RECEIPT_GPTMP.CERTIFICATE_NO=OCC_RECEIPT_GPTMP_TODAY.CERTIFICATE_NO AND OCC_RECEIPT_GPTMP.AGREEMENT_ID=OCC_RECEIPT_GPTMP_TODAY.AGREEMENT_ID AND OCC_RECEIPT_GPTMP.ISSUE_PLACE=OCC_RECEIPT_GPTMP_TODAY.ISSUE_PLACE ;
insert into OCC_RECEIPT_GPTMP_TODAY (CMD_TYPE,CERTIFICATE_NO,AGREEMENT_ID,ISSUE_PLACE,RETURN_DATE,MESSAGE_ID,STEP_ID) select CMD_TYPE,CERTIFICATE_NO,AGREEMENT_ID,ISSUE_PLACE,RETURN_DATE,MESSAGE_ID,STEP_ID from OCC_RECEIPT_INC_EXT;
delete from OCC_RECEIPT_GPTMP;
\timing