\echo ------------------EX_LIC_CODE_TS----------------
select now();
\timing
insert into EX_LIC_CODE_TS_GPTMP (CMD_TYPE,LICENSE_NO) select CMD_TYPE,LICENSE_NO from EX_LIC_CODE_TS_INC_EXT;

delete from EX_LIC_CODE_TS using EX_LIC_CODE_TS_GPTMP where EX_LIC_CODE_TS_GPTMP.LICENSE_NO=EX_LIC_CODE_TS.LICENSE_NO ;

insert into EX_LIC_CODE_TS(LICENSE_NO,CODE_T_S,BAD_CODE_T_S) select LICENSE_NO,CODE_T_S,BAD_CODE_T_S from EX_LIC_CODE_TS_INC_EXT where CMD_TYPE='I';

delete from EX_LIC_CODE_TS_GPTMP;

\timing
