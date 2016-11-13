\echo -----------------------IM_LIC_CODE_TS------------------------
select now();
\timing
delete from IM_LIC_CODE_TS using IM_LIC_CODE_TS_GPTMP_TODAY where IM_LIC_CODE_TS.LICENSE_NO=IM_LIC_CODE_TS_GPTMP_TODAY.LICENSE_NO ;
insert into IM_LIC_CODE_TS (LICENSE_NO,CODE_T_S,BAD_CODE_T_S) select LICENSE_NO,CODE_T_S,BAD_CODE_T_S from IM_LIC_CODE_TS_GPTMP_TODAY  where CMD_TYPE='I';
\timing
