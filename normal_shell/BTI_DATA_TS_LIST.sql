\echo ------------------BTI_DATA_TS_LIST----------------
select now();
\timing
insert into BTI_DATA_TS_LIST_GPTMP (CMD_TYPE,UCR_CODE, G_NO) select CMD_TYPE,UCR_CODE, G_NO from BTI_DATA_TS_LIST_INC_EXT;

delete from BTI_DATA_TS_LIST using BTI_DATA_TS_LIST_GPTMP where BTI_DATA_TS_LIST_GPTMP.UCR_CODE=BTI_DATA_TS_LIST.UCR_CODE AND BTI_DATA_TS_LIST_GPTMP.G_NO=BTI_DATA_TS_LIST.G_NO ;

insert into BTI_DATA_TS_LIST(UCR_CODE,G_NO,CODE_TS,G_NAME,PACK_NO) select UCR_CODE,G_NO,CODE_TS,G_NAME,PACK_NO from BTI_DATA_TS_LIST_INC_EXT where CMD_TYPE='I';

delete from BTI_DATA_TS_LIST_GPTMP;

\timing