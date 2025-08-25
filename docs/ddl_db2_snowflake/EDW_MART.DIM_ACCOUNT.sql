CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT (
  ACCOUNT_ID VARCHAR(64), -- Account identifier
  ACCOUNT_NAME VARCHAR(128), -- Account name
  ACCOUNT_NUMBER VARCHAR(64), -- Account number
  ACCOUNT_TYPE_ID NUMBER(38,0), -- Account type identifier
  BUSINESS_COLUMN VARCHAR(64), -- Business-specific attribute
  CLOSE_DATE DATE, -- Account close date
  CREATED_BY VARCHAR(64), -- Account created by user
  CREATE_BATCH_ID NUMBER(38,0), -- Batch ID during creation
  CREATE_DATE_TIME TIMESTAMP_NTZ, -- Creation timestamp
  CURRENCY_CODE VARCHAR(64), -- Currency code associated with account
  CURRENT_FLAG CHAR(1), -- Flag for whether the account is current
  CUSTOMER_ID NUMBER(38,0), -- Associated customer identifier
  DATA_SOURCE VARCHAR(64), -- Source of data
  EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL, -- Effective start timestamp
  EFFECTIVE_TO TIMESTAMP_NTZ, -- Effective end timestamp
  IS_DELETED CHAR(1), -- Flag for whether the account is deleted
  OPEN_DATE DATE, -- Account open date
  PRODUCT_ID NUMBER(38,0), -- Associated product identifier
  SK_ACCOUNT_KEY NUMBER(38,0) NOT NULL, -- Surrogate key for account
  SK_ACCOUNT_STATUS_KEY NUMBER(38,0), -- Surrogate key for account status
  SK_ACCOUNT_TYPE_KEY NUMBER(38,0), -- Surrogate key for account type
  SK_CUSTOMER_KEY NUMBER(38,0), -- Surrogate key for customer
  SK_PRODUCT_KEY NUMBER(38,0), -- Surrogate key for product
  STATUS_ID NUMBER(38,0), -- Account status identifier
  UPDATED_BY VARCHAR(64), -- Account updated by user
  UPDATE_BATCH_ID NUMBER(38,0), -- Batch ID during update
  UPDATE_DATE_TIME TIMESTAMP_NTZ, -- Update timestamp

  CONSTRAINT PK_DIM_ACCOUNT PRIMARY KEY (SK_ACCOUNT_KEY)
);