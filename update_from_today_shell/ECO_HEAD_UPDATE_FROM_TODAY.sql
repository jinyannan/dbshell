\echo -----------------------ECO_HEAD------------------------
select now();
\timing
delete from ECO_HEAD using ECO_HEAD_GPTMP_TODAY where ECO_HEAD.CERTIFICATE_NO=ECO_HEAD_GPTMP_TODAY.CERTIFICATE_NO ;
insert into ECO_HEAD (CERTIFICATE_NO,TRADE_CO,TRANS_NUM,INVOICE_NO,INVOICE_DATE,INVOICE_CURRTYPE,INVOICE_AMOUNT,I_E_PORT,EXPORTER,MANUFACTURER,CONSIGNEE,DEPARTURE_DATE,TRAF_MODE,TRAF_NAME,DEPART_PORT,DEST_PORT,TRANS_ROUTE,DEST_COUNTRY,TRADE_COUNTRY,DECL_PLACE,DECL_DATE,DECL_SIGNER,ISSUE_PLACE,ISSUE_DATE,ISSUE_SIGNER,VALID_DATE,NOTE,ISSUE_NOTE,ISSUE_DEPARTMENT,AGREEMENT_ID,ENTRY_ID,IN_DATE) select CERTIFICATE_NO,TRADE_CO,TRANS_NUM,INVOICE_NO,INVOICE_DATE,INVOICE_CURRTYPE,INVOICE_AMOUNT,I_E_PORT,EXPORTER,MANUFACTURER,CONSIGNEE,DEPARTURE_DATE,TRAF_MODE,TRAF_NAME,DEPART_PORT,DEST_PORT,TRANS_ROUTE,DEST_COUNTRY,TRADE_COUNTRY,DECL_PLACE,DECL_DATE,DECL_SIGNER,ISSUE_PLACE,ISSUE_DATE,ISSUE_SIGNER,VALID_DATE,NOTE,ISSUE_NOTE,ISSUE_DEPARTMENT,AGREEMENT_ID,ENTRY_ID,IN_DATE from ECO_HEAD_GPTMP_TODAY  where CMD_TYPE='I';
\timing
