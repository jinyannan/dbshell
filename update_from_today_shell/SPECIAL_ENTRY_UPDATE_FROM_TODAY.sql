\echo -----------------------SPECIAL_ENTRY------------------------
select now();
\timing
delete from SPECIAL_ENTRY using SPECIAL_ENTRY_GPTMP_TODAY where SPECIAL_ENTRY.ENTRY_ID=SPECIAL_ENTRY_GPTMP_TODAY.ENTRY_ID AND SPECIAL_ENTRY.OP_TIME=SPECIAL_ENTRY_GPTMP_TODAY.OP_TIME ;
insert into SPECIAL_ENTRY (ENTRY_ID,OP_TIME,OP_ER,OP_NOTE,OP_FLAG,REV_ER,REV_TIME,END_ER,END_TIME,END_NOTE) select ENTRY_ID,OP_TIME,OP_ER,OP_NOTE,OP_FLAG,REV_ER,REV_TIME,END_ER,END_TIME,END_NOTE from SPECIAL_ENTRY_GPTMP_TODAY  where CMD_TYPE='I';
\timing
