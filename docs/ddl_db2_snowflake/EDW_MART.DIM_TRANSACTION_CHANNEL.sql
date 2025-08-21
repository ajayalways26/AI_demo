CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_TRANSACTION_CHANNEL (
    SK_TRANSACTION_CHANNEL_KEY BIGINT NOT NULL COMMENT 'Primary key for the transaction channel',
    TRANSACTION_CHANNEL_CODE VARCHAR(64) COMMENT 'Code for the transaction channel',
    TRANSACTION_CHANNEL_NAME VARCHAR(128) COMMENT 'Name of the transaction channel',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the transaction channel',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating if the record is current',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp indicating when the record becomes effective',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Timestamp indicating when the record expires',
    IS_DELETED CHAR(1) COMMENT 'Flag indicating if the record is deleted',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source system for the data',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID for record creation',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID for record updates',
    TRANSACTION_CHANNEL_ID BIGINT COMMENT 'Identifier for the transaction channel',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-specific column',

    PRIMARY KEY (SK_TRANSACTION_CHANNEL_KEY)
)
COMMENT = 'Dimension table for transaction channels';