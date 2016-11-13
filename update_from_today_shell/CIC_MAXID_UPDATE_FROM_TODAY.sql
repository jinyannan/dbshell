\echo -----------------------CIC_MAXID------------------------
select now();
\timing
delete from CIC_MAXID using CIC_MAXID_GPTMP_TODAY where CIC_MAXID.CUS_ID=CIC_MAXID_GPTMP_TODAY.CUS_ID ;
insert into CIC_MAXID (CUS_ID,MAX_ID,IPT_TIME,IPT_ER) select CUS_ID,MAX_ID,IPT_TIME,IPT_ER from CIC_MAXID_GPTMP_TODAY  where CMD_TYPE='I';
\timing
