CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'Primary identifier for account balance type.',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code representing balance type.',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name of the balance type.',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Business column information.',
    CREATED_BY VARCHAR(64) COMMENT 'Identifier for the user who created the record.',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch ID associated with record creation.',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp of record creation.',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating if current record is active.',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source system of the data.',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of account balance type.',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Start timestamp for the record validity.',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'End timestamp for the record validity.',
    IS_DELETED CHAR(1) COMMENT 'Flag indicating if record is deleted.',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for account balance type.',
    STATUS_CODE VARCHAR(16) COMMENT 'Status code indicating state of the record.',
    UPDATED_BY VARCHAR(64) COMMENT 'Identifier for the user who last updated the record.',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch ID associated with record update.',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp of last record update.',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
) COMMENT='Dimension table representing account balance types with various attributes.';