\echo ------------------BWS_MANIFEST_LIST----------------
select now();
\timing
delete from BWS_MANIFEST_LIST_GPTMP;
insert into BWS_MANIFEST_LIST_GPTMP (CMD_TYPE,BWS_MANIFEST_NO, G_NO) select CMD_TYPE,BWS_MANIFEST_NO, G_NO from BWS_MANIFEST_LIST_INC_EXT;
delete from BWS_MANIFEST_LIST_GPTMP_TODAY using BWS_MANIFEST_LIST_GPTMP where BWS_MANIFEST_LIST_GPTMP.BWS_MANIFEST_NO=BWS_MANIFEST_LIST_GPTMP_TODAY.BWS_MANIFEST_NO AND BWS_MANIFEST_LIST_GPTMP.G_NO=BWS_MANIFEST_LIST_GPTMP_TODAY.G_NO ;
insert into BWS_MANIFEST_LIST_GPTMP_TODAY (CMD_TYPE,BWS_MANIFEST_NO,G_NO,BILL_NO,MAIN_G_NAME,PACK_NO,BILL_GROSS_WT,CONTA_ID,SEAL_NO) select CMD_TYPE,BWS_MANIFEST_NO,G_NO,BILL_NO,MAIN_G_NAME,PACK_NO,BILL_GROSS_WT,CONTA_ID,SEAL_NO from BWS_MANIFEST_LIST_INC_EXT;
delete from BWS_MANIFEST_LIST_GPTMP;
\timing
