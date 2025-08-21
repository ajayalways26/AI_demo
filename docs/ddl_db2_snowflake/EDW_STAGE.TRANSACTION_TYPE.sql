CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.TRANSACTION_TYPE (
    TRANSACTION_TYPE_ID   BIGINT               NOT NULL COMMENT 'Primary identifier for transaction type',
    TRANSACTION_TYPE_NAME VARCHAR(128)         NOT NULL COMMENT 'Name of the transaction type',
    TRANSACTION_TYPE_CODE VARCHAR(32)          NOT NULL COMMENT 'Code representing the transaction type',
    TRANSACTION_TYPE_DESCRIPTION VARCHAR(255) COMMENT 'Description of the transaction type',
    IS_DEBIT              BOOLEAN              NOT NULL COMMENT 'Indicates if the transaction is a debit',
    IS_CREDIT             BOOLEAN              NOT NULL COMMENT 'Indicates if the transaction is a credit',
    CREATED_BY            VARCHAR(64)          NOT NULL COMMENT 'User who created the record',
    CREATED_AT            TIMESTAMP_NTZ        NOT NULL COMMENT 'Timestamp when the record was created',
    UPDATED_BY            VARCHAR(64)                     COMMENT 'User who last updated the record',
    UPDATED_AT            TIMESTAMP_NTZ                  COMMENT 'Timestamp when the record was last updated',
    STG_CREATED_BY        VARCHAR(64)          NOT NULL COMMENT 'Stage user who created the record',
    STG_CREATED_AT        TIMESTAMP_NTZ        NOT NULL COMMENT 'Stage timestamp of record creation',
    STG_UPDATED_BY        VARCHAR(64)                     COMMENT 'Stage user who last updated the record',
    STG_UPDATED_AT        TIMESTAMP_NTZ                  COMMENT 'Stage timestamp of last record update',

    CONSTRAINT PK_TRANSACTION_TYPE PRIMARY KEY (TRANSACTION_TYPE_ID)
)
COMMENT = 'Transaction type staging table';