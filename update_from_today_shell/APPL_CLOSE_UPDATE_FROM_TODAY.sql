\echo -----------------------APPL_CLOSE------------------------
select now();
\timing
delete from APPL_CLOSE using APPL_CLOSE_GPTMP_TODAY where APPL_CLOSE.MANUAL_NO=APPL_CLOSE_GPTMP_TODAY.MANUAL_NO ;
insert into APPL_CLOSE (MANUAL_NO,APPL_NO,APPL_DATE,DECL_IN_AMT,DECL_EX_AMT,DECL_IN_COUNT,DECL_EX_COUNT,REMAIN_IN_AMT,REMAIN_EX_AMT,RESOR_IN_COUNT,PRODU_IN_COUNT,RESOR_EX_COUNT,PRODU_EX_COUNT,RESOR_IN_AMT,PRODU_IN_AMT,RESOR_EX_AMT,PRODU_EX_AMT,DC_DATE,TYPE_ER,DECL_CO,CHK_ER,RECHK_ER,CHK_DATE,RECHK_DATE,NOTE_S) select MANUAL_NO,APPL_NO,APPL_DATE,DECL_IN_AMT,DECL_EX_AMT,DECL_IN_COUNT,DECL_EX_COUNT,REMAIN_IN_AMT,REMAIN_EX_AMT,RESOR_IN_COUNT,PRODU_IN_COUNT,RESOR_EX_COUNT,PRODU_EX_COUNT,RESOR_IN_AMT,PRODU_IN_AMT,RESOR_EX_AMT,PRODU_EX_AMT,DC_DATE,TYPE_ER,DECL_CO,CHK_ER,RECHK_ER,CHK_DATE,RECHK_DATE,NOTE_S from APPL_CLOSE_GPTMP_TODAY  where CMD_TYPE='I';
\timing
