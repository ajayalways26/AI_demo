CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'ID of the account balance type',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code representing the balance type',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name of the balance type',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-specific column',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID during creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp of creation',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating current status',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data',
    DESCRIPTION VARCHAR(255) COMMENT 'Additional description',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp indicating start of validity',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Timestamp indicating end of validity',
    IS_DELETED CHAR(1) COMMENT 'Flag indicating deleted status',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account balance type',
    STATUS_CODE VARCHAR(16) COMMENT 'Code indicating the status',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID during last update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp of last update',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
)
COMMENT = 'Dimension table for account balance types with historical tracking'