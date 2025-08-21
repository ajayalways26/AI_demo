CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_TRANSACTION_CATEGORY (
    SK_TRANSACTION_CATEGORY_KEY BIGINT NOT NULL COMMENT 'Surrogate key for transaction category',
    BUSINESS_COLUMN STRING NULL COMMENT 'Business-specific column',
    TRANSACTION_CATEGORY_CODE STRING NULL COMMENT 'Code representing the transaction category',
    TRANSACTION_CATEGORY_NAME STRING NULL COMMENT 'Name of the transaction category',
    DESCRIPTION STRING NULL COMMENT 'Detailed description of the transaction category',
    CURRENT_FLAG STRING NULL COMMENT 'Flag indicating if the record is current',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record became effective',
    EFFECTIVE_TO TIMESTAMP_NTZ NULL COMMENT 'Timestamp when the record is no longer effective',
    IS_DELETED STRING NULL COMMENT 'Flag indicating if the record is logically deleted',
    CREATED_BY STRING NULL COMMENT 'User who created the record',
    CREATE_BATCH_ID BIGINT NULL COMMENT 'Batch ID associated with record creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ NULL COMMENT 'Timestamp indicating record creation time',
    UPDATED_BY STRING NULL COMMENT 'User who last updated the record',
    UPDATE_BATCH_ID BIGINT NULL COMMENT 'Batch ID associated with record update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ NULL COMMENT 'Timestamp indicating record update time',
    DATA_SOURCE STRING NULL COMMENT 'Source of the data',

    CONSTRAINT PK_DIM_TRANSACTION_CATEGORY PRIMARY KEY (SK_TRANSACTION_CATEGORY_KEY)
)
COMMENT = 'Dimension table for transaction categories';