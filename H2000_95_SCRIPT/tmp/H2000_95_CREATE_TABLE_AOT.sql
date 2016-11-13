\echo --------------ENTRY_HEAD------------

create table ENTRY_HEAD
(
  ENTRY_ID           VARCHAR(18)  ,
  PRE_ENTRY_ID       VARCHAR(18),
  ID_CHK             VARCHAR(1),
  I_E_FLAG           VARCHAR(1),
  I_E_PORT           VARCHAR(4),
  I_E_DATE           TIMESTAMP,
  D_DATE             TIMESTAMP,
  DESTINATION_PORT   VARCHAR(4),
  TRAF_NAME          VARCHAR(255),
  VOYAGE_NO          VARCHAR(32),
  TRAF_MODE          VARCHAR(1),
  TRADE_CO           VARCHAR(10),
  TRADE_NAME         VARCHAR(255),
  DISTRICT_CODE      VARCHAR(5),
  OWNER_CODE         VARCHAR(10),
  OWNER_NAME         VARCHAR(255),
  AGENT_CODE         VARCHAR(10),
  AGENT_NAME         VARCHAR(255),
  CONTR_NO           VARCHAR(32),
  IN_RATIO           NUMERIC(19,5),
  BILL_NO            VARCHAR(32),
  TRADE_COUNTRY      VARCHAR(3),
  TRADE_MODE         VARCHAR(4),
  CUT_MODE           VARCHAR(3),
  TRANS_MODE         VARCHAR(1),
  CONTAINER_NO       NUMERIC(19,4),
  PAY_WAY            VARCHAR(1),
  FEE_MARK           VARCHAR(1),
  FEE_CURR           VARCHAR(3),
  FEE_RATE           NUMERIC(19,5),
  INSUR_MARK         VARCHAR(1),
  INSUR_CURR         VARCHAR(3),
  INSUR_RATE         NUMERIC(19,5),
  OTHER_MARK         VARCHAR(1),
  OTHER_CURR         VARCHAR(3),
  OTHER_RATE         NUMERIC(19,5),
  PACK_NO            NUMERIC(19),
  GROSS_WT           NUMERIC(19,5),
  NET_WT             NUMERIC(19,5),
  WRAP_TYPE          VARCHAR(32),
  MANUAL_NO          VARCHAR(12),
  LICENSE_NO         VARCHAR(20),
  APPR_NO            VARCHAR(32),
  NOTE_S             VARCHAR(255),
  DECL_PORT          VARCHAR(4)  ,
  CO_OWNER           VARCHAR(1),
  TAXY_RG_NO         VARCHAR(32),
  MNL_JGF_FLAG       VARCHAR(1),
  SERVICE_FEE        NUMERIC(19,4),
  SERVICE_RATE       NUMERIC(19,5),
  RELATIVE_ID        VARCHAR(18),
  BONDED_NO          VARCHAR(32),
  BP_NO              VARCHAR(255),
  TYPIST_NO          VARCHAR(32),
  INPUT_NO           VARCHAR(32),
  P_DATE             TIMESTAMP,
  CTA_CHK_RESULT     VARCHAR(255),
  MODI_NO            NUMERIC(19),
  EDI_ID             VARCHAR(1),
  STATUS_RESULT      VARCHAR(120),
  DECLARE_NO         VARCHAR(32),
  JOU_EVENT          VARCHAR(15),
  JOU_FLAG           VARCHAR(15),
  EDI_REMARK         VARCHAR(32),
  PARTNER_ID         VARCHAR(20),
  CUSTOMS_FIELD      VARCHAR(8),
  ENTRY_TYPE         VARCHAR(4),
  RELATIVE_MANUAL_NO VARCHAR(12),
  PRICE_RANGE        NUMERIC(19,4),
  SPECIAL_FLAG       VARCHAR(1),
  DELAY_DAYS         NUMERIC(19),
  DELAY_ACCOUNT      NUMERIC(19,2),
  HASH_SIGN          VARCHAR(380)
)
WITH(appendonly=true,orientation=column,compresstype=QUICKLZ,COMPRESSLEVEL=1)
DISTRIBUTED BY (ENTRY_ID);


