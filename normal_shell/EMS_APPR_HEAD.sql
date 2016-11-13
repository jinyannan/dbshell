\echo ------------------EMS_APPR_HEAD----------------
select now();
\timing
insert into EMS_APPR_HEAD_GPTMP (CMD_TYPE,APPR_NO, RECEIVE_TIMES) select CMD_TYPE,APPR_NO, RECEIVE_TIMES from EMS_APPR_HEAD_INC_EXT;

delete from EMS_APPR_HEAD using EMS_APPR_HEAD_GPTMP where EMS_APPR_HEAD_GPTMP.APPR_NO=EMS_APPR_HEAD.APPR_NO AND EMS_APPR_HEAD_GPTMP.RECEIVE_TIMES=EMS_APPR_HEAD.RECEIVE_TIMES ;

insert into EMS_APPR_HEAD(APPR_NO,RECEIVE_TIMES,MODIFY_NO,EPORT_NO,CORP_CODE,CORP_NAME,CORP_TYPE_NAME,CORP_CUSTOMS_CODE,ENTP_CODE,ENTP_NAME,ENTP_TYPE_NAME,ENTP_CUSTOMS_CODE,EMS_TYPE,DECLARE_TYPE,PRODUCT_RATIO,BEGIN_DATE,END_DATE,CONTR_IN,CONTR_OUT,CONTR_OTHER,AGREE_NO,FOREIGN_CO_NAME,IMG_CURR,IMG_AMOUNT,EXG_AMOUNT,WORK_AMOUNT,HOME_AMOUNT,I_E_PORT,NOTE,ALLOW_TRANS,HAS_EXG_1,HAS_EXG_2,MASTER_CUSTOMS,APPR_FEC,APPR_FEC_NAME,APPR_DATE,MODIFY_APPR_DATE,EXG_CURR,LICENSE_NO,RECEIVE_TIME) select APPR_NO,RECEIVE_TIMES,MODIFY_NO,EPORT_NO,CORP_CODE,CORP_NAME,CORP_TYPE_NAME,CORP_CUSTOMS_CODE,ENTP_CODE,ENTP_NAME,ENTP_TYPE_NAME,ENTP_CUSTOMS_CODE,EMS_TYPE,DECLARE_TYPE,PRODUCT_RATIO,BEGIN_DATE,END_DATE,CONTR_IN,CONTR_OUT,CONTR_OTHER,AGREE_NO,FOREIGN_CO_NAME,IMG_CURR,IMG_AMOUNT,EXG_AMOUNT,WORK_AMOUNT,HOME_AMOUNT,I_E_PORT,NOTE,ALLOW_TRANS,HAS_EXG_1,HAS_EXG_2,MASTER_CUSTOMS,APPR_FEC,APPR_FEC_NAME,APPR_DATE,MODIFY_APPR_DATE,EXG_CURR,LICENSE_NO,RECEIVE_TIME from EMS_APPR_HEAD_INC_EXT where CMD_TYPE='I';

delete from EMS_APPR_HEAD_GPTMP;

\timing
