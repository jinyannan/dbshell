\echo ------------------EMS_PRESS_CLEAR----------------
select now();
\timing
delete from EMS_PRESS_CLEAR_GPTMP;
insert into EMS_PRESS_CLEAR_GPTMP (CMD_TYPE,EMS_NO, PR_NO) select CMD_TYPE,EMS_NO, PR_NO from EMS_PRESS_CLEAR_INC_EXT;
delete from EMS_PRESS_CLEAR_GPTMP_TODAY using EMS_PRESS_CLEAR_GPTMP where EMS_PRESS_CLEAR_GPTMP.EMS_NO=EMS_PRESS_CLEAR_GPTMP_TODAY.EMS_NO AND EMS_PRESS_CLEAR_GPTMP.PR_NO=EMS_PRESS_CLEAR_GPTMP_TODAY.PR_NO ;
insert into EMS_PRESS_CLEAR_GPTMP_TODAY (CMD_TYPE,EMS_NO,PR_NO,PR_COUNT,PR_CUSTOMS,PR_DEPARTMENT,PR_DATE) select CMD_TYPE,EMS_NO,PR_NO,PR_COUNT,PR_CUSTOMS,PR_DEPARTMENT,PR_DATE from EMS_PRESS_CLEAR_INC_EXT;
delete from EMS_PRESS_CLEAR_GPTMP;
\timing
