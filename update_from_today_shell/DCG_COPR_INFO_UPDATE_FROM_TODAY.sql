\echo -----------------------DCG_COPR_INFO------------------------
select now();
\timing
delete from DCG_COPR_INFO using DCG_COPR_INFO_GPTMP_TODAY where DCG_COPR_INFO.CORP_NO=DCG_COPR_INFO_GPTMP_TODAY.CORP_NO ;
insert into DCG_COPR_INFO (CORP_NO,EXE_MARK,BEGIN_DATE,END_DATE,PROC_ER,PROC_DATE,CUSTOMS_CODE,NOTE,REMARK) select CORP_NO,EXE_MARK,BEGIN_DATE,END_DATE,PROC_ER,PROC_DATE,CUSTOMS_CODE,NOTE,REMARK from DCG_COPR_INFO_GPTMP_TODAY  where CMD_TYPE='I';
\timing
