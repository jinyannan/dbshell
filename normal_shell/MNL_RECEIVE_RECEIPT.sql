\echo ------------------MNL_RECEIVE_RECEIPT----------------
select now();
\timing
insert into MNL_RECEIVE_RECEIPT_GPTMP (CMD_TYPE,MANUAL_NO, SEND_CUSTOMS, CUSTOMS_CODE, H2000_RECEIVE_DATE) select CMD_TYPE,MANUAL_NO, SEND_CUSTOMS, CUSTOMS_CODE, H2000_RECEIVE_DATE from MNL_RECEIVE_RECEIPT_INC_EXT;

delete from MNL_RECEIVE_RECEIPT using MNL_RECEIVE_RECEIPT_GPTMP where MNL_RECEIVE_RECEIPT_GPTMP.MANUAL_NO=MNL_RECEIVE_RECEIPT.MANUAL_NO AND MNL_RECEIVE_RECEIPT_GPTMP.SEND_CUSTOMS=MNL_RECEIVE_RECEIPT.SEND_CUSTOMS AND MNL_RECEIVE_RECEIPT_GPTMP.CUSTOMS_CODE=MNL_RECEIVE_RECEIPT.CUSTOMS_CODE AND MNL_RECEIVE_RECEIPT_GPTMP.H2000_RECEIVE_DATE=MNL_RECEIVE_RECEIPT.H2000_RECEIVE_DATE ;

insert into MNL_RECEIVE_RECEIPT(MANUAL_NO,SEND_CUSTOMS,CUSTOMS_CODE,H2000_RECEIVE_DATE,RECEIVE_DATE,TYPE,SEND_TIMES,APPL_NO,FLAG,NOTE) select MANUAL_NO,SEND_CUSTOMS,CUSTOMS_CODE,H2000_RECEIVE_DATE,RECEIVE_DATE,TYPE,SEND_TIMES,APPL_NO,FLAG,NOTE from MNL_RECEIVE_RECEIPT_INC_EXT where CMD_TYPE='I';

delete from MNL_RECEIVE_RECEIPT_GPTMP;

\timing
