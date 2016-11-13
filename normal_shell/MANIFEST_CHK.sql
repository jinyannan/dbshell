\echo ------------------MANIFEST_CHK----------------
select now();
\timing
insert into MANIFEST_CHK_GPTMP (CMD_TYPE,BILL_NO, SHIP_ID, VOYAGE_NO, CUSTOMS_CODE, TRAF_MODE, I_E_FLAG, FORM_ID) select CMD_TYPE,BILL_NO, SHIP_ID, VOYAGE_NO, CUSTOMS_CODE, TRAF_MODE, I_E_FLAG, FORM_ID from MANIFEST_CHK_INC_EXT;

delete from MANIFEST_CHK using MANIFEST_CHK_GPTMP where MANIFEST_CHK_GPTMP.BILL_NO=MANIFEST_CHK.BILL_NO AND MANIFEST_CHK_GPTMP.SHIP_ID=MANIFEST_CHK.SHIP_ID AND MANIFEST_CHK_GPTMP.VOYAGE_NO=MANIFEST_CHK.VOYAGE_NO AND MANIFEST_CHK_GPTMP.CUSTOMS_CODE=MANIFEST_CHK.CUSTOMS_CODE AND MANIFEST_CHK_GPTMP.TRAF_MODE=MANIFEST_CHK.TRAF_MODE AND MANIFEST_CHK_GPTMP.I_E_FLAG=MANIFEST_CHK.I_E_FLAG AND MANIFEST_CHK_GPTMP.FORM_ID=MANIFEST_CHK.FORM_ID ;

insert into MANIFEST_CHK(I_E_FLAG,FORM_ID,SHIP_ID,VOYAGE_NO,BILL_NO,TRAF_MODE,CUSTOMS_CODE,SHIP_NAME_EN,FORM_FLAG,PACK_NO,GROSS_WT,CHK_MARK,CHK_ER,CHK_DATE,DELAY_DAYS,REL_ER,REL_DATE,COUNTRY_CODE,NOTES) select I_E_FLAG,FORM_ID,SHIP_ID,VOYAGE_NO,BILL_NO,TRAF_MODE,CUSTOMS_CODE,SHIP_NAME_EN,FORM_FLAG,PACK_NO,GROSS_WT,CHK_MARK,CHK_ER,CHK_DATE,DELAY_DAYS,REL_ER,REL_DATE,COUNTRY_CODE,NOTES from MANIFEST_CHK_INC_EXT where CMD_TYPE='I';

delete from MANIFEST_CHK_GPTMP;

\timing
