\echo ------------------EMS_VERIFY_DETAIL----------------
select now();
\timing
delete from EMS_VERIFY_DETAIL_GPTMP;
insert into EMS_VERIFY_DETAIL_GPTMP (CMD_TYPE,EMS_NO, G_TYPE, G_NO, D_TYPE, E_TYPE) select CMD_TYPE,EMS_NO, G_TYPE, G_NO, D_TYPE, E_TYPE from EMS_VERIFY_DETAIL_INC_EXT;
delete from EMS_VERIFY_DETAIL_GPTMP_TODAY using EMS_VERIFY_DETAIL_GPTMP where EMS_VERIFY_DETAIL_GPTMP.EMS_NO=EMS_VERIFY_DETAIL_GPTMP_TODAY.EMS_NO AND EMS_VERIFY_DETAIL_GPTMP.G_TYPE=EMS_VERIFY_DETAIL_GPTMP_TODAY.G_TYPE AND EMS_VERIFY_DETAIL_GPTMP.G_NO=EMS_VERIFY_DETAIL_GPTMP_TODAY.G_NO AND EMS_VERIFY_DETAIL_GPTMP.D_TYPE=EMS_VERIFY_DETAIL_GPTMP_TODAY.D_TYPE AND EMS_VERIFY_DETAIL_GPTMP.E_TYPE=EMS_VERIFY_DETAIL_GPTMP_TODAY.E_TYPE ;
insert into EMS_VERIFY_DETAIL_GPTMP_TODAY (CMD_TYPE,EMS_NO,G_TYPE,G_NO,D_TYPE,E_TYPE,QTY) select CMD_TYPE,EMS_NO,G_TYPE,G_NO,D_TYPE,E_TYPE,QTY from EMS_VERIFY_DETAIL_INC_EXT;
delete from EMS_VERIFY_DETAIL_GPTMP;
\timing
