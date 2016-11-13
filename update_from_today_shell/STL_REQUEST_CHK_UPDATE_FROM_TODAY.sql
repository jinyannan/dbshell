\echo -----------------------STL_REQUEST_CHK------------------------
select now();
\timing
delete from STL_REQUEST_CHK using STL_REQUEST_CHK_GPTMP_TODAY where STL_REQUEST_CHK.UCR_CODE=STL_REQUEST_CHK_GPTMP_TODAY.UCR_CODE ;
insert into STL_REQUEST_CHK (UCR_CODE,ENTRY_ID,I_E_FLAG,CREATE_DATE,DESTINATION_CUSTOMS_CODE,TRADE_CO,TRAF_NAME,VOYAGE_NO,BILL_NO,CHK_REQUEST,NOTES,CHK_STATUS,CUSTOMS_REMARK,CUSTOMS_REMARK_NOTES) select UCR_CODE,ENTRY_ID,I_E_FLAG,CREATE_DATE,DESTINATION_CUSTOMS_CODE,TRADE_CO,TRAF_NAME,VOYAGE_NO,BILL_NO,CHK_REQUEST,NOTES,CHK_STATUS,CUSTOMS_REMARK,CUSTOMS_REMARK_NOTES from STL_REQUEST_CHK_GPTMP_TODAY  where CMD_TYPE='I';
\timing