\echo -----------------------DISTRIBUTIVE_TRANSIT_WAY------------------------
select now();
\timing
delete from DISTRIBUTIVE_TRANSIT_WAY using DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY where DISTRIBUTIVE_TRANSIT_WAY.DISTRIBUTIVE_NO=DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY.DISTRIBUTIVE_NO AND DISTRIBUTIVE_TRANSIT_WAY.CONTA_ID=DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY.CONTA_ID ;
insert into DISTRIBUTIVE_TRANSIT_WAY (DISTRIBUTIVE_NO,CONTA_ID,TRAF_MODE,SEAL_NO,CAR_NUMBER,DRIVER_NO) select DISTRIBUTIVE_NO,CONTA_ID,TRAF_MODE,SEAL_NO,CAR_NUMBER,DRIVER_NO from DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY  where CMD_TYPE='I';
\timing