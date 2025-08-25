CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'ID for the account balance type',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code representing the balance type',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name of the balance type',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business column related to the balance type',
    CREATED_BY VARCHAR(64) COMMENT 'User who created this record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID associated with creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    CURRENT_FLAG CHAR(1) COMMENT 'Indicates whether the record is current',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the balance type',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Effective start date and time',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Effective end date and time',
    IS_DELETED CHAR(1) COMMENT 'Flag indicating deletion status',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for the account balance type',
    STATUS_CODE VARCHAR(16) COMMENT 'Status code of the balance type',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated this record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID associated with the update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
)
COMMENT = 'Dimension table for account balance types';