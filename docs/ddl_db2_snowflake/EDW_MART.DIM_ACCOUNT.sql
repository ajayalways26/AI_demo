CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT (
    ACCOUNT_ID VARCHAR(64), -- Account identifier
    ACCOUNT_NAME VARCHAR(128), -- Name of the account
    ACCOUNT_NUMBER VARCHAR(64), -- Account number
    ACCOUNT_TYPE_ID NUMBER(38,0), -- ID representing the account type
    BUSINESS_COLUMN VARCHAR(64), -- Business-specific metadata
    CLOSE_DATE DATE, -- Account close date
    CREATED_BY VARCHAR(64), -- Creator of the record
    CREATE_BATCH_ID NUMBER(38,0), -- Batch ID associated with creation
    CREATE_DATE_TIME TIMESTAMP_NTZ, -- Record creation timestamp
    CURRENCY_CODE VARCHAR(64), -- Currency associated with the account
    CURRENT_FLAG STRING, -- Current flag indicator
    CUSTOMER_ID NUMBER(38,0), -- ID of the customer linked to the account
    DATA_SOURCE VARCHAR(64), -- Source system of the data
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL, -- Start date of record validity
    EFFECTIVE_TO TIMESTAMP_NTZ, -- End date of record validity
    IS_DELETED STRING, -- Deletion indicator
    OPEN_DATE DATE, -- Account open date
    PRODUCT_ID NUMBER(38,0), -- Product linked to the account
    SK_ACCOUNT_KEY NUMBER(38,0) NOT NULL, -- Surrogate key for account
    SK_ACCOUNT_STATUS_KEY NUMBER(38,0), -- Surrogate key for account status
    SK_ACCOUNT_TYPE_KEY NUMBER(38,0), -- Surrogate key for account type
    SK_CUSTOMER_KEY NUMBER(38,0), -- Surrogate key for customer
    SK_PRODUCT_KEY NUMBER(38,0), -- Surrogate key for product
    STATUS_ID NUMBER(38,0), -- Account status identifier
    UPDATED_BY VARCHAR(64), -- Modifier of the record
    UPDATE_BATCH_ID NUMBER(38,0), -- Batch ID associated with updates
    UPDATE_DATE_TIME TIMESTAMP_NTZ -- Record update timestamp
);
