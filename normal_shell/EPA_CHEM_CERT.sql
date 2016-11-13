\echo ------------------EPA_CHEM_CERT----------------
select now();
\timing
insert into EPA_CHEM_CERT_GPTMP (CMD_TYPE,CERTIFICATE_NO) select CMD_TYPE,CERTIFICATE_NO from EPA_CHEM_CERT_INC_EXT;

delete from EPA_CHEM_CERT using EPA_CHEM_CERT_GPTMP where EPA_CHEM_CERT_GPTMP.CERTIFICATE_NO=EPA_CHEM_CERT.CERTIFICATE_NO ;

insert into EPA_CHEM_CERT(CERTIFICATE_NO,TRANSFER_NUM,ISSUE_ORGANIZATION,ISSUE_DATE,BEGIN_DATE,END_DATE,TRADE_REG_NO,TRADE_CO,TRADE_NAME,OWNER_REG_NO,OWNER_CODE,OWNER_NAME,CODE_TS,G_NAME_CN,G_NAME_EN,G_NAME,G_NAME_OTHER,G_QTY,G_UNIT,DECL_PORT,PACK_TYPE,TRAF_MODE,TRADE_MODE,PLACE_OF_TRADE,PLACE_OF_FROM,ORIGIN_COUNTRY,PLACE_OF_TRANSFER,NOTE,OP_MODE,RECV_DATE) select CERTIFICATE_NO,TRANSFER_NUM,ISSUE_ORGANIZATION,ISSUE_DATE,BEGIN_DATE,END_DATE,TRADE_REG_NO,TRADE_CO,TRADE_NAME,OWNER_REG_NO,OWNER_CODE,OWNER_NAME,CODE_TS,G_NAME_CN,G_NAME_EN,G_NAME,G_NAME_OTHER,G_QTY,G_UNIT,DECL_PORT,PACK_TYPE,TRAF_MODE,TRADE_MODE,PLACE_OF_TRADE,PLACE_OF_FROM,ORIGIN_COUNTRY,PLACE_OF_TRANSFER,NOTE,OP_MODE,RECV_DATE from EPA_CHEM_CERT_INC_EXT where CMD_TYPE='I';

delete from EPA_CHEM_CERT_GPTMP;

\timing
