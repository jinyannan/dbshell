\echo ------------------TRN_ALC_REL----------------
select now();
\timing
insert into TRN_ALC_REL_GPTMP (CMD_TYPE,CUSTOMS_CODE, TRN_MODE, TRAF_MODE) select CMD_TYPE,CUSTOMS_CODE, TRN_MODE, TRAF_MODE from TRN_ALC_REL_INC_EXT;

delete from TRN_ALC_REL using TRN_ALC_REL_GPTMP where TRN_ALC_REL_GPTMP.CUSTOMS_CODE=TRN_ALC_REL.CUSTOMS_CODE AND TRN_ALC_REL_GPTMP.TRN_MODE=TRN_ALC_REL.TRN_MODE AND TRN_ALC_REL_GPTMP.TRAF_MODE=TRN_ALC_REL.TRAF_MODE ;

insert into TRN_ALC_REL(CUSTOMS_CODE,TRN_MODE,TRAF_MODE,ALC_REL_FLAG,OP_ER,OP_DATE) select CUSTOMS_CODE,TRN_MODE,TRAF_MODE,ALC_REL_FLAG,OP_ER,OP_DATE from TRN_ALC_REL_INC_EXT where CMD_TYPE='I';

delete from TRN_ALC_REL_GPTMP;

\timing
