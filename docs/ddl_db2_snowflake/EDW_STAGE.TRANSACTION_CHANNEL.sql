CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.TRANSACTION_CHANNEL (
    TRANSACTION_CHANNEL_ID BIGINT NOT NULL COMMENT 'Unique identifier for the transaction channel',
    TRANSACTION_CHANNEL_CODE VARCHAR(32) NOT NULL COMMENT 'Code representing the transaction channel',
    TRANSACTION_CHANNEL_NAME VARCHAR(64) NOT NULL COMMENT 'Name of the transaction channel',
    TRANSACTION_CHANNEL_DESCRIPTION VARCHAR(255) COMMENT 'Description of the transaction channel',
    CREATED_BY VARCHAR(64) NOT NULL COMMENT 'User who created the record',
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'Staging user who created the record',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created in staging',
    STG_UPDATED_BY VARCHAR(64) COMMENT 'Staging user who last updated the record',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated in staging',
    CONSTRAINT PK_TRANSACTION_CHANNEL PRIMARY KEY (TRANSACTION_CHANNEL_ID)
)