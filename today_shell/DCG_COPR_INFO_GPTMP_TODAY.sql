\echo ------------------DCG_COPR_INFO----------------
select now();
\timing
delete from DCG_COPR_INFO_GPTMP;
insert into DCG_COPR_INFO_GPTMP (CMD_TYPE,CORP_NO) select CMD_TYPE,CORP_NO from DCG_COPR_INFO_INC_EXT;
delete from DCG_COPR_INFO_GPTMP_TODAY using DCG_COPR_INFO_GPTMP where DCG_COPR_INFO_GPTMP.CORP_NO=DCG_COPR_INFO_GPTMP_TODAY.CORP_NO ;
insert into DCG_COPR_INFO_GPTMP_TODAY (CMD_TYPE,CORP_NO,EXE_MARK,BEGIN_DATE,END_DATE,PROC_ER,PROC_DATE,CUSTOMS_CODE,NOTE,REMARK) select CMD_TYPE,CORP_NO,EXE_MARK,BEGIN_DATE,END_DATE,PROC_ER,PROC_DATE,CUSTOMS_CODE,NOTE,REMARK from DCG_COPR_INFO_INC_EXT;
delete from DCG_COPR_INFO_GPTMP;
\timing
