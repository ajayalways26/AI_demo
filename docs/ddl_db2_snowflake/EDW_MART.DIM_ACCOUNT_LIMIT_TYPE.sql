CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_LIMIT_TYPE (
    ACCOUNT_LIMIT_TYPE_CODE VARCHAR(64) COMMENT 'Unique code for account limit type',
    ACCOUNT_LIMIT_TYPE_ID BIGINT COMMENT 'Primary key identifier for account limit type',
    ACCOUNT_LIMIT_TYPE_NAME VARCHAR(128) COMMENT 'Name of the account limit type',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-related attribute',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID for creation process',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp for record creation',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag to denote the current record',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source system of data',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the account limit type',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record becomes effective',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Timestamp when the record is no longer effective',
    IS_DELETED CHAR(1) COMMENT 'Flag to denote deletion status',
    SK_ACCOUNT_LIMIT_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for the table',
    UNIT_OF_MEASURE VARCHAR(32) COMMENT 'Measurement unit associated with the account limit type',
    UPDATED_BY VARCHAR(64) COMMENT 'User who updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID for update process',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp for record update',

    CONSTRAINT PK_DIM_ACCOUNT_LIMIT_TYPE PRIMARY KEY (SK_ACCOUNT_LIMIT_TYPE_KEY)
);