\echo -----------------------EGS_ADMIT_HS------------------------
select now();
\timing
delete from EGS_ADMIT_HS using EGS_ADMIT_HS_GPTMP_TODAY where EGS_ADMIT_HS.ADM_NO=EGS_ADMIT_HS_GPTMP_TODAY.ADM_NO AND EGS_ADMIT_HS.CODE_TS=EGS_ADMIT_HS_GPTMP_TODAY.CODE_TS ;
insert into EGS_ADMIT_HS (ADM_NO,CODE_TS) select ADM_NO,CODE_TS from EGS_ADMIT_HS_GPTMP_TODAY  where CMD_TYPE='I';
\timing
