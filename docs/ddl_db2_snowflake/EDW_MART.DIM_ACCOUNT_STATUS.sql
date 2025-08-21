CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_STATUS (
    SK_ACCOUNT_STATUS_KEY BIGINT NOT NULL COMMENT 'Primary key for the account status dimension',
    ACCOUNT_STATUS_CODE VARCHAR(64) NULL COMMENT 'Code representing the account status',
    ACCOUNT_STATUS_NAME VARCHAR(128) NULL COMMENT 'Name describing the account status',
    DESCRIPTION VARCHAR(255) NULL COMMENT 'Detailed description of the account status',
    CURRENT_FLAG CHAR(1) NULL COMMENT 'Indicator for current account status',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp indicating the start of the account status validity',
    EFFECTIVE_TO TIMESTAMP_NTZ NULL COMMENT 'Timestamp indicating the end of the account status validity',
    IS_DELETED CHAR(1) NULL COMMENT 'Soft delete flag for status record',
    CREATED_BY VARCHAR(64) NULL COMMENT 'User who created the record',
    CREATE_DATE_TIME TIMESTAMP_NTZ NULL COMMENT 'Timestamp when the record was created',
    CREATE_BATCH_ID BIGINT NULL COMMENT 'Batch ID used during record creation',
    UPDATED_BY VARCHAR(64) NULL COMMENT 'User who last updated the record',
    UPDATE_DATE_TIME TIMESTAMP_NTZ NULL COMMENT 'Timestamp when the record was last updated',
    UPDATE_BATCH_ID BIGINT NULL COMMENT 'Batch ID used during record update',
    ACCOUNT_STATUS_ID BIGINT NULL COMMENT 'Unique identifier for the account status',
    BUSINESS_COLUMN VARCHAR(64) NULL COMMENT 'Business-specific column for the account status',
    DATA_SOURCE VARCHAR(64) NULL COMMENT 'Source system of the data',

    CONSTRAINT PK_SK_ACCOUNT_STATUS_KEY PRIMARY KEY (SK_ACCOUNT_STATUS_KEY)
)
COMMENT = 'Dimension table for account status maintaining history and integrity';