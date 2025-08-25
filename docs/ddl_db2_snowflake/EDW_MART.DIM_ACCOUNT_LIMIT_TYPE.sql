CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_LIMIT_TYPE (
    ACCOUNT_LIMIT_TYPE_CODE   STRING                      COMMENT 'Originally VARCHAR(64) from DB2',
    ACCOUNT_LIMIT_TYPE_ID     BIGINT                      COMMENT 'Originally BIGINT from DB2',
    ACCOUNT_LIMIT_TYPE_NAME   STRING                      COMMENT 'Originally VARCHAR(128) from DB2',
    BUSINESS_COLUMN           STRING                      COMMENT 'Originally VARCHAR(64) from DB2',
    CREATED_BY                STRING                      COMMENT 'Originally VARCHAR(64) from DB2',
    CREATE_BATCH_ID           BIGINT                      COMMENT 'Originally BIGINT from DB2',
    CREATE_DATE_TIME          TIMESTAMP_NTZ               COMMENT 'Originally TIMESTAMP from DB2',
    CURRENT_FLAG              STRING(1)                  COMMENT 'Originally CHARACTER(1) from DB2',
    DATA_SOURCE               STRING                      COMMENT 'Originally VARCHAR(64) from DB2',
    DESCRIPTION               STRING                      COMMENT 'Originally VARCHAR(255) from DB2',
    EFFECTIVE_FROM            TIMESTAMP_NTZ               NOT NULL COMMENT 'Originally TIMESTAMP from DB2',
    EFFECTIVE_TO              TIMESTAMP_NTZ               COMMENT 'Originally TIMESTAMP from DB2',
    IS_DELETED                STRING(1)                  COMMENT 'Originally CHARACTER(1) from DB2',
    SK_ACCOUNT_LIMIT_TYPE_KEY BIGINT                      NOT NULL COMMENT 'Originally BIGINT from DB2',
    UNIT_OF_MEASURE           STRING                      COMMENT 'Originally VARCHAR(32) from DB2',
    UPDATED_BY                STRING                      COMMENT 'Originally VARCHAR(64) from DB2',
    UPDATE_BATCH_ID           BIGINT                      COMMENT 'Originally BIGINT from DB2',
    UPDATE_DATE_TIME          TIMESTAMP_NTZ               COMMENT 'Originally TIMESTAMP from DB2',

    CONSTRAINT PK_DIM_ACCOUNT_LIMIT_TYPE PRIMARY KEY (SK_ACCOUNT_LIMIT_TYPE_KEY)
)