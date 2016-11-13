\echo ------------------DISTRIBUTIVE_DECLARE----------------
select now();
\timing
delete from DISTRIBUTIVE_DECLARE_GPTMP;
insert into DISTRIBUTIVE_DECLARE_GPTMP (CMD_TYPE,DISTRIBUTIVE_NO) select CMD_TYPE,DISTRIBUTIVE_NO from DISTRIBUTIVE_DECLARE_INC_EXT;
delete from DISTRIBUTIVE_DECLARE_GPTMP_TODAY using DISTRIBUTIVE_DECLARE_GPTMP where DISTRIBUTIVE_DECLARE_GPTMP.DISTRIBUTIVE_NO=DISTRIBUTIVE_DECLARE_GPTMP_TODAY.DISTRIBUTIVE_NO ;
insert into DISTRIBUTIVE_DECLARE_GPTMP_TODAY (CMD_TYPE,DISTRIBUTIVE_NO,FORM_FLAG,DECL_PORT,ORIGIN_CUS_CODE,ORIGIN_CUS_PLACE,DEST_CUS_CODE,DEST_CUS_PLACE,AGENT_CODE,AGENT_NAME,TRANSIT_CODE,TRANSIT_NAME,TRANSIT_WAY,NOTE,DISTRIBUTIVE_MARK,I_E_FLAG,DISTRIBUTIVE_SURER,SURE_DATE,OUT_SURER,IN_SURER,FORE_ARRIVE_DATE,DIS_FLAG,SEAL_FLAG,LIMIT_HOUR,DECL_DATE,IN_DATE,PRINT_NUM,SEQ_NO) select CMD_TYPE,DISTRIBUTIVE_NO,FORM_FLAG,DECL_PORT,ORIGIN_CUS_CODE,ORIGIN_CUS_PLACE,DEST_CUS_CODE,DEST_CUS_PLACE,AGENT_CODE,AGENT_NAME,TRANSIT_CODE,TRANSIT_NAME,TRANSIT_WAY,NOTE,DISTRIBUTIVE_MARK,I_E_FLAG,DISTRIBUTIVE_SURER,SURE_DATE,OUT_SURER,IN_SURER,FORE_ARRIVE_DATE,DIS_FLAG,SEAL_FLAG,LIMIT_HOUR,DECL_DATE,IN_DATE,PRINT_NUM,SEQ_NO from DISTRIBUTIVE_DECLARE_INC_EXT;
delete from DISTRIBUTIVE_DECLARE_GPTMP;
\timing