\echo --------------ENTRY_LIST------------

create table ENTRY_LIST
(
  ENTRY_ID       VARCHAR(18)  ,
  G_NO           NUMERIC(19)  ,
  CODE_TS        VARCHAR(16),
  G_NAME         VARCHAR(255),
  G_MODEL        VARCHAR(255),
  ORIGIN_COUNTRY VARCHAR(3),
  CONTR_ITEM     NUMERIC(19),
  TRADE_CURR     VARCHAR(3),
  EXCHANGE_RATE  NUMERIC(19,7),
  DECL_PRICE     NUMERIC(19,5),
  DECL_TOTAL     NUMERIC(19,4),
  USE_TO         VARCHAR(2),
  DUTY_MODE      VARCHAR(1),
  G_QTY          NUMERIC(19,5),
  G_UNIT         VARCHAR(3),
  QTY_1          NUMERIC(19,5),
  UNIT_1         VARCHAR(3),
  QTY_2          NUMERIC(19,5),
  UNIT_2         VARCHAR(3),
  TRADE_TOTAL    NUMERIC(19,4),
  RMB_PRICE      NUMERIC(19),
  USD_PRICE      NUMERIC(19),
  DUTY_VALUE     NUMERIC(19),
  G_PROCESS_MARK VARCHAR(2),
  WORK_USD       NUMERIC(19,4),
  CLASS_MARK     VARCHAR(1),
  G_CERT_FLAG    VARCHAR(32),
  TARIFF_MARK    VARCHAR(32),
  DUTY_TYPE      VARCHAR(1),
  REAL_DUTY      NUMERIC(19,4),
  DUTY_CUT       NUMERIC(19,4),
  DUTY_RATE      NUMERIC(19,5),
  D_RATE         NUMERIC(19,5),
  QTY_DUTY_RATE  NUMERIC(19,5),
  QTY_D_RATE     NUMERIC(19,5),
  TAX_TYPE       VARCHAR(1),
  REAL_TAX       NUMERIC(19,4),
  TAX_CUT        NUMERIC(19,4),
  TAX_RATE       NUMERIC(19,5),
  T_RATE         NUMERIC(19,5),
  QTY_TAX_RATE   NUMERIC(19,5),
  QTY_T_RATE     NUMERIC(19,5),
  REG_TYPE       VARCHAR(1),
  REAL_REG       NUMERIC(19,4),
  REG_CUT        NUMERIC(19,4),
  REG_RATE       NUMERIC(19,5),
  R_RATE         NUMERIC(19,5),
  QTY_REG_RATE   NUMERIC(19,5),
  QTY_R_RATE     NUMERIC(19,5),
  OIL_TYPE       VARCHAR(1),
  REAL_OIL       NUMERIC(19,4),
  OIL_CUT        NUMERIC(19,4),
  OIL_RATE       NUMERIC(19,5),
  O_RATE         NUMERIC(19,5),
  QTY_OIL_RATE   NUMERIC(19,5),
  QTY_O_RATE     NUMERIC(19,5),
  ANTI_TYPE      VARCHAR(1),
  REAL_ANTI      NUMERIC(19,4),
  ANTI_CUT       NUMERIC(19,4),
  ANTI_RATE      NUMERIC(19,5),
  A_RATE         NUMERIC(19,5),
  QTY_ANTI_RATE  NUMERIC(19,5),
  QTY_A_RATE     NUMERIC(19,5),
  PRDT_NO        VARCHAR(32),
  GOODS_ID       VARCHAR(32),
  DECL_CODE_TS   VARCHAR(16),
  AGREEMENT_ID   VARCHAR(2),
  RSV1_TYPE      VARCHAR(1),
  REAL_RSV1      NUMERIC(19,4),
  RSV1_CUT       NUMERIC(19,4),
  RSV1_RATE      NUMERIC(19,5),
  R1_RATE        NUMERIC(19,5),
  QTY_RSV1_RATE  NUMERIC(19,5),
  QTY_R1_RATE    NUMERIC(19,5),
  RSV2_TYPE      VARCHAR(1),
  REAL_RSV2      NUMERIC(19,4),
  RSV2_CUT       NUMERIC(19,4),
  RSV2_RATE      NUMERIC(19,5),
  R2_RATE        NUMERIC(19,5),
  QTY_RSV2_RATE  NUMERIC(19,5),
  QTY_R2_RATE    NUMERIC(19,5)
)
WITH(appendonly=true,orientation=column,compresstype=QUICKLZ,COMPRESSLEVEL=1)
DISTRIBUTED BY (ENTRY_ID);

