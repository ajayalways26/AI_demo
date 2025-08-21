CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_STATUS (
    ACCOUNT_STATUS_CODE VARCHAR(64) COMMENT 'Code for the account status',
    ACCOUNT_STATUS_ID BIGINT COMMENT 'Unique ID for the account status',
    ACCOUNT_STATUS_NAME VARCHAR(128) COMMENT 'Name of the account status',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Additional business-related information',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID under which this record was created',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating the current state of the record',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data for the record',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the account status',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Start timestamp for the validity of this record',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'End timestamp for the validity of this record',
    IS_DELETED CHAR(1) COMMENT 'Indicator if the record is deleted',
    SK_ACCOUNT_STATUS_KEY BIGINT NOT NULL COMMENT 'Surrogate key for the account status',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID under which this record was last updated',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',

    CONSTRAINT PK_DIM_ACCOUNT_STATUS PRIMARY KEY (SK_ACCOUNT_STATUS_KEY)
)
COMMENT = 'Dimension table for Account Status managing attributes and additional metadata';