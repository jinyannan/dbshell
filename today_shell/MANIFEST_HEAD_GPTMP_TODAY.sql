\echo ------------------MANIFEST_HEAD----------------
select now();
\timing
delete from MANIFEST_HEAD_GPTMP;
insert into MANIFEST_HEAD_GPTMP (CMD_TYPE,I_E_FLAG, CUSTOMS_CODE, TRAF_MODE, VOYAGE_NO, SHIP_ID, I_E_DATE) select CMD_TYPE,I_E_FLAG, CUSTOMS_CODE, TRAF_MODE, VOYAGE_NO, SHIP_ID, I_E_DATE from MANIFEST_HEAD_INC_EXT;
delete from MANIFEST_HEAD_GPTMP_TODAY using MANIFEST_HEAD_GPTMP where MANIFEST_HEAD_GPTMP.I_E_FLAG=MANIFEST_HEAD_GPTMP_TODAY.I_E_FLAG AND MANIFEST_HEAD_GPTMP.CUSTOMS_CODE=MANIFEST_HEAD_GPTMP_TODAY.CUSTOMS_CODE AND MANIFEST_HEAD_GPTMP.TRAF_MODE=MANIFEST_HEAD_GPTMP_TODAY.TRAF_MODE AND MANIFEST_HEAD_GPTMP.VOYAGE_NO=MANIFEST_HEAD_GPTMP_TODAY.VOYAGE_NO AND MANIFEST_HEAD_GPTMP.SHIP_ID=MANIFEST_HEAD_GPTMP_TODAY.SHIP_ID AND MANIFEST_HEAD_GPTMP.I_E_DATE=MANIFEST_HEAD_GPTMP_TODAY.I_E_DATE ;
insert into MANIFEST_HEAD_GPTMP_TODAY (CMD_TYPE,I_E_FLAG,CUSTOMS_CODE,TRAF_MODE,VOYAGE_NO,SHIP_ID,I_E_DATE,I_E_PORT,SHIP_NAME_CN,SHIP_NAME_EN,CONTA_NUM,EMPTY_CONTA_NUM,T_GROSS_WT,T_PACK_NO,BILL_NUM,TAL_FLAG,D_MODE,D_DATE,BILL_FLAG,OP_ID,MANIFEST_NO) select CMD_TYPE,I_E_FLAG,CUSTOMS_CODE,TRAF_MODE,VOYAGE_NO,SHIP_ID,I_E_DATE,I_E_PORT,SHIP_NAME_CN,SHIP_NAME_EN,CONTA_NUM,EMPTY_CONTA_NUM,T_GROSS_WT,T_PACK_NO,BILL_NUM,TAL_FLAG,D_MODE,D_DATE,BILL_FLAG,OP_ID,MANIFEST_NO from MANIFEST_HEAD_INC_EXT;
delete from MANIFEST_HEAD_GPTMP;
\timing
