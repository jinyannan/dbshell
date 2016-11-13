\echo ------------------EMS_CONSUME_CLR_D----------------
select now();
\timing
insert into EMS_CONSUME_CLR_D_GPTMP (CMD_TYPE,EMS_NO, IMG_NO, EXG_NO, EXG_VERSION) select CMD_TYPE,EMS_NO, IMG_NO, EXG_NO, EXG_VERSION from EMS_CONSUME_CLR_D_INC_EXT;

delete from EMS_CONSUME_CLR_D using EMS_CONSUME_CLR_D_GPTMP where EMS_CONSUME_CLR_D_GPTMP.EMS_NO=EMS_CONSUME_CLR_D.EMS_NO AND EMS_CONSUME_CLR_D_GPTMP.IMG_NO=EMS_CONSUME_CLR_D.IMG_NO AND EMS_CONSUME_CLR_D_GPTMP.EXG_NO=EMS_CONSUME_CLR_D.EXG_NO AND EMS_CONSUME_CLR_D_GPTMP.EXG_VERSION=EMS_CONSUME_CLR_D.EXG_VERSION ;

insert into EMS_CONSUME_CLR_D(EMS_NO,IMG_NO,EXG_NO,EXG_VERSION,QTY,DEC_CM_QTY,MODIFY_MARK,ETL_MARK) select EMS_NO,IMG_NO,EXG_NO,EXG_VERSION,QTY,DEC_CM_QTY,MODIFY_MARK,ETL_MARK from EMS_CONSUME_CLR_D_INC_EXT where CMD_TYPE='I';

delete from EMS_CONSUME_CLR_D_GPTMP;

\timing