\echo -----------------------EMS_VERIFY------------------------
select now();
\timing
delete from EMS_VERIFY using EMS_VERIFY_GPTMP_TODAY where EMS_VERIFY.EMS_NO=EMS_VERIFY_GPTMP_TODAY.EMS_NO AND EMS_VERIFY.G_TYPE=EMS_VERIFY_GPTMP_TODAY.G_TYPE AND EMS_VERIFY.G_NO=EMS_VERIFY_GPTMP_TODAY.G_NO ;
insert into EMS_VERIFY (EMS_NO,G_TYPE,G_NO,CODE_TS,G_NAME,UNIT,QTY,MAX_QTY,FIRST_QTY,INC_QTY,INC_QTY_DEDUCT,INC_QTY_ENTRY,CUT_QTY,CUT_QTY_DEDUCT,CUT_QTY_ENTRY,CLR_INC_QTY,CLR_CUT_QTY,RESULT,RESULT2) select EMS_NO,G_TYPE,G_NO,CODE_TS,G_NAME,UNIT,QTY,MAX_QTY,FIRST_QTY,INC_QTY,INC_QTY_DEDUCT,INC_QTY_ENTRY,CUT_QTY,CUT_QTY_DEDUCT,CUT_QTY_ENTRY,CLR_INC_QTY,CLR_CUT_QTY,RESULT,RESULT2 from EMS_VERIFY_GPTMP_TODAY  where CMD_TYPE='I';
\timing
