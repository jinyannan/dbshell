\echo ------------------MNL_PRESS----------------
select now();
\timing
delete from MNL_PRESS_GPTMP;
insert into MNL_PRESS_GPTMP (CMD_TYPE,PARA_TYPE, PARA_NAME) select CMD_TYPE,PARA_TYPE, PARA_NAME from MNL_PRESS_INC_EXT;
delete from MNL_PRESS_GPTMP_TODAY using MNL_PRESS_GPTMP where MNL_PRESS_GPTMP.PARA_TYPE=MNL_PRESS_GPTMP_TODAY.PARA_TYPE AND MNL_PRESS_GPTMP.PARA_NAME=MNL_PRESS_GPTMP_TODAY.PARA_NAME ;
insert into MNL_PRESS_GPTMP_TODAY (CMD_TYPE,PARA_TYPE,PARA_ID,PARA_NAME,PARA_EXP,PARA_FLAG,PARA_VALUE,PARA_MARK) select CMD_TYPE,PARA_TYPE,PARA_ID,PARA_NAME,PARA_EXP,PARA_FLAG,PARA_VALUE,PARA_MARK from MNL_PRESS_INC_EXT;
delete from MNL_PRESS_GPTMP;
\timing
