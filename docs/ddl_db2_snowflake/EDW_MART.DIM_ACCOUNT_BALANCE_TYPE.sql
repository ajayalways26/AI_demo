CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'Primary key for account balance type',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code for balance type',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name of the balance type',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business specific column',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID during creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating if the record is current',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the balance type',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp from which the record is effective',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Timestamp till which the record is effective',
    IS_DELETED CHAR(1) COMMENT 'Indicates if the record is marked as deleted',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account balance type',
    STATUS_CODE VARCHAR(16) COMMENT 'Status code for record',
    UPDATED_BY VARCHAR(64) COMMENT 'User who updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID during update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was updated',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
) COMMENT='Table for storing account balance types';