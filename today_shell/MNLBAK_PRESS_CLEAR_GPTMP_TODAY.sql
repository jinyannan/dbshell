\echo ------------------MNLBAK_PRESS_CLEAR----------------
select now();
\timing
delete from MNLBAK_PRESS_CLEAR_GPTMP;
insert into MNLBAK_PRESS_CLEAR_GPTMP (CMD_TYPE,MANUAL_NO, PR_NO) select CMD_TYPE,MANUAL_NO, PR_NO from MNLBAK_PRESS_CLEAR_INC_EXT;
delete from MNLBAK_PRESS_CLEAR_GPTMP_TODAY using MNLBAK_PRESS_CLEAR_GPTMP where MNLBAK_PRESS_CLEAR_GPTMP.MANUAL_NO=MNLBAK_PRESS_CLEAR_GPTMP_TODAY.MANUAL_NO AND MNLBAK_PRESS_CLEAR_GPTMP.PR_NO=MNLBAK_PRESS_CLEAR_GPTMP_TODAY.PR_NO ;
insert into MNLBAK_PRESS_CLEAR_GPTMP_TODAY (CMD_TYPE,MANUAL_NO,PR_NO,PR_COUNT,PR_CUSTOMS,PR_DEPARTMENT,PR_DATE) select CMD_TYPE,MANUAL_NO,PR_NO,PR_COUNT,PR_CUSTOMS,PR_DEPARTMENT,PR_DATE from MNLBAK_PRESS_CLEAR_INC_EXT;
delete from MNLBAK_PRESS_CLEAR_GPTMP;
\timing
