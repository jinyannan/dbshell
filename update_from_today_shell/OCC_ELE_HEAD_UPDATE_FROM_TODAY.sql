\echo -----------------------OCC_ELE_HEAD------------------------
select now();
\timing
delete from OCC_ELE_HEAD using OCC_ELE_HEAD_GPTMP_TODAY where OCC_ELE_HEAD.CERTIFICATE_NO=OCC_ELE_HEAD_GPTMP_TODAY.CERTIFICATE_NO AND OCC_ELE_HEAD.AGREEMENT_ID=OCC_ELE_HEAD_GPTMP_TODAY.AGREEMENT_ID AND OCC_ELE_HEAD.ISSUE_PLACE=OCC_ELE_HEAD_GPTMP_TODAY.ISSUE_PLACE ;
insert into OCC_ELE_HEAD (CERTIFICATE_NO,AGREEMENT_ID,ISSUE_PLACE,MODIFY_NUM,TRANSFER_NUM,ISSUE_ORGANIZATION,ISSUE_DATE,VALID_DATE,EXPORTER_NAME,EXPORTER_ADDR,CONSIGNEE_NAME,CONSIGNEE_ADDR,FACTORY_NUMBER,DEPARTURE_DATE,TRANS_MODE,PLACE_OF_LOADING,PORT_OF_DISCHARGE,GOODS_NUM,OPER_MODE,RECV_DATE,REUSE1,REUSE2,HASH_SIGN) select CERTIFICATE_NO,AGREEMENT_ID,ISSUE_PLACE,MODIFY_NUM,TRANSFER_NUM,ISSUE_ORGANIZATION,ISSUE_DATE,VALID_DATE,EXPORTER_NAME,EXPORTER_ADDR,CONSIGNEE_NAME,CONSIGNEE_ADDR,FACTORY_NUMBER,DEPARTURE_DATE,TRANS_MODE,PLACE_OF_LOADING,PORT_OF_DISCHARGE,GOODS_NUM,OPER_MODE,RECV_DATE,REUSE1,REUSE2,HASH_SIGN from OCC_ELE_HEAD_GPTMP_TODAY  where CMD_TYPE='I';
\timing
