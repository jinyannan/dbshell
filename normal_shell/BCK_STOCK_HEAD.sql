\echo ------------------BCK_STOCK_HEAD----------------
select now();
\timing
insert into BCK_STOCK_HEAD_GPTMP (CMD_TYPE,SEQ_NO) select CMD_TYPE,SEQ_NO from BCK_STOCK_HEAD_INC_EXT;

delete from BCK_STOCK_HEAD using BCK_STOCK_HEAD_GPTMP where BCK_STOCK_HEAD_GPTMP.SEQ_NO=BCK_STOCK_HEAD.SEQ_NO ;

insert into BCK_STOCK_HEAD(SEQ_NO,TRADE_CODE,COP_INNER_NO,TRADE_NAME,DECL_DATE,DECL_TYPE,CHECK_TIMES,CHECK_DATE,EMS_TYPE,EMS_NO,REG_NAME,REG_ADDR,LAW_MAN,TELE_ENT,CONTACT_PERSON,TEL_CO,INVESTOR,INV_COUNTRY,RG_FUND,ECO_CY,COP_RANGE,EMPLOYER,WORKSHOP_SRC,EQUIP_SRC,NOTE) select SEQ_NO,TRADE_CODE,COP_INNER_NO,TRADE_NAME,DECL_DATE,DECL_TYPE,CHECK_TIMES,CHECK_DATE,EMS_TYPE,EMS_NO,REG_NAME,REG_ADDR,LAW_MAN,TELE_ENT,CONTACT_PERSON,TEL_CO,INVESTOR,INV_COUNTRY,RG_FUND,ECO_CY,COP_RANGE,EMPLOYER,WORKSHOP_SRC,EQUIP_SRC,NOTE from BCK_STOCK_HEAD_INC_EXT where CMD_TYPE='I';

delete from BCK_STOCK_HEAD_GPTMP;

\timing