\echo -----------------------TMP_EMS_DCR_ENT------------------------
select now();
\timing
delete from TMP_EMS_DCR_ENT using TMP_EMS_DCR_ENT_GPTMP_TODAY where TMP_EMS_DCR_ENT.EMS_NO=TMP_EMS_DCR_ENT_GPTMP_TODAY.EMS_NO AND TMP_EMS_DCR_ENT.DCR_TIMES=TMP_EMS_DCR_ENT_GPTMP_TODAY.DCR_TIMES AND TMP_EMS_DCR_ENT.ENTRY_ID=TMP_EMS_DCR_ENT_GPTMP_TODAY.ENTRY_ID ;
insert into TMP_EMS_DCR_ENT (EMS_NO,DCR_TIMES,ENTRY_ID,MASTER_CUSTOMS,I_E_FLAG,ITEMS_NUM,DECLARE_DATE,I_E_DATE,DU_CODE,ENT_MARK,NOTE,MODIFY_MARK) select EMS_NO,DCR_TIMES,ENTRY_ID,MASTER_CUSTOMS,I_E_FLAG,ITEMS_NUM,DECLARE_DATE,I_E_DATE,DU_CODE,ENT_MARK,NOTE,MODIFY_MARK from TMP_EMS_DCR_ENT_GPTMP_TODAY  where CMD_TYPE='I';
\timing
