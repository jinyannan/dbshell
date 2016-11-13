\echo ------------------EX_TRN_ARRIVAL_CONTA----------------
select now();
\timing
insert into EX_TRN_ARRIVAL_CONTA_GPTMP (CMD_TYPE,ARRIVE_NO, CONTA_ID) select CMD_TYPE,ARRIVE_NO, CONTA_ID from EX_TRN_ARRIVAL_CONTA_INC_EXT;

delete from EX_TRN_ARRIVAL_CONTA using EX_TRN_ARRIVAL_CONTA_GPTMP where EX_TRN_ARRIVAL_CONTA_GPTMP.ARRIVE_NO=EX_TRN_ARRIVAL_CONTA.ARRIVE_NO AND EX_TRN_ARRIVAL_CONTA_GPTMP.CONTA_ID=EX_TRN_ARRIVAL_CONTA.CONTA_ID ;

insert into EX_TRN_ARRIVAL_CONTA(ARRIVE_NO,CONTA_ID,BILL_NO,CUSTOMS_CODE,TRAF_MODE,TRAF_NAME,VOYAGE_NO,TRAF_WAY,PACK_NO,GROSS_WT,UNLOAD_CODE,ARRIVE_TIME,CONTA_TYPE,TRN_MODE,NOTES,CREATE_DATE,ENTRY_ID,CHK_ER,CHK_DATE) select ARRIVE_NO,CONTA_ID,BILL_NO,CUSTOMS_CODE,TRAF_MODE,TRAF_NAME,VOYAGE_NO,TRAF_WAY,PACK_NO,GROSS_WT,UNLOAD_CODE,ARRIVE_TIME,CONTA_TYPE,TRN_MODE,NOTES,CREATE_DATE,ENTRY_ID,CHK_ER,CHK_DATE from EX_TRN_ARRIVAL_CONTA_INC_EXT where CMD_TYPE='I';

delete from EX_TRN_ARRIVAL_CONTA_GPTMP;

\timing