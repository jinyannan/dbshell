\echo -----------------------TRN_SHIP------------------------
select now();
\timing
delete from TRN_SHIP using TRN_SHIP_GPTMP_TODAY where TRN_SHIP.CUSTOM_NO=TRN_SHIP_GPTMP_TODAY.CUSTOM_NO ;
insert into TRN_SHIP (CUSTOM_NO,VALID_FLAG,CK_FLAG,MAN_CUSTOM_NO,DR_NAME,CO_NAME,SHIP_NO,VALID_DATE,OPERATOR_NO,INPUT_DATE,CO_ADDRESS,CO_TELE,CO_MAIL,TRAF_FLAG,TRAF_NOTE) select CUSTOM_NO,VALID_FLAG,CK_FLAG,MAN_CUSTOM_NO,DR_NAME,CO_NAME,SHIP_NO,VALID_DATE,OPERATOR_NO,INPUT_DATE,CO_ADDRESS,CO_TELE,CO_MAIL,TRAF_FLAG,TRAF_NOTE from TRN_SHIP_GPTMP_TODAY  where CMD_TYPE='I';
\timing