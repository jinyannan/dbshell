\echo ------------------EGS_ARC_AGENT_LIST----------------
select now();
\timing
insert into EGS_ARC_AGENT_LIST_GPTMP (CMD_TYPE,EGS_NO, AGENT_NO) select CMD_TYPE,EGS_NO, AGENT_NO from EGS_ARC_AGENT_LIST_INC_EXT;

delete from EGS_ARC_AGENT_LIST using EGS_ARC_AGENT_LIST_GPTMP where EGS_ARC_AGENT_LIST_GPTMP.EGS_NO=EGS_ARC_AGENT_LIST.EGS_NO AND EGS_ARC_AGENT_LIST_GPTMP.AGENT_NO=EGS_ARC_AGENT_LIST.AGENT_NO ;

insert into EGS_ARC_AGENT_LIST(EGS_NO,AGENT_NO,AGENT_CODE,AGENT_NAME) select EGS_NO,AGENT_NO,AGENT_CODE,AGENT_NAME from EGS_ARC_AGENT_LIST_INC_EXT where CMD_TYPE='I';

delete from EGS_ARC_AGENT_LIST_GPTMP;

\timing
