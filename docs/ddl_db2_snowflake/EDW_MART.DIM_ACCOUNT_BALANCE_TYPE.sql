CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'Unique identifier for account balance type',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code for balance type',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name of the balance type',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-related column',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID during creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Date and time of record creation',
    CURRENT_FLAG CHAR(1) COMMENT 'Active status flag (Y/N)',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data',
    DESCRIPTION VARCHAR(255) COMMENT 'Detailed description of the account balance type',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Effective start date',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Effective end date',
    IS_DELETED CHAR(1) COMMENT 'Deletion status flag (Y/N)',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account balance type',
    STATUS_CODE VARCHAR(16) COMMENT 'Status code for record',
    UPDATED_BY VARCHAR(64) COMMENT 'User who updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID during update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Date and time of record update',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
)