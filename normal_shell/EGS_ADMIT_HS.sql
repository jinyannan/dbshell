\echo ------------------EGS_ADMIT_HS----------------
select now();
\timing
insert into EGS_ADMIT_HS_GPTMP (CMD_TYPE,ADM_NO, CODE_TS) select CMD_TYPE,ADM_NO, CODE_TS from EGS_ADMIT_HS_INC_EXT;

delete from EGS_ADMIT_HS using EGS_ADMIT_HS_GPTMP where EGS_ADMIT_HS_GPTMP.ADM_NO=EGS_ADMIT_HS.ADM_NO AND EGS_ADMIT_HS_GPTMP.CODE_TS=EGS_ADMIT_HS.CODE_TS ;

insert into EGS_ADMIT_HS(ADM_NO,CODE_TS) select ADM_NO,CODE_TS from EGS_ADMIT_HS_INC_EXT where CMD_TYPE='I';

delete from EGS_ADMIT_HS_GPTMP;

\timing
