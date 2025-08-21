CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.TRANSACTION_STATUS (
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the transaction status was created',
    CREATED_BY VARCHAR(64) NOT NULL COMMENT 'Identifier of the user who created the transaction status',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Staging timestamp when the status was created',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'Staging creator identifier',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Staging timestamp when the status was last updated',
    STG_UPDATED_BY VARCHAR(64) COMMENT 'Staging updater identifier',
    TRANSACTION_STATUS_CODE VARCHAR(32) NOT NULL COMMENT 'Code representing the transaction status',
    TRANSACTION_STATUS_DESCRIPTION VARCHAR(255) COMMENT 'Detailed description of the transaction status',
    TRANSACTION_STATUS_ID BIGINT NOT NULL COMMENT 'Primary key identifier for transaction status',
    TRANSACTION_STATUS_NAME VARCHAR(128) NOT NULL COMMENT 'Name for transaction status',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the transaction status was last updated',
    UPDATED_BY VARCHAR(64) COMMENT 'Identifier of the user who last updated the transaction status',

    CONSTRAINT PK_TRANSACTION_STATUS PRIMARY KEY (TRANSACTION_STATUS_ID)
)
COMMENT = 'Table containing details about transaction statuses';