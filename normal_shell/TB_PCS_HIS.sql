\echo ------------------TB_PCS_HIS----------------
select now();
\timing
insert into TB_PCS_HIS_GPTMP (CMD_TYPE,PCS_NO_S) select CMD_TYPE,PCS_NO_S from TB_PCS_HIS_INC_EXT;

delete from TB_PCS_HIS using TB_PCS_HIS_GPTMP where TB_PCS_HIS_GPTMP.PCS_NO_S=TB_PCS_HIS.PCS_NO_S ;

insert into TB_PCS_HIS(SEQ_NO,PCS_NO_S,TRADE_NAME,TRADE_CO,G_NAME,G_MODEL,G_NAME_ENG,G_NAME_OTR,PROT_NO,STATUS,G_DESCRIPTION,CODE_TS,NOTE,AGENT_IC_CODE,AGENT_IC_NAME,TRADE_IC_CODE,TRADE_IC_NAME,AGENT_NAME,AGENT_CO,AGENT_TEL,INPUT_DATE,CGAC_CO,VALID_DATE) select SEQ_NO,PCS_NO_S,TRADE_NAME,TRADE_CO,G_NAME,G_MODEL,G_NAME_ENG,G_NAME_OTR,PROT_NO,STATUS,G_DESCRIPTION,CODE_TS,NOTE,AGENT_IC_CODE,AGENT_IC_NAME,TRADE_IC_CODE,TRADE_IC_NAME,AGENT_NAME,AGENT_CO,AGENT_TEL,INPUT_DATE,CGAC_CO,VALID_DATE from TB_PCS_HIS_INC_EXT where CMD_TYPE='I';

delete from TB_PCS_HIS_GPTMP;

\timing
