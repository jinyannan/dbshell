\echo -----------------------EX_TRN_CONTA_ENTRY_CHK------------------------
select now();
\timing
delete from EX_TRN_CONTA_ENTRY_CHK using EX_TRN_CONTA_ENTRY_CHK_GPTMP_TODAY where EX_TRN_CONTA_ENTRY_CHK.ENTRY_ID=EX_TRN_CONTA_ENTRY_CHK_GPTMP_TODAY.ENTRY_ID AND EX_TRN_CONTA_ENTRY_CHK.ARRIVE_NO=EX_TRN_CONTA_ENTRY_CHK_GPTMP_TODAY.ARRIVE_NO AND EX_TRN_CONTA_ENTRY_CHK.CONTA_ID=EX_TRN_CONTA_ENTRY_CHK_GPTMP_TODAY.CONTA_ID ;
insert into EX_TRN_CONTA_ENTRY_CHK (ENTRY_ID,ARRIVE_NO,CONTA_ID,CHK_ER,CHK_DATE) select ENTRY_ID,ARRIVE_NO,CONTA_ID,CHK_ER,CHK_DATE from EX_TRN_CONTA_ENTRY_CHK_GPTMP_TODAY  where CMD_TYPE='I';
\timing
