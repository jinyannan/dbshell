\echo -----------------------EX_EXAM_MANA_LIST------------------------
select now();
\timing
delete from EX_EXAM_MANA_LIST using EX_EXAM_MANA_LIST_GPTMP_TODAY where EX_EXAM_MANA_LIST.LICENSE_NO=EX_EXAM_MANA_LIST_GPTMP_TODAY.LICENSE_NO AND EX_EXAM_MANA_LIST.L_G_NO=EX_EXAM_MANA_LIST_GPTMP_TODAY.L_G_NO ;
insert into EX_EXAM_MANA_LIST (LICENSE_NO,L_G_NO,L_FACT_AQTY,L_FACT_AUSED,L_REUSE1,L_REUSE2) select LICENSE_NO,L_G_NO,L_FACT_AQTY,L_FACT_AUSED,L_REUSE1,L_REUSE2 from EX_EXAM_MANA_LIST_GPTMP_TODAY  where CMD_TYPE='I';
\timing
