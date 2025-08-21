CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_TRANSACTION_TYPE (
    SK_TRANSACTION_TYPE_KEY BIGINT NOT NULL COMMENT 'Primary Key for Transaction Type',
    TRANSACTION_TYPE_CODE VARCHAR(64) COMMENT 'Code representing the transaction type',
    TRANSACTION_TYPE_NAME VARCHAR(128) COMMENT 'Name of the transaction type',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the transaction type',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating if the record is current',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Record effective start date',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Record effective end date',
    IS_DELETED CHAR(1) COMMENT 'Flag indicating if the record is deleted',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Record creation timestamp',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Record update timestamp',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source system of the data',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID for record creation',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID for record updates',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-specific information column',
    TRANSACTION_TYPE_ID BIGINT COMMENT 'ID representing the transaction type',
    IS_DEBIT SMALLINT COMMENT 'Flag indicating if the transaction is a debit',
    IS_CREDIT SMALLINT COMMENT 'Flag indicating if the transaction is a credit',
    CONSTRAINT PK_TRANSACTION_TYPE PRIMARY KEY (SK_TRANSACTION_TYPE_KEY)
)
COMMENT = 'Dimension table for transaction types';