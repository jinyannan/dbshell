\echo ------------------DECL_CO_ENTRY_COUNT_TEMP----------------
select now();
\timing
insert into DECL_CO_ENTRY_COUNT_TEMP_GPTMP (CMD_TYPE,GEN_DATE, DECL_CO, RANDOM) select CMD_TYPE,GEN_DATE, DECL_CO, RANDOM from DECL_CO_ENTRY_COUNT_TEMP_INC_EXT;

delete from DECL_CO_ENTRY_COUNT_TEMP using DECL_CO_ENTRY_COUNT_TEMP_GPTMP where DECL_CO_ENTRY_COUNT_TEMP_GPTMP.GEN_DATE=DECL_CO_ENTRY_COUNT_TEMP.GEN_DATE AND DECL_CO_ENTRY_COUNT_TEMP_GPTMP.DECL_CO=DECL_CO_ENTRY_COUNT_TEMP.DECL_CO AND DECL_CO_ENTRY_COUNT_TEMP_GPTMP.RANDOM=DECL_CO_ENTRY_COUNT_TEMP.RANDOM ;

insert into DECL_CO_ENTRY_COUNT_TEMP(DECL_CO,GEN_DATE,RANDOM) select DECL_CO,GEN_DATE,RANDOM from DECL_CO_ENTRY_COUNT_TEMP_INC_EXT where CMD_TYPE='I';

delete from DECL_CO_ENTRY_COUNT_TEMP_GPTMP;

\timing