\echo --------------ENTRY_WORKFLOW------------

create  table ENTRY_WORKFLOW
(
  ENTRY_ID    VARCHAR(18)  ,
  STEP_ID     VARCHAR(8)  ,
  CREATE_DATE TIMESTAMP  ,
  PROC_POS    VARCHAR(4),
  STATUS_CODE VARCHAR(32),
  PROC_ER     VARCHAR(8),
  PROC_RESULT VARCHAR(8),
  PREV_POS    VARCHAR(4),
  PREV_ER     VARCHAR(8),
  RECHK_MARK  VARCHAR(1),
  RECHK_COMM  VARCHAR(255)
)
WITH(appendonly=true,orientation=column,compresstype=QUICKLZ,COMPRESSLEVEL=1)
DISTRIBUTED BY (ENTRY_ID);

\echo --------------ENTRY_PROC------------

create table ENTRY_PROC
(
  ENTRY_ID        VARCHAR(18)  ,
  I_E_FLAG        VARCHAR(1),
  D_DATE          TIMESTAMP,
  DECL_PORT       VARCHAR(4)  ,
  SPECIAL_DECLARE VARCHAR(1),
  ACE_TIME        TIMESTAMP,
  ACE_RESULT      VARCHAR(8),
  QUICK_PASS_MODE VARCHAR(1),
  CTR_TIME        TIMESTAMP,
  CTR_RESULT      VARCHAR(8),
  CHANNEL         VARCHAR(2),
  CHANNEL_TIME    TIMESTAMP,
  CHANNEL_ER      VARCHAR(8),
  REC_TIME        TIMESTAMP,
  REC_ER          VARCHAR(8),
  CHK_TIME        TIMESTAMP,
  CHK_RESULT      VARCHAR(8),
  CHK_ER          VARCHAR(8),
  TAX_PRINT_TIME  TIMESTAMP,
  REL_TIME        TIMESTAMP,
  REL_RESULT      VARCHAR(8),
  REL_ER          VARCHAR(8),
  GOODS_REL_TIME  TIMESTAMP,
  GOODS_REL_ER    VARCHAR(8),
  RTX_TIME        TIMESTAMP,
  RTX_ER          VARCHAR(8),
  PREL_TIME       TIMESTAMP,
  PREL_RESULT     VARCHAR(8),
  PREL_ER         VARCHAR(8),
  RECTR_TIME      TIMESTAMP,
  RECTR_ER        VARCHAR(8),
  LAST_STEP       VARCHAR(8),
  LAST_STEP_TIME  TIMESTAMP,
  RSV_1           VARCHAR(8),
  RSV_2           VARCHAR(8),
  RSV_3           VARCHAR(32),
  RSV_4           VARCHAR(32),
  RSV_TIME_1      TIMESTAMP,
  RSV_TIME_2      TIMESTAMP
)
WITH(appendonly=true,orientation=column,compresstype=QUICKLZ,COMPRESSLEVEL=1)
DISTRIBUTED BY (ENTRY_ID);

