\echo -----------------------FCB_CHK------------------------
select now();
\timing
delete from FCB_CHK using FCB_CHK_GPTMP_TODAY where FCB_CHK.FCB_ID=FCB_CHK_GPTMP_TODAY.FCB_ID AND FCB_CHK.FORM_FLAG=FCB_CHK_GPTMP_TODAY.FORM_FLAG AND FCB_CHK.ENTRY_ID=FCB_CHK_GPTMP_TODAY.ENTRY_ID ;
insert into FCB_CHK (FCB_ID,FORM_FLAG,ENTRY_ID,CUSTOMS_CODE,PACK_NO,GROSS_WT,CHK_ER,CHK_DATE,REL_ER,REL_DATE,RTX_ER,RTX_DATE,NOTE) select FCB_ID,FORM_FLAG,ENTRY_ID,CUSTOMS_CODE,PACK_NO,GROSS_WT,CHK_ER,CHK_DATE,REL_ER,REL_DATE,RTX_ER,RTX_DATE,NOTE from FCB_CHK_GPTMP_TODAY  where CMD_TYPE='I';
\timing
