CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_LIMIT_TYPE (
    ACCOUNT_LIMIT_TYPE_ID     BIGINT NOT NULL COMMENT 'Primary key for the table',
    ACCOUNT_LIMIT_TYPE_NAME   VARCHAR(64) NOT NULL COMMENT 'Name of the account limit type',
    ACCOUNT_LIMIT_DESCRIPTION VARCHAR(256) COMMENT 'Description of the account limit type',
    UNIT_OF_MEASURE           VARCHAR(32) COMMENT 'Unit of measure for the account limit type',
    CREATED_BY                VARCHAR(64) NOT NULL COMMENT 'User who created the record',
    CREATED_AT                TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created',
    UPDATED_BY                VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATED_AT                TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    ACCOUNT_LIMIT_TYPE_CODE   VARCHAR(32) NOT NULL COMMENT 'Code representing the account limit type',
    STG_CREATED_BY            VARCHAR(64) NOT NULL COMMENT 'Staging user who created the record',
    STG_CREATED_AT            TIMESTAMP_NTZ NOT NULL COMMENT 'Staging timestamp when the record was created',
    STG_UPDATED_BY            VARCHAR(64) COMMENT 'Staging user who last updated the record',
    STG_UPDATED_AT            TIMESTAMP_NTZ COMMENT 'Staging timestamp when the record was last updated',

    CONSTRAINT PK_ACCOUNT_LIMIT_TYPE PRIMARY KEY (ACCOUNT_LIMIT_TYPE_ID)
)