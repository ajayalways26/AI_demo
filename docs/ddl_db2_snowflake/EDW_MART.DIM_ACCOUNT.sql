CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT (
    ACCOUNT_ID VARCHAR(64), -- Account unique identifier
    ACCOUNT_NAME VARCHAR(128), -- Account name
    ACCOUNT_NUMBER VARCHAR(64), -- Account number
    ACCOUNT_TYPE_ID BIGINT, -- Associated account type identifier
    BUSINESS_COLUMN VARCHAR(64), -- Business-specific column value
    CLOSE_DATE DATE, -- Date when the account was closed
    CREATED_BY VARCHAR(64), -- User who created the record
    CREATE_BATCH_ID BIGINT, -- Batch process identifier for record creation
    CREATE_DATE_TIME TIMESTAMP_NTZ, -- Timestamp of record creation
    CURRENCY_CODE VARCHAR(64), -- Currency code associated with the account
    CURRENT_FLAG CHAR(1), -- Flag to indicate current record ('Y' or 'N')
    CUSTOMER_ID BIGINT, -- Associated customer identifier
    DATA_SOURCE VARCHAR(64), -- Source of data
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL, -- Effective start timestamp
    EFFECTIVE_TO TIMESTAMP_NTZ, -- Effective end timestamp
    IS_DELETED CHAR(1), -- Flag to indicate deletion ('Y' or 'N')
    OPEN_DATE DATE, -- Date when the account was opened
    PRODUCT_ID BIGINT, -- Associated product identifier
    SK_ACCOUNT_KEY BIGINT NOT NULL, -- Surrogate key for account, primary identifier
    SK_ACCOUNT_STATUS_KEY BIGINT, -- Surrogate key for account status
    SK_ACCOUNT_TYPE_KEY BIGINT, -- Surrogate key for account type
    SK_CUSTOMER_KEY BIGINT, -- Surrogate key for customer
    SK_PRODUCT_KEY BIGINT, -- Surrogate key for product
    STATUS_ID BIGINT, -- Associated status identifier
    UPDATED_BY VARCHAR(64), -- User who last updated the record
    UPDATE_BATCH_ID BIGINT, -- Batch process identifier for record update
    UPDATE_DATE_TIME TIMESTAMP_NTZ, -- Timestamp of last record update
  
    CONSTRAINT PK_DIM_ACCOUNT PRIMARY KEY (SK_ACCOUNT_KEY)
)