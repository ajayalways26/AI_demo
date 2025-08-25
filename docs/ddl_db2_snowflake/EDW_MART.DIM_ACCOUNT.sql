CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT (
    ACCOUNT_ID VARCHAR(64), -- Account identifier
    ACCOUNT_NAME VARCHAR(128), -- Name of the account
    ACCOUNT_NUMBER VARCHAR(64), -- Numerical identifier for the account
    ACCOUNT_TYPE_ID BIGINT, -- ID indicating the account type
    BUSINESS_COLUMN VARCHAR(64), -- Column for business-specific data
    CLOSE_DATE DATE, -- Account closing date
    CREATED_BY VARCHAR(64), -- User who created the entry
    CREATE_BATCH_ID BIGINT, -- Batch ID for create operation
    CREATE_DATE_TIME TIMESTAMP_NTZ, -- Timestamp of creation
    CURRENCY_CODE VARCHAR(64), -- Currency identifier
    CURRENT_FLAG CHAR(1), -- Flag indicating whether the record is current
    CUSTOMER_ID BIGINT, -- Customer associated with the account
    DATA_SOURCE VARCHAR(64), -- Source of the data
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL, -- Start of record validity
    EFFECTIVE_TO TIMESTAMP_NTZ, -- End of record validity
    IS_DELETED CHAR(1), -- Flag indicating deletion status
    OPEN_DATE DATE, -- Account opening date
    PRODUCT_ID BIGINT, -- Product identifier associated with the account
    SK_ACCOUNT_KEY BIGINT NOT NULL, -- Surrogate key for account
    SK_ACCOUNT_STATUS_KEY BIGINT, -- Surrogate key for account status
    SK_ACCOUNT_TYPE_KEY BIGINT, -- Surrogate key for account type
    SK_CUSTOMER_KEY BIGINT, -- Surrogate key for customer
    SK_PRODUCT_KEY BIGINT, -- Surrogate key for product
    STATUS_ID BIGINT, -- Status identifier of the account
    UPDATED_BY VARCHAR(64), -- User who last updated the entry
    UPDATE_BATCH_ID BIGINT, -- Batch ID for update operation
    UPDATE_DATE_TIME TIMESTAMP_NTZ -- Timestamp of last update
);
