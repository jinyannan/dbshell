\echo ------------------IM_LIC_CODE_TS----------------
select now();
\timing
delete from IM_LIC_CODE_TS_GPTMP;
insert into IM_LIC_CODE_TS_GPTMP (CMD_TYPE,LICENSE_NO) select CMD_TYPE,LICENSE_NO from IM_LIC_CODE_TS_INC_EXT;
delete from IM_LIC_CODE_TS_GPTMP_TODAY using IM_LIC_CODE_TS_GPTMP where IM_LIC_CODE_TS_GPTMP.LICENSE_NO=IM_LIC_CODE_TS_GPTMP_TODAY.LICENSE_NO ;
insert into IM_LIC_CODE_TS_GPTMP_TODAY (CMD_TYPE,LICENSE_NO,CODE_T_S,BAD_CODE_T_S) select CMD_TYPE,LICENSE_NO,CODE_T_S,BAD_CODE_T_S from IM_LIC_CODE_TS_INC_EXT;
delete from IM_LIC_CODE_TS_GPTMP;
\timing
