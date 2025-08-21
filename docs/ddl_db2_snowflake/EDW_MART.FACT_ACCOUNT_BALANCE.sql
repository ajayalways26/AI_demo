CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.FACT_ACCOUNT_BALANCE (
    AS_OF_DATE DATE COMMENT 'Represents the date of the account balance snapshot.',
    AVAILABLE_BALANCE DECIMAL(18,2) COMMENT 'The available balance amount.',
    BUSINESS_COLUMN STRING COMMENT 'A business-specific column for additional metadata.',
    CREATED_BY STRING COMMENT 'Who created the record.',
    CREATE_BATCH_ID STRING COMMENT 'Batch ID for the creation process.',
    CREATE_DATE_TIME TIMESTAMP_NTZ(6) COMMENT 'Timestamp when the record was created.',
    DATA_SOURCE STRING COMMENT 'The data source from where the record was ingested.',
    SK_ACCOUNT_BALANCE_KEY NUMBER(38,0) NOT NULL COMMENT 'Surrogate key for the account balance table.',
    SK_ACCOUNT_BALANCE_TYPE_KEY NUMBER(38,0) NOT NULL COMMENT 'Surrogate key referencing account balance type.',
    SK_ACCOUNT_KEY NUMBER(38,0) NOT NULL COMMENT 'Surrogate key referencing accounts.',
    SK_AS_OF_DATE_KEY NUMBER(38,0) NOT NULL COMMENT 'Surrogate key for the as-of-date dimension.',
    SK_CURRENCY_KEY NUMBER(38,0) NOT NULL COMMENT 'Surrogate key referencing the currency dimension.',
    UPDATED_BY STRING COMMENT 'Who updated the record last.',
    UPDATE_BATCH_ID STRING COMMENT 'Batch ID for the update process.',
    UPDATE_DATE_TIME TIMESTAMP_NTZ(6) COMMENT 'Timestamp when the record was last updated.',
    CONSTRAINT PK_FACT_ACCOUNT_BALANCE PRIMARY KEY (SK_ACCOUNT_BALANCE_KEY)
)
COMMENT = 'FACT_ACCOUNT_BALANCE table migrated from DB2 to Snowflake';