\echo ------------------STL_DATA_TS_LIST----------------
select now();
\timing
delete from STL_DATA_TS_LIST_GPTMP;
insert into STL_DATA_TS_LIST_GPTMP (CMD_TYPE,UCR_CODE, G_NO) select CMD_TYPE,UCR_CODE, G_NO from STL_DATA_TS_LIST_INC_EXT;
delete from STL_DATA_TS_LIST_GPTMP_TODAY using STL_DATA_TS_LIST_GPTMP where STL_DATA_TS_LIST_GPTMP.UCR_CODE=STL_DATA_TS_LIST_GPTMP_TODAY.UCR_CODE AND STL_DATA_TS_LIST_GPTMP.G_NO=STL_DATA_TS_LIST_GPTMP_TODAY.G_NO ;
insert into STL_DATA_TS_LIST_GPTMP_TODAY (CMD_TYPE,UCR_CODE,G_NO,CODE_TS,G_NAME,PACK_NO) select CMD_TYPE,UCR_CODE,G_NO,CODE_TS,G_NAME,PACK_NO from STL_DATA_TS_LIST_INC_EXT;
delete from STL_DATA_TS_LIST_GPTMP;
\timing
