\echo ------------------BTI_DATA_TS_LIST----------------
select now();
\timing
delete from BTI_DATA_TS_LIST_GPTMP;
insert into BTI_DATA_TS_LIST_GPTMP (CMD_TYPE,UCR_CODE, G_NO) select CMD_TYPE,UCR_CODE, G_NO from BTI_DATA_TS_LIST_INC_EXT;
delete from BTI_DATA_TS_LIST_GPTMP_TODAY using BTI_DATA_TS_LIST_GPTMP where BTI_DATA_TS_LIST_GPTMP.UCR_CODE=BTI_DATA_TS_LIST_GPTMP_TODAY.UCR_CODE AND BTI_DATA_TS_LIST_GPTMP.G_NO=BTI_DATA_TS_LIST_GPTMP_TODAY.G_NO ;
insert into BTI_DATA_TS_LIST_GPTMP_TODAY (CMD_TYPE,UCR_CODE,G_NO,CODE_TS,G_NAME,PACK_NO) select CMD_TYPE,UCR_CODE,G_NO,CODE_TS,G_NAME,PACK_NO from BTI_DATA_TS_LIST_INC_EXT;
delete from BTI_DATA_TS_LIST_GPTMP;
\timing
