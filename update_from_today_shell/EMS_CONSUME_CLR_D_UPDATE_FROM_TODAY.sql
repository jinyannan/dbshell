\echo -----------------------EMS_CONSUME_CLR_D------------------------
select now();
\timing
delete from EMS_CONSUME_CLR_D using EMS_CONSUME_CLR_D_GPTMP_TODAY where EMS_CONSUME_CLR_D.EMS_NO=EMS_CONSUME_CLR_D_GPTMP_TODAY.EMS_NO AND EMS_CONSUME_CLR_D.IMG_NO=EMS_CONSUME_CLR_D_GPTMP_TODAY.IMG_NO AND EMS_CONSUME_CLR_D.EXG_NO=EMS_CONSUME_CLR_D_GPTMP_TODAY.EXG_NO AND EMS_CONSUME_CLR_D.EXG_VERSION=EMS_CONSUME_CLR_D_GPTMP_TODAY.EXG_VERSION ;
insert into EMS_CONSUME_CLR_D (EMS_NO,IMG_NO,EXG_NO,EXG_VERSION,QTY,DEC_CM_QTY,MODIFY_MARK,ETL_MARK) select EMS_NO,IMG_NO,EXG_NO,EXG_VERSION,QTY,DEC_CM_QTY,MODIFY_MARK,ETL_MARK from EMS_CONSUME_CLR_D_GPTMP_TODAY  where CMD_TYPE='I';
\timing