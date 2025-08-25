CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT (
    ACCOUNT_ID VARCHAR(64), -- Account identifier
    ACCOUNT_NAME VARCHAR(128), -- Name of the account
    ACCOUNT_NUMBER VARCHAR(64), -- Unique number identifying the account
    ACCOUNT_TYPE_ID BIGINT, -- Identifier for the account type
    BUSINESS_COLUMN VARCHAR(64), -- Business-specific column
    CLOSE_DATE DATE, -- Date when the account was closed
    CREATED_BY VARCHAR(64), -- User who created the record
    CREATE_BATCH_ID BIGINT, -- Batch identifier for record creation
    CREATE_DATE_TIME TIMESTAMP_NTZ, -- Record creation timestamp
    CURRENCY_CODE VARCHAR(64), -- Currency code associated with the account
    CURRENT_FLAG CHAR(1), -- Flag indicating if the record is the current version
    CUSTOMER_ID BIGINT, -- Identifier for the customer
    DATA_SOURCE VARCHAR(64), -- Source of the data
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL, -- Timestamp when the record becomes effective
    EFFECTIVE_TO TIMESTAMP_NTZ, -- Timestamp when the record ceases to be effective
    IS_DELETED CHAR(1), -- Flag indicating if the record is deleted
    OPEN_DATE DATE, -- Date when the account was opened
    PRODUCT_ID BIGINT, -- Identifier for the product associated with the account
    SK_ACCOUNT_KEY BIGINT NOT NULL, -- Surrogate key for the account
    SK_ACCOUNT_STATUS_KEY BIGINT, -- Surrogate key for the account status
    SK_ACCOUNT_TYPE_KEY BIGINT, -- Surrogate key for the account type
    SK_CUSTOMER_KEY BIGINT, -- Surrogate key for the customer
    SK_PRODUCT_KEY BIGINT, -- Surrogate key for the product
    STATUS_ID BIGINT, -- Identifier for the account status
    UPDATED_BY VARCHAR(64), -- User who last updated the record
    UPDATE_BATCH_ID BIGINT, -- Batch identifier for record update
    UPDATE_DATE_TIME TIMESTAMP_NTZ -- Record update timestamp
)
COMMENT='Dimension table for account details';