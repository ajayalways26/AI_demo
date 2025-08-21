CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_STATUS (
    ACCOUNT_STATUS_CODE        VARCHAR(16)         NOT NULL COMMENT 'Represents the code for account status.',
    ACCOUNT_STATUS_DESCRIPTION VARCHAR(64)         NOT NULL COMMENT 'Describes the account status.',
    ACCOUNT_STATUS_ID          BIGINT              NOT NULL COMMENT 'Unique identifier for account status.',
    CREATED_AT                 TIMESTAMP_NTZ       NOT NULL COMMENT 'Timestamp when the record was created.',
    CREATED_BY                 VARCHAR(64)         NOT NULL COMMENT 'User who created the record.',
    UPDATED_AT                 TIMESTAMP_NTZ       COMMENT 'Timestamp when the record was last updated.',
    UPDATED_BY                 VARCHAR(64)         COMMENT 'User who last updated the record.',
    STG_CREATED_AT             TIMESTAMP_NTZ       NOT NULL COMMENT 'Stage-specific creation timestamp.',
    STG_CREATED_BY             VARCHAR(64)         NOT NULL COMMENT 'Stage-specific record creator.',
    STG_UPDATED_AT             TIMESTAMP_NTZ       COMMENT 'Stage-specific update timestamp.',
    STG_UPDATED_BY             VARCHAR(64)         COMMENT 'Stage-specific record updater.',
    
    CONSTRAINT PK_ACCOUNT_STATUS PRIMARY KEY (ACCOUNT_STATUS_ID)
) COMMENT = 'Table containing account status metadata, migrated from DB2 to Snowflake.';