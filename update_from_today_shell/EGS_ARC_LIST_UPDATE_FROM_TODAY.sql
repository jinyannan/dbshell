\echo -----------------------EGS_ARC_LIST------------------------
select now();
\timing
delete from EGS_ARC_LIST using EGS_ARC_LIST_GPTMP_TODAY where EGS_ARC_LIST.EGS_NO=EGS_ARC_LIST_GPTMP_TODAY.EGS_NO AND EGS_ARC_LIST.G_NO=EGS_ARC_LIST_GPTMP_TODAY.G_NO ;
insert into EGS_ARC_LIST (EGS_NO,G_NO,CODE_TS,G_NAME) select EGS_NO,G_NO,CODE_TS,G_NAME from EGS_ARC_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
