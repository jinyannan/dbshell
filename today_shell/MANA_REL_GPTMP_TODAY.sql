\echo ------------------MANA_REL----------------
select now();
\timing
delete from MANA_REL_GPTMP;
insert into MANA_REL_GPTMP (CMD_TYPE,TRADE_CO, MANAG_NO) select CMD_TYPE,TRADE_CO, MANAG_NO from MANA_REL_INC_EXT;
delete from MANA_REL_GPTMP_TODAY using MANA_REL_GPTMP where MANA_REL_GPTMP.TRADE_CO=MANA_REL_GPTMP_TODAY.TRADE_CO AND MANA_REL_GPTMP.MANAG_NO=MANA_REL_GPTMP_TODAY.MANAG_NO ;
insert into MANA_REL_GPTMP_TODAY (CMD_TYPE,TRADE_CO,MANAG_NO,MANAG_NAME,MANAG_TITLE,MANAG_NAT,MANAG_ID,MANAG_BIR,MANAG_SEX,MANAG_ADDR,MANAG_TEL_BP,MANAG_NOTE,MANAG_DEGREE,MANAG_MAR) select CMD_TYPE,TRADE_CO,MANAG_NO,MANAG_NAME,MANAG_TITLE,MANAG_NAT,MANAG_ID,MANAG_BIR,MANAG_SEX,MANAG_ADDR,MANAG_TEL_BP,MANAG_NOTE,MANAG_DEGREE,MANAG_MAR from MANA_REL_INC_EXT;
delete from MANA_REL_GPTMP;
\timing
