CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_LIMIT_TYPE (
    SK_ACCOUNT_LIMIT_TYPE_KEY BIGINT NOT NULL COMMENT 'Primary key',
    ACCOUNT_LIMIT_TYPE_ID BIGINT COMMENT 'Account limit type identifier',
    ACCOUNT_LIMIT_TYPE_CODE VARCHAR(64) COMMENT 'Code for account limit type',
    ACCOUNT_LIMIT_TYPE_NAME VARCHAR(128) COMMENT 'Name of account limit type',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-specific column',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID for creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    UPDATED_BY VARCHAR(64) COMMENT 'User who updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID for update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was updated',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating current state (Y/N)',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the account limit type',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when record becomes effective',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Timestamp when record is no longer effective',
    IS_DELETED CHAR(1) COMMENT 'Flag indicating if the record is deleted (Y/N)',
    UNIT_OF_MEASURE VARCHAR(32) COMMENT 'Unit of measurement',

    CONSTRAINT PK_DIM_ACCOUNT_LIMIT_TYPE PRIMARY KEY (SK_ACCOUNT_LIMIT_TYPE_KEY)
)
COMMENT = 'Dimension table for account limit types';