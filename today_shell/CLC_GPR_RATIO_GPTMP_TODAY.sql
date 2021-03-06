\echo ------------------CLC_GPR_RATIO----------------
select now();
\timing
delete from CLC_GPR_RATIO_GPTMP;
insert into CLC_GPR_RATIO_GPTMP (CMD_TYPE,CUSTOMS_CODE, I_E_FLAG) select CMD_TYPE,CUSTOMS_CODE, I_E_FLAG from CLC_GPR_RATIO_INC_EXT;
delete from CLC_GPR_RATIO_GPTMP_TODAY using CLC_GPR_RATIO_GPTMP where CLC_GPR_RATIO_GPTMP.CUSTOMS_CODE=CLC_GPR_RATIO_GPTMP_TODAY.CUSTOMS_CODE AND CLC_GPR_RATIO_GPTMP.I_E_FLAG=CLC_GPR_RATIO_GPTMP_TODAY.I_E_FLAG ;
insert into CLC_GPR_RATIO_GPTMP_TODAY (CMD_TYPE,CUSTOMS_CODE,I_E_FLAG,RATIO_NUM) select CMD_TYPE,CUSTOMS_CODE,I_E_FLAG,RATIO_NUM from CLC_GPR_RATIO_INC_EXT;
delete from CLC_GPR_RATIO_GPTMP;
\timing
