\echo ------------------TRANSFER_FEE----------------
select now();
\timing
insert into TRANSFER_FEE_GPTMP (CMD_TYPE,MANUAL_NO, RTN_MANUAL_NO) select CMD_TYPE,MANUAL_NO, RTN_MANUAL_NO from TRANSFER_FEE_INC_EXT;

delete from TRANSFER_FEE using TRANSFER_FEE_GPTMP where TRANSFER_FEE_GPTMP.MANUAL_NO=TRANSFER_FEE.MANUAL_NO AND TRANSFER_FEE_GPTMP.RTN_MANUAL_NO=TRANSFER_FEE.RTN_MANUAL_NO ;

insert into TRANSFER_FEE(MANUAL_NO,RTN_MANUAL_NO,TRANSFER_FEE) select MANUAL_NO,RTN_MANUAL_NO,TRANSFER_FEE from TRANSFER_FEE_INC_EXT where CMD_TYPE='I';

delete from TRANSFER_FEE_GPTMP;

\timing
