CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_TYPE (
    SK_ACCOUNT_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for Account Type',
    ACCOUNT_TYPE_CODE VARCHAR(64) COMMENT 'Code of the account type',
    ACCOUNT_TYPE_ID BIGINT COMMENT 'Unique identifier for account type',
    ACCOUNT_TYPE_NAME VARCHAR(128) COMMENT 'Name of the account type',
    ALLOWS_OVERDRAFT SMALLINT COMMENT 'Indicates whether overdraft is allowed',
    APPLICABLE_FOR VARCHAR(32) COMMENT 'Account applicability details',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-specific column',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the row',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID at creation time',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Row creation timestamp',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating current status',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of data',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the account type',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp indicating when the account type became effective',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'Timestamp indicating when the account type expires',
    IS_DELETED CHAR(1) COMMENT 'Flag indicating deletion status',
    IS_INTEREST_BEARING SMALLINT COMMENT 'Indicates if the account is interest-bearing',
    STATUS_CODE VARCHAR(16) COMMENT 'Status code of the account type',
    UPDATED_BY VARCHAR(64) COMMENT 'User who updated the row last',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID at last update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp for last row update',

    CONSTRAINT PK_DIM_ACCOUNT_TYPE PRIMARY KEY (SK_ACCOUNT_TYPE_KEY)
)
COMMENT = 'Dimension table for account types';