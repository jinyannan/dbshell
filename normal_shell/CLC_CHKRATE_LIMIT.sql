\echo ------------------CLC_CHKRATE_LIMIT----------------
select now();
\timing
insert into CLC_CHKRATE_LIMIT_GPTMP (CMD_TYPE,CUSTOMS_CODE, I_E_FLAG) select CMD_TYPE,CUSTOMS_CODE, I_E_FLAG from CLC_CHKRATE_LIMIT_INC_EXT;

delete from CLC_CHKRATE_LIMIT using CLC_CHKRATE_LIMIT_GPTMP where CLC_CHKRATE_LIMIT_GPTMP.CUSTOMS_CODE=CLC_CHKRATE_LIMIT.CUSTOMS_CODE AND CLC_CHKRATE_LIMIT_GPTMP.I_E_FLAG=CLC_CHKRATE_LIMIT.I_E_FLAG ;

insert into CLC_CHKRATE_LIMIT(CUSTOMS_CODE,I_E_FLAG,MAX_CHK_RATE,RANDOM_QUICK_CHK_RATE,RANDOM_LHRSK_CHK_RATE,RANDOM_FOCUS_CHK_RATE,RANDOM_COP_CHK_RATE_AA,RANDOM_COP_CHK_RATE_1,RANDOM_COP_CHK_RATE_A,RANDOM_COP_CHK_RATE_B,RANDOM_COP_CHK_RATE_C,RANDOM_COP_CHK_RATE_D,RANDOM_RECHK_RATE,RANDOM_UNKNOWN_RATE) select CUSTOMS_CODE,I_E_FLAG,MAX_CHK_RATE,RANDOM_QUICK_CHK_RATE,RANDOM_LHRSK_CHK_RATE,RANDOM_FOCUS_CHK_RATE,RANDOM_COP_CHK_RATE_AA,RANDOM_COP_CHK_RATE_1,RANDOM_COP_CHK_RATE_A,RANDOM_COP_CHK_RATE_B,RANDOM_COP_CHK_RATE_C,RANDOM_COP_CHK_RATE_D,RANDOM_RECHK_RATE,RANDOM_UNKNOWN_RATE from CLC_CHKRATE_LIMIT_INC_EXT where CMD_TYPE='I';

delete from CLC_CHKRATE_LIMIT_GPTMP;

\timing
