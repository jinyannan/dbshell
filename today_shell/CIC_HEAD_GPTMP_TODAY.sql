\echo ------------------CIC_HEAD----------------
select now();
\timing
delete from CIC_HEAD_GPTMP;
insert into CIC_HEAD_GPTMP (CMD_TYPE,CPT_NO) select CMD_TYPE,CPT_NO from CIC_HEAD_INC_EXT;
delete from CIC_HEAD_GPTMP_TODAY using CIC_HEAD_GPTMP where CIC_HEAD_GPTMP.CPT_NO=CIC_HEAD_GPTMP_TODAY.CPT_NO ;
insert into CIC_HEAD_GPTMP_TODAY (CMD_TYPE,CPT_NO,CIC_NO,ENTRY_NO,ITEMS_NO,TRAF_NAME,DESTINATION_PORT,PORT_CUS,MAST_CUS,TRADE_CO,TRADE_NAME,OWNER_CODE,OWNER_NAME,AGENT_NAME,CIC_FLAG,LOCAL_FLAG,YYMM,I_DATE,D_DATE,R_DATE,SEND_DATE,INPUT_ER,INPUT_DATE,PRINT_ER,PRINT_DATE,CHECK_ER,CHECK_DATE,REP_CPT_NO,CANCEL_ER,CANCEL_REASON,CANCEL_DATE,REPORT_ER,REPORT_DATE,TOTAL_PRICE,CURR,SPARE_FLAG,NOTE,CAR_NO,CAR_NO_DATE,AVISO_FLAG,AVISO_DATE) select CMD_TYPE,CPT_NO,CIC_NO,ENTRY_NO,ITEMS_NO,TRAF_NAME,DESTINATION_PORT,PORT_CUS,MAST_CUS,TRADE_CO,TRADE_NAME,OWNER_CODE,OWNER_NAME,AGENT_NAME,CIC_FLAG,LOCAL_FLAG,YYMM,I_DATE,D_DATE,R_DATE,SEND_DATE,INPUT_ER,INPUT_DATE,PRINT_ER,PRINT_DATE,CHECK_ER,CHECK_DATE,REP_CPT_NO,CANCEL_ER,CANCEL_REASON,CANCEL_DATE,REPORT_ER,REPORT_DATE,TOTAL_PRICE,CURR,SPARE_FLAG,NOTE,CAR_NO,CAR_NO_DATE,AVISO_FLAG,AVISO_DATE from CIC_HEAD_INC_EXT;
delete from CIC_HEAD_GPTMP;
\timing
