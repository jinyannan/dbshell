\echo -----------------------CUSTOMS_DEFAULT------------------------
select now();
\timing
delete from CUSTOMS_DEFAULT using CUSTOMS_DEFAULT_GPTMP_TODAY where CUSTOMS_DEFAULT.MASTER_CUSTOMS=CUSTOMS_DEFAULT_GPTMP_TODAY.MASTER_CUSTOMS ;
insert into CUSTOMS_DEFAULT (MASTER_CUSTOMS,ADDRESS,POST_CODE,BANK_ACCOUNT,DEPARTMENT,PHONE_NO,RED_SWITCH,MODIFY_DATE,NOTE) select MASTER_CUSTOMS,ADDRESS,POST_CODE,BANK_ACCOUNT,DEPARTMENT,PHONE_NO,RED_SWITCH,MODIFY_DATE,NOTE from CUSTOMS_DEFAULT_GPTMP_TODAY  where CMD_TYPE='I';
\timing
