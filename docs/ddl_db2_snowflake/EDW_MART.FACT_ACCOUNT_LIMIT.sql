CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.FACT_ACCOUNT_LIMIT (
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business-specific column',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CREATE_BATCH_ID VARCHAR(64) COMMENT 'Batch ID during creation',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Date and time when the record was created',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of data',
    EFFECTIVE_FROM DATE COMMENT 'Record effective start date',
    EFFECTIVE_TO DATE COMMENT 'Record effective end date',
    LIMIT_AMOUNT NUMBER(18,2) NOT NULL COMMENT 'Maximum account limit' ,
    REMAINING_AMOUNT NUMBER(18,2) COMMENT 'Amount remaining from the limit',
    SK_ACCOUNT_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account',
    SK_ACCOUNT_LIMIT_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account limit',
    SK_ACCOUNT_LIMIT_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account limit type',
    SK_EFFECTIVE_FROM_DATE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for effective-from date',
    SK_EFFECTIVE_TO_DATE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for effective-to date',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATE_BATCH_ID VARCHAR(64) COMMENT 'Batch ID during update',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Date and time when the record was last updated',
    UTILIZED_AMOUNT NUMBER(18,2) COMMENT 'Amount utilized from the limit',

    CONSTRAINT PK_FACT_ACCOUNT_LIMIT PRIMARY KEY (SK_ACCOUNT_LIMIT_KEY)
)
COMMENT = 'Fact table for account limit details';