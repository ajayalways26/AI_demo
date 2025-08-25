CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'Unique identifier for the account balance type',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code representing the balance type',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name of the balance type',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-specific column data',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID during creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when record was created',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating if the record is current',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data',
    DESCRIPTION VARCHAR(255) COMMENT 'Detailed description of the account balance type',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Start date of balance type validity',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'End date of balance type validity',
    IS_DELETED CHAR(1) COMMENT 'Indicator if the record is deleted',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account balance type',
    STATUS_CODE VARCHAR(16) COMMENT 'Status code of the record',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID during last update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp of the last update',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
)
COMMENT = 'Dimension table representing account balance types';