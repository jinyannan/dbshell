\echo ------------------EGS_DEDUCT----------------
select now();
\timing
delete from EGS_DEDUCT_GPTMP;
insert into EGS_DEDUCT_GPTMP (CMD_TYPE,DECL_NO, DECL_G_NO, CLR_NO, CLR_G_NO) select CMD_TYPE,DECL_NO, DECL_G_NO, CLR_NO, CLR_G_NO from EGS_DEDUCT_INC_EXT;
delete from EGS_DEDUCT_GPTMP_TODAY using EGS_DEDUCT_GPTMP where EGS_DEDUCT_GPTMP.DECL_NO=EGS_DEDUCT_GPTMP_TODAY.DECL_NO AND EGS_DEDUCT_GPTMP.DECL_G_NO=EGS_DEDUCT_GPTMP_TODAY.DECL_G_NO AND EGS_DEDUCT_GPTMP.CLR_NO=EGS_DEDUCT_GPTMP_TODAY.CLR_NO AND EGS_DEDUCT_GPTMP.CLR_G_NO=EGS_DEDUCT_GPTMP_TODAY.CLR_G_NO ;
insert into EGS_DEDUCT_GPTMP_TODAY (CMD_TYPE,DECL_NO,DECL_G_NO,CLR_NO,CLR_G_NO,CLR_QTY,CLR_MODE,CLR_DATE,CLR_ER,NOTES) select CMD_TYPE,DECL_NO,DECL_G_NO,CLR_NO,CLR_G_NO,CLR_QTY,CLR_MODE,CLR_DATE,CLR_ER,NOTES from EGS_DEDUCT_INC_EXT;
delete from EGS_DEDUCT_GPTMP;
\timing
