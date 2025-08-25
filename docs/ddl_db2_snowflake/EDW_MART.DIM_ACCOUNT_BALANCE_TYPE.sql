CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'Unique identifier for account balance type',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code representing the balance type',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name of the balance type',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Associated business column',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID corresponding to the record creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp of record creation',
    CURRENT_FLAG CHAR(1) COMMENT 'Indicates the current status of the record',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of data for the record',
    DESCRIPTION VARCHAR(255) COMMENT 'Detailed description of account balance type',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Start date of effectiveness',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'End date of effectiveness',
    IS_DELETED CHAR(1) COMMENT 'Indicates if the record is deleted',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account balance type',
    STATUS_CODE VARCHAR(16) COMMENT 'Status code of the record',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID corresponding to the record update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp of record update',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
)
COMMENT = 'Dimension table for account balance types';