\echo ------------------DISTRIBUTIVE_TRANSIT_WAY----------------
select now();
\timing
delete from DISTRIBUTIVE_TRANSIT_WAY_GPTMP;
insert into DISTRIBUTIVE_TRANSIT_WAY_GPTMP (CMD_TYPE,DISTRIBUTIVE_NO, CONTA_ID) select CMD_TYPE,DISTRIBUTIVE_NO, CONTA_ID from DISTRIBUTIVE_TRANSIT_WAY_INC_EXT;
delete from DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY using DISTRIBUTIVE_TRANSIT_WAY_GPTMP where DISTRIBUTIVE_TRANSIT_WAY_GPTMP.DISTRIBUTIVE_NO=DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY.DISTRIBUTIVE_NO AND DISTRIBUTIVE_TRANSIT_WAY_GPTMP.CONTA_ID=DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY.CONTA_ID ;
insert into DISTRIBUTIVE_TRANSIT_WAY_GPTMP_TODAY (CMD_TYPE,DISTRIBUTIVE_NO,CONTA_ID,TRAF_MODE,SEAL_NO,CAR_NUMBER,DRIVER_NO) select CMD_TYPE,DISTRIBUTIVE_NO,CONTA_ID,TRAF_MODE,SEAL_NO,CAR_NUMBER,DRIVER_NO from DISTRIBUTIVE_TRANSIT_WAY_INC_EXT;
delete from DISTRIBUTIVE_TRANSIT_WAY_GPTMP;
\timing
