\echo ------------------TRN_ESEAL_REL----------------
select now();
\timing
insert into TRN_ESEAL_REL_GPTMP (CMD_TYPE,ESEAL_ID) select CMD_TYPE,ESEAL_ID from TRN_ESEAL_REL_INC_EXT;

delete from TRN_ESEAL_REL using TRN_ESEAL_REL_GPTMP where TRN_ESEAL_REL_GPTMP.ESEAL_ID=TRN_ESEAL_REL.ESEAL_ID ;

insert into TRN_ESEAL_REL(ESEAL_ID,CUSTOMS_CODE,CO_REG_NO,CO_NAME,VE_CUSTOMS_NO,VE_NAME,INPUT_OP_ID,INPUT_DATE,VALID_FLAG) select ESEAL_ID,CUSTOMS_CODE,CO_REG_NO,CO_NAME,VE_CUSTOMS_NO,VE_NAME,INPUT_OP_ID,INPUT_DATE,VALID_FLAG from TRN_ESEAL_REL_INC_EXT where CMD_TYPE='I';

delete from TRN_ESEAL_REL_GPTMP;

\timing
