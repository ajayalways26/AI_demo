CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_TRANSACTION_CATEGORY (
    SK_TRANSACTION_CATEGORY_KEY BIGINT NOT NULL COMMENT 'Surrogate key for transaction category',
    TRANSACTION_CATEGORY_CODE VARCHAR(64) COMMENT 'Code representing the transaction category',
    TRANSACTION_CATEGORY_NAME VARCHAR(128) COMMENT 'Name representing the transaction category',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the transaction category',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating current status (Y/N)',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Start date of validity period',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'End date of validity period',
    IS_DELETED CHAR(1) COMMENT 'Deleted flag (Y/N)',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID for record creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Date and timestamp when record was created',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID for record update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Date and timestamp when record was last updated',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of data for this record',

    CONSTRAINT PK_DIM_TRANSACTION_CATEGORY PRIMARY KEY (SK_TRANSACTION_CATEGORY_KEY)
)
COMMENT = 'Dimension table for transaction categories';