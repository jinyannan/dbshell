\echo -----------------------TRN_I_E_PORT------------------------
select now();
\timing
delete from TRN_I_E_PORT using TRN_I_E_PORT_GPTMP_TODAY where TRN_I_E_PORT.VE_CUSTOMS_NO=TRN_I_E_PORT_GPTMP_TODAY.VE_CUSTOMS_NO AND TRN_I_E_PORT.I_E_PORT=TRN_I_E_PORT_GPTMP_TODAY.I_E_PORT ;
insert into TRN_I_E_PORT (VE_CUSTOMS_NO,MAIN_PORT,I_E_PORT,INPUT_OP_ID,INPUT_DATE) select VE_CUSTOMS_NO,MAIN_PORT,I_E_PORT,INPUT_OP_ID,INPUT_DATE from TRN_I_E_PORT_GPTMP_TODAY  where CMD_TYPE='I';
\timing
