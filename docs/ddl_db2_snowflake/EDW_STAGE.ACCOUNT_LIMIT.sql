CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_LIMIT (
    ACCOUNT_ID BIGINT NOT NULL COMMENT 'Unique identifier for the account',
    ACCOUNT_LIMIT_TYPE_ID BIGINT NOT NULL COMMENT 'Identifier for the type of limit applied to the account',
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY STRING NOT NULL COMMENT 'User who created the record',
    EFFECTIVE_FROM DATE NOT NULL COMMENT 'Start date for the account limit',
    EFFECTIVE_TO DATE COMMENT 'End date for the account limit, nullable',
    LIMIT_AMOUNT NUMBER(18,2) NOT NULL COMMENT 'Maximum allowable limit amount',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Staging record creation timestamp',
    STG_CREATED_BY STRING NOT NULL COMMENT 'User who created the staging record',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Staging record last updated timestamp, nullable',
    STG_UPDATED_BY STRING COMMENT 'User who last updated the staging record, nullable',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated, nullable',
    UPDATED_BY STRING COMMENT 'User who last updated the record, nullable',

    CONSTRAINT PK_ACCOUNT_LIMIT PRIMARY KEY (ACCOUNT_ID, ACCOUNT_LIMIT_TYPE_ID)
)
COMMENT = 'Table for storing account limit details'
DATA_RETENTION_TIME_IN_DAYS = 1;