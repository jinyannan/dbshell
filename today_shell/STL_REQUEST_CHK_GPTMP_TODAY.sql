\echo ------------------STL_REQUEST_CHK----------------
select now();
\timing
delete from STL_REQUEST_CHK_GPTMP;
insert into STL_REQUEST_CHK_GPTMP (CMD_TYPE,UCR_CODE) select CMD_TYPE,UCR_CODE from STL_REQUEST_CHK_INC_EXT;
delete from STL_REQUEST_CHK_GPTMP_TODAY using STL_REQUEST_CHK_GPTMP where STL_REQUEST_CHK_GPTMP.UCR_CODE=STL_REQUEST_CHK_GPTMP_TODAY.UCR_CODE ;
insert into STL_REQUEST_CHK_GPTMP_TODAY (CMD_TYPE,UCR_CODE,ENTRY_ID,I_E_FLAG,CREATE_DATE,DESTINATION_CUSTOMS_CODE,TRADE_CO,TRAF_NAME,VOYAGE_NO,BILL_NO,CHK_REQUEST,NOTES,CHK_STATUS,CUSTOMS_REMARK,CUSTOMS_REMARK_NOTES) select CMD_TYPE,UCR_CODE,ENTRY_ID,I_E_FLAG,CREATE_DATE,DESTINATION_CUSTOMS_CODE,TRADE_CO,TRAF_NAME,VOYAGE_NO,BILL_NO,CHK_REQUEST,NOTES,CHK_STATUS,CUSTOMS_REMARK,CUSTOMS_REMARK_NOTES from STL_REQUEST_CHK_INC_EXT;
delete from STL_REQUEST_CHK_GPTMP;
\timing
