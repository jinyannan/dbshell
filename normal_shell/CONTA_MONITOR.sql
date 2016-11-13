\echo ------------------CONTA_MONITOR----------------
select now();
\timing
insert into CONTA_MONITOR_GPTMP (CMD_TYPE,I_E_FLAG, CONTA_ID, DISTRIBUTIVE_NO, IN_OUT_FLAG) select CMD_TYPE,I_E_FLAG, CONTA_ID, DISTRIBUTIVE_NO, IN_OUT_FLAG from CONTA_MONITOR_INC_EXT;

delete from CONTA_MONITOR using CONTA_MONITOR_GPTMP where CONTA_MONITOR_GPTMP.I_E_FLAG=CONTA_MONITOR.I_E_FLAG AND CONTA_MONITOR_GPTMP.CONTA_ID=CONTA_MONITOR.CONTA_ID AND CONTA_MONITOR_GPTMP.DISTRIBUTIVE_NO=CONTA_MONITOR.DISTRIBUTIVE_NO AND CONTA_MONITOR_GPTMP.IN_OUT_FLAG=CONTA_MONITOR.IN_OUT_FLAG ;

insert into CONTA_MONITOR(I_E_FLAG,CONTA_ID,DISTRIBUTIVE_NO,IN_OUT_FLAG,TRANSIT_DATE,ORIGIN_CUS_CODE,DEST_CUS_CODE,FORM_FLAG,ORIGIN_CUS_PLACE,DEST_CUS_PLACE,DRIVER_NO,TRAF_MODE,SEAL_NO,TRANSIT_NAME,CAR_NUMBER,TRANSIT_WAY) select I_E_FLAG,CONTA_ID,DISTRIBUTIVE_NO,IN_OUT_FLAG,TRANSIT_DATE,ORIGIN_CUS_CODE,DEST_CUS_CODE,FORM_FLAG,ORIGIN_CUS_PLACE,DEST_CUS_PLACE,DRIVER_NO,TRAF_MODE,SEAL_NO,TRANSIT_NAME,CAR_NUMBER,TRANSIT_WAY from CONTA_MONITOR_INC_EXT where CMD_TYPE='I';

delete from CONTA_MONITOR_GPTMP;

\timing
