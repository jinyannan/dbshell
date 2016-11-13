\echo ------------------TEP_VOUCHER_REC_LIST----------------
select now();
\timing
delete from TEP_VOUCHER_REC_LIST_GPTMP;
insert into TEP_VOUCHER_REC_LIST_GPTMP (CMD_TYPE,VOUCHER_RECEIVABLE_SEQ_NO) select CMD_TYPE,VOUCHER_RECEIVABLE_SEQ_NO from TEP_VOUCHER_REC_LIST_INC_EXT;
delete from TEP_VOUCHER_REC_LIST_GPTMP_TODAY using TEP_VOUCHER_REC_LIST_GPTMP where TEP_VOUCHER_REC_LIST_GPTMP.VOUCHER_RECEIVABLE_SEQ_NO=TEP_VOUCHER_REC_LIST_GPTMP_TODAY.VOUCHER_RECEIVABLE_SEQ_NO ;
insert into TEP_VOUCHER_REC_LIST_GPTMP_TODAY (CMD_TYPE,VOUCHER_RECEIVABLE_SEQ_NO,VOUCHER_PRODUCE_TIME,CUSTOMS_CODE,CUSTOMS_NAME) select CMD_TYPE,VOUCHER_RECEIVABLE_SEQ_NO,VOUCHER_PRODUCE_TIME,CUSTOMS_CODE,CUSTOMS_NAME from TEP_VOUCHER_REC_LIST_INC_EXT;
delete from TEP_VOUCHER_REC_LIST_GPTMP;
\timing
