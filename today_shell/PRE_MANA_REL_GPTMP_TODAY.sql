\echo ------------------PRE_MANA_REL----------------
select now();
\timing
delete from PRE_MANA_REL_GPTMP;
insert into PRE_MANA_REL_GPTMP (CMD_TYPE,PRE_TRADE_CO, MANAG_NO) select CMD_TYPE,PRE_TRADE_CO, MANAG_NO from PRE_MANA_REL_INC_EXT;
delete from PRE_MANA_REL_GPTMP_TODAY using PRE_MANA_REL_GPTMP where PRE_MANA_REL_GPTMP.PRE_TRADE_CO=PRE_MANA_REL_GPTMP_TODAY.PRE_TRADE_CO AND PRE_MANA_REL_GPTMP.MANAG_NO=PRE_MANA_REL_GPTMP_TODAY.MANAG_NO ;
insert into PRE_MANA_REL_GPTMP_TODAY (CMD_TYPE,PRE_TRADE_CO,MANAG_NO,MANAG_NAME,MANAG_TITLE,MANAG_NAT,MANAG_ID,MANAG_BIR,MANAG_SEX,MANAG_ADDR,MANAG_TEL_BP,MANAG_NOTE,MANAG_DEGREE) select CMD_TYPE,PRE_TRADE_CO,MANAG_NO,MANAG_NAME,MANAG_TITLE,MANAG_NAT,MANAG_ID,MANAG_BIR,MANAG_SEX,MANAG_ADDR,MANAG_TEL_BP,MANAG_NOTE,MANAG_DEGREE from PRE_MANA_REL_INC_EXT;
delete from PRE_MANA_REL_GPTMP;
\timing