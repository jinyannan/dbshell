\echo -----------------------TRN_PARAMETER------------------------
select now();
\timing
delete from TRN_PARAMETER using TRN_PARAMETER_GPTMP_TODAY where TRN_PARAMETER.CUSTOMS_CODE=TRN_PARAMETER_GPTMP_TODAY.CUSTOMS_CODE AND TRN_PARAMETER.P_NAME=TRN_PARAMETER_GPTMP_TODAY.P_NAME ;
insert into TRN_PARAMETER (CUSTOMS_CODE,P_NAME,P_VALUE,OPERATOR_NO,MODI_DATE) select CUSTOMS_CODE,P_NAME,P_VALUE,OPERATOR_NO,MODI_DATE from TRN_PARAMETER_GPTMP_TODAY  where CMD_TYPE='I';
\timing
