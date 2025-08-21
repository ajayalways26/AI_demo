CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_FEE_CODE (
    ACCOUNT_FEE_CATEGORY_ID BIGINT COMMENT 'Represents the category identifier for account fees',
    ACCOUNT_FEE_CODE VARCHAR(32) NOT NULL COMMENT 'Represents the code for the account fee',
    ACCOUNT_FEE_CODE_ID BIGINT NOT NULL COMMENT 'Represents the identifier for the account fee code',
    ACCOUNT_FEE_DESCRIPTION VARCHAR(256) COMMENT 'Provides a description of the account fee',
    ACCOUNT_FEE_NAME VARCHAR(64) NOT NULL COMMENT 'Represents the name of the account fee',
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY VARCHAR(64) NOT NULL COMMENT 'User who created the record',
    EFFECTIVE_FROM DATE NOT NULL COMMENT 'Start date for the fee code effectivity',
    EFFECTIVE_TO DATE COMMENT 'End date for the fee code effectivity',
    FEE_CODE_STATUS VARCHAR(16) COMMENT 'Status of the fee code',
    IS_REFUNDABLE BOOLEAN COMMENT 'Indicates whether the fee is refundable',
    IS_TAXABLE BOOLEAN COMMENT 'Indicates whether the fee is taxable',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Staging timestamp when the record was created',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'Staging user who created the record',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Staging timestamp when the record was updated',
    STG_UPDATED_BY VARCHAR(64) COMMENT 'Staging user who updated the record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was updated',
    UPDATED_BY VARCHAR(64) COMMENT 'User who updated the record',

    CONSTRAINT PK_ACCOUNT_FEE_CODE PRIMARY KEY (ACCOUNT_FEE_CODE_ID)
) COMMENT = 'Table representing account fee codes and associated metadata';