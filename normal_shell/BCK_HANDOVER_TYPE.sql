\echo ------------------BCK_HANDOVER_TYPE----------------
select now();
\timing
insert into BCK_HANDOVER_TYPE_GPTMP (CMD_TYPE,HANDOVER_TYPE, ID) select CMD_TYPE,HANDOVER_TYPE, ID from BCK_HANDOVER_TYPE_INC_EXT;

delete from BCK_HANDOVER_TYPE using BCK_HANDOVER_TYPE_GPTMP where BCK_HANDOVER_TYPE_GPTMP.HANDOVER_TYPE=BCK_HANDOVER_TYPE.HANDOVER_TYPE AND BCK_HANDOVER_TYPE_GPTMP.ID=BCK_HANDOVER_TYPE.ID ;

insert into BCK_HANDOVER_TYPE(HANDOVER_TYPE,ID,DESCRIPTION) select HANDOVER_TYPE,ID,DESCRIPTION from BCK_HANDOVER_TYPE_INC_EXT where CMD_TYPE='I';

delete from BCK_HANDOVER_TYPE_GPTMP;

\timing
