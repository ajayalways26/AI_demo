CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID    BIGINT                                 COMMENT 'Column ACCOUNT_BALANCE_TYPE_ID',
    BALANCE_TYPE_CODE          VARCHAR(64)                           COMMENT 'Column BALANCE_TYPE_CODE',
    BALANCE_TYPE_NAME          VARCHAR(128)                          COMMENT 'Column BALANCE_TYPE_NAME',
    BUSINESS_COLUMN            VARCHAR(64)                           COMMENT 'Column BUSINESS_COLUMN',
    CREATED_BY                 VARCHAR(64)                           COMMENT 'Column CREATED_BY',
    CREATE_BATCH_ID            BIGINT                                 COMMENT 'Column CREATE_BATCH_ID',
    CREATE_DATE_TIME           TIMESTAMP_NTZ                         COMMENT 'Column CREATE_DATE_TIME',
    CURRENT_FLAG               CHAR(1)                               COMMENT 'Column CURRENT_FLAG',
    DATA_SOURCE                VARCHAR(64)                           COMMENT 'Column DATA_SOURCE',
    DESCRIPTION                VARCHAR(255)                          COMMENT 'Column DESCRIPTION',
    EFFECTIVE_FROM             TIMESTAMP_NTZ NOT NULL                COMMENT 'Column EFFECTIVE_FROM',
    EFFECTIVE_TO               TIMESTAMP_NTZ                         COMMENT 'Column EFFECTIVE_TO',
    IS_DELETED                 CHAR(1)                               COMMENT 'Column IS_DELETED',
    SK_ACCOUNT_BALANCE_TYPE_KEY BIGINT NOT NULL                      COMMENT 'Column SK_ACCOUNT_BALANCE_TYPE_KEY',
    STATUS_CODE                VARCHAR(16)                           COMMENT 'Column STATUS_CODE',
    UPDATED_BY                 VARCHAR(64)                           COMMENT 'Column UPDATED_BY',
    UPDATE_BATCH_ID            BIGINT                                 COMMENT 'Column UPDATE_BATCH_ID',
    UPDATE_DATE_TIME           TIMESTAMP_NTZ                         COMMENT 'Column UPDATE_DATE_TIME',

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
)