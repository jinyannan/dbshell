\echo ------------------TRN_POP_COP_REL----------------
select now();
\timing
delete from TRN_POP_COP_REL_GPTMP;
insert into TRN_POP_COP_REL_GPTMP (CMD_TYPE,AGENT_CODE, CUSTOMS_CODE) select CMD_TYPE,AGENT_CODE, CUSTOMS_CODE from TRN_POP_COP_REL_INC_EXT;
delete from TRN_POP_COP_REL_GPTMP_TODAY using TRN_POP_COP_REL_GPTMP where TRN_POP_COP_REL_GPTMP.AGENT_CODE=TRN_POP_COP_REL_GPTMP_TODAY.AGENT_CODE AND TRN_POP_COP_REL_GPTMP.CUSTOMS_CODE=TRN_POP_COP_REL_GPTMP_TODAY.CUSTOMS_CODE ;
insert into TRN_POP_COP_REL_GPTMP_TODAY (CMD_TYPE,AGENT_CODE,AGENT_NAME,CUSTOMS_CODE,OTHER_COP,OTHER_RECV_PORT,VALID_FLAG,OP_ER,OP_DATE) select CMD_TYPE,AGENT_CODE,AGENT_NAME,CUSTOMS_CODE,OTHER_COP,OTHER_RECV_PORT,VALID_FLAG,OP_ER,OP_DATE from TRN_POP_COP_REL_INC_EXT;
delete from TRN_POP_COP_REL_GPTMP;
\timing
