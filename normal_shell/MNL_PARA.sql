\echo ------------------MNL_PARA----------------
select now();
\timing
insert into MNL_PARA_GPTMP (CMD_TYPE,PARA_TYPE, PARA_ID) select CMD_TYPE,PARA_TYPE, PARA_ID from MNL_PARA_INC_EXT;

delete from MNL_PARA using MNL_PARA_GPTMP where MNL_PARA_GPTMP.PARA_TYPE=MNL_PARA.PARA_TYPE AND MNL_PARA_GPTMP.PARA_ID=MNL_PARA.PARA_ID ;

insert into MNL_PARA(PARA_TYPE,PARA_ID,PARA_NAME,PARA_EXP,PARA_FLAG,PARA_VALUE,PARA_MARK) select PARA_TYPE,PARA_ID,PARA_NAME,PARA_EXP,PARA_FLAG,PARA_VALUE,PARA_MARK from MNL_PARA_INC_EXT where CMD_TYPE='I';

delete from MNL_PARA_GPTMP;

\timing
