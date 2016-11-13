\echo ------------------EGS_ARC_LIST----------------
select now();
\timing
insert into EGS_ARC_LIST_GPTMP (CMD_TYPE,EGS_NO, G_NO) select CMD_TYPE,EGS_NO, G_NO from EGS_ARC_LIST_INC_EXT;

delete from EGS_ARC_LIST using EGS_ARC_LIST_GPTMP where EGS_ARC_LIST_GPTMP.EGS_NO=EGS_ARC_LIST.EGS_NO AND EGS_ARC_LIST_GPTMP.G_NO=EGS_ARC_LIST.G_NO ;

insert into EGS_ARC_LIST(EGS_NO,G_NO,CODE_TS,G_NAME) select EGS_NO,G_NO,CODE_TS,G_NAME from EGS_ARC_LIST_INC_EXT where CMD_TYPE='I';

delete from EGS_ARC_LIST_GPTMP;

\timing
