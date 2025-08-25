CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'Account Balance Type Identifier.',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code representing the balance type.',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name representing the balance type.',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-specific column description.',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record.',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID indicating creation details.',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created.',
    CURRENT_FLAG CHAR(1) COMMENT 'Indicates if the record is current (Y/N).',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data.',
    DESCRIPTION VARCHAR(255) NULL COMMENT 'Description of the balance type.',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp indicating when the record became effective.',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Timestamp indicating when the record ends effectiveness.',
    IS_DELETED CHAR(1) COMMENT 'Indicates if the record is deleted.',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for the account balance type.',
    STATUS_CODE VARCHAR(16) COMMENT 'Status code representing the record state.',
    UPDATED_BY VARCHAR(64) COMMENT 'User who updated the record.',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID indicating update details.',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated.',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
) COMMENT = 'Dimension table representing account balance types.';