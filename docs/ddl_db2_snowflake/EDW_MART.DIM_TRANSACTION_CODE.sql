CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_TRANSACTION_CODE (
    SK_TRANSACTION_CODE_KEY BIGINT NOT NULL COMMENT 'Primary Key, surrogate key for transaction code',
    TRANSACTION_CODE        VARCHAR(64) COMMENT 'Code representing the transaction',
    TRANSACTION_CODE_NAME   VARCHAR(128) COMMENT 'Readable name for the transaction code',
    DESCRIPTION             VARCHAR(255) COMMENT 'Description of the transaction code',
    CURRENT_FLAG            CHAR(1) COMMENT 'Flag indicating if the record is currently active',
    START_DATE              TIMESTAMP_NTZ NOT NULL COMMENT 'Start date and time for the transaction code validity',
    END_DATE                TIMESTAMP_NTZ COMMENT 'End date and time for the transaction code validity',
    IS_DELETED              CHAR(1) COMMENT 'Flag indicating if the record is deleted',
    CREATED_BY              VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID         BIGINT COMMENT 'Batch ID during creation',
    CREATE_DATE_TIME        TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    UPDATED_BY              VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATE_BATCH_ID         BIGINT COMMENT 'Batch ID during last update',
    UPDATE_DATE_TIME        TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    DATA_SOURCE             VARCHAR(64) COMMENT 'Source of the data',

    CONSTRAINT PK_DIM_TRANSACTION_CODE PRIMARY KEY (SK_TRANSACTION_CODE_KEY)
)
COMMENT = 'Dimension table for transaction codes with metadata and historical tracking';