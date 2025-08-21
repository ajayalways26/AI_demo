CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_TYPE (
    ACCOUNT_TYPE_CODE VARCHAR(32) NOT NULL COMMENT 'Code representing the account type.',
    ACCOUNT_TYPE_ID BIGINT NOT NULL COMMENT 'Unique identifier for the account type.',
    ACCOUNT_TYPE_NAME VARCHAR(64) NOT NULL COMMENT 'Name of the account type.',
    IS_INTEREST_BEARING BOOLEAN COMMENT 'Indicates if the account type bears interest.',
    ALLOWS_OVERDRAFT BOOLEAN COMMENT 'Indicates if overdraft is allowed.',
    APPLICABLE_FOR VARCHAR(32) COMMENT 'Indicates target applicability for the account type.',
    STATUS_CODE VARCHAR(16) NOT NULL COMMENT 'Status code of the account type.',
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created.',
    CREATED_BY VARCHAR(64) NOT NULL COMMENT 'User who created the record.',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated.',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record.',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Staging timestamp when the record was created.',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'Staging user who created the record.',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Staging timestamp when the record was last updated.',
    STG_UPDATED_BY VARCHAR(64) COMMENT 'Staging user who last updated the record.',

    CONSTRAINT PK_ACCOUNT_TYPE PRIMARY KEY (ACCOUNT_TYPE_ID)
)
COMMENT = 'Table containing account type information';