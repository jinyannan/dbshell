\echo ------------------PROJECT_MAX_NO_2007----------------
select now();
\timing
delete from PROJECT_MAX_NO_2007_GPTMP;
insert into PROJECT_MAX_NO_2007_GPTMP (CMD_TYPE,MASTER_CUSTOMS, YEAR_4, CUT_MODE) select CMD_TYPE,MASTER_CUSTOMS, YEAR_4, CUT_MODE from PROJECT_MAX_NO_2007_INC_EXT;
delete from PROJECT_MAX_NO_2007_GPTMP_TODAY using PROJECT_MAX_NO_2007_GPTMP where PROJECT_MAX_NO_2007_GPTMP.MASTER_CUSTOMS=PROJECT_MAX_NO_2007_GPTMP_TODAY.MASTER_CUSTOMS AND PROJECT_MAX_NO_2007_GPTMP.YEAR_4=PROJECT_MAX_NO_2007_GPTMP_TODAY.YEAR_4 AND PROJECT_MAX_NO_2007_GPTMP.CUT_MODE=PROJECT_MAX_NO_2007_GPTMP_TODAY.CUT_MODE ;
insert into PROJECT_MAX_NO_2007_GPTMP_TODAY (CMD_TYPE,MASTER_CUSTOMS,YEAR_4,CUT_MODE,MAX_NO) select CMD_TYPE,MASTER_CUSTOMS,YEAR_4,CUT_MODE,MAX_NO from PROJECT_MAX_NO_2007_INC_EXT;
delete from PROJECT_MAX_NO_2007_GPTMP;
\timing
