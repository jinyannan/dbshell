\echo -----------------------RAM_RG_HEAD------------------------
select now();
\timing
delete from RAM_RG_HEAD using RAM_RG_HEAD_GPTMP_TODAY where RAM_RG_HEAD.RAM_ID=RAM_RG_HEAD_GPTMP_TODAY.RAM_ID ;
insert into RAM_RG_HEAD (PRE_RAM_ID,RAM_ID,MASTER_CUSTOMS,RAM_TYPE,INPUT_DATE,INPUT_ER,PRE_PRINT_ER,PRE_PRINT_DATE,DECL_DATE,CHK_DATE,CHK_ER,CHECK_NOTE,RECHK_DATE,RECHK_ER,RECHK_NOTE,REPLY_DATE,REPLY_ER,REPLY_CHECK_NOTE,MODIFY_DATE,MODIFY_ER,MODIFY_NOTE,EXE_MARK,PRINT_DATE,PRINT_ER,SOURCE_TYPE,YD_LINK_CNT) select PRE_RAM_ID,RAM_ID,MASTER_CUSTOMS,RAM_TYPE,INPUT_DATE,INPUT_ER,PRE_PRINT_ER,PRE_PRINT_DATE,DECL_DATE,CHK_DATE,CHK_ER,CHECK_NOTE,RECHK_DATE,RECHK_ER,RECHK_NOTE,REPLY_DATE,REPLY_ER,REPLY_CHECK_NOTE,MODIFY_DATE,MODIFY_ER,MODIFY_NOTE,EXE_MARK,PRINT_DATE,PRINT_ER,SOURCE_TYPE,YD_LINK_CNT from RAM_RG_HEAD_GPTMP_TODAY  where CMD_TYPE='I';
\timing
