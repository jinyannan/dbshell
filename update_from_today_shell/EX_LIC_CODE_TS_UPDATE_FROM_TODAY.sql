\echo -----------------------EX_LIC_CODE_TS------------------------
select now();
\timing
delete from EX_LIC_CODE_TS using EX_LIC_CODE_TS_GPTMP_TODAY where EX_LIC_CODE_TS.LICENSE_NO=EX_LIC_CODE_TS_GPTMP_TODAY.LICENSE_NO ;
insert into EX_LIC_CODE_TS (LICENSE_NO,CODE_T_S,BAD_CODE_T_S) select LICENSE_NO,CODE_T_S,BAD_CODE_T_S from EX_LIC_CODE_TS_GPTMP_TODAY  where CMD_TYPE='I';
\timing
