\echo -----------------------COP_SPEC_REL------------------------
select now();
\timing
delete from COP_SPEC_REL using COP_SPEC_REL_GPTMP_TODAY where COP_SPEC_REL.ENTRY_ID=COP_SPEC_REL_GPTMP_TODAY.ENTRY_ID AND COP_SPEC_REL.AUTH_ID=COP_SPEC_REL_GPTMP_TODAY.AUTH_ID ;
insert into COP_SPEC_REL (ENTRY_ID,STEP_STATUS,PASS_CODE,AUTH_ID,AUTH_DATETIME,AUTH_PORT,AUTH_NOTE,PASS_ID,PASS_DATETIME,PASS_PORT) select ENTRY_ID,STEP_STATUS,PASS_CODE,AUTH_ID,AUTH_DATETIME,AUTH_PORT,AUTH_NOTE,PASS_ID,PASS_DATETIME,PASS_PORT from COP_SPEC_REL_GPTMP_TODAY  where CMD_TYPE='I';
\timing