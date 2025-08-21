CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_FEE (
    ACCOUNT_FEE_CODE_ID    BIGINT                          NOT NULL COMMENT 'Unique identifier for the account fee code',
    ACCOUNT_FEE_ID         BIGINT                          NOT NULL COMMENT 'Unique identifier for the account fee',
    ACCOUNT_ID             BIGINT                          NOT NULL COMMENT 'Unique identifier for the account',
    CREATED_AT             TIMESTAMP_NTZ                  NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY             STRING(64)                     NOT NULL COMMENT 'User who created the record',
    CURRENCY_CODE          STRING(3)                      NOT NULL COMMENT 'Currency code for the fee',
    EFFECTIVE_FROM         DATE                            NOT NULL COMMENT 'Effective start date of the fee',
    EFFECTIVE_TO           DATE                            COMMENT 'Effective end date of the fee',
    FEE_AMOUNT             NUMBER(18,4)                   NOT NULL COMMENT 'Amount of the fee',
    FEE_STATUS             STRING(20)                     COMMENT 'Status of the fee',
    FREQUENCY              STRING(20)                     COMMENT 'Frequency of the fee application',
    STG_CREATED_AT         TIMESTAMP_NTZ                  NOT NULL COMMENT 'Staging timestamp when the record was created',
    STG_CREATED_BY         STRING(64)                     NOT NULL COMMENT 'User who created the staging record',
    STG_UPDATED_AT         TIMESTAMP_NTZ                  COMMENT 'Staging timestamp when the record was last updated',
    STG_UPDATED_BY         STRING(64)                     COMMENT 'User who last updated the staging record',
    UPDATED_AT             TIMESTAMP_NTZ                  COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY             STRING(64)                     COMMENT 'User who last updated the record',

    CONSTRAINT PK_ACCOUNT_FEE PRIMARY KEY (ACCOUNT_FEE_CODE_ID, ACCOUNT_FEE_ID, ACCOUNT_ID)
)