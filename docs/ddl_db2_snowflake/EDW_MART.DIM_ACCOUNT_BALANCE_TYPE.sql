CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT COMMENT 'Represents the unique identifier for the account balance type.',
    BALANCE_TYPE_CODE VARCHAR(64) COMMENT 'Code representing the balance type.',
    BALANCE_TYPE_NAME VARCHAR(128) COMMENT 'Name describing the balance type.',
    BUSINESS_COLUMN VARCHAR(64) COMMENT 'Additional business-related column.',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record.',
    CREATE_BATCH_ID BIGINT COMMENT 'Batch identifier for the record creation.',
    CREATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created.',
    CURRENT_FLAG CHAR(1) COMMENT 'Flag indicating the current status (e.g., active/inactive).',
    DATA_SOURCE VARCHAR(64) COMMENT 'Source of the data.',
    DESCRIPTION VARCHAR(255) COMMENT 'Description of the balance type.',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Start timestamp for when the record is effective.',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'End timestamp for when the record is no longer effective.',
    IS_DELETED CHAR(1) COMMENT 'Flag indicating if the record is deleted.',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL COMMENT 'Surrogate key for the account balance type.',
    STATUS_CODE VARCHAR(16) COMMENT 'Code representing the status of the record.',
    UPDATED_BY VARCHAR(64) COMMENT 'User who updated the record.',
    UPDATE_BATCH_ID BIGINT COMMENT 'Batch identifier for the record update.',
    UPDATE_DATE_TIME TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated.',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
)
COMMENT='Table to store information regarding account balance types.';