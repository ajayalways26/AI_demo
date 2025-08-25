CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_LIMIT_TYPE (
    ACCOUNT_LIMIT_TYPE_CODE   STRING(64), -- VARCHAR in DB2 with length 64
    ACCOUNT_LIMIT_TYPE_ID     NUMBER(38,0), -- BIGINT in DB2
    ACCOUNT_LIMIT_TYPE_NAME   STRING(128), -- VARCHAR in DB2 with length 128
    BUSINESS_COLUMN           STRING(64), -- VARCHAR in DB2 with length 64
    CREATED_BY                STRING(64), -- VARCHAR in DB2 with length 64
    CREATE_BATCH_ID           NUMBER(38,0), -- BIGINT in DB2
    CREATE_DATE_TIME          TIMESTAMP_NTZ, -- TIMESTAMP in DB2
    CURRENT_FLAG              STRING(1), -- CHAR with length 1 in DB2
    DATA_SOURCE               STRING(64), -- VARCHAR in DB2 with length 64
    DESCRIPTION               STRING(255), -- VARCHAR in DB2 with length 255
    EFFECTIVE_FROM            TIMESTAMP_NTZ NOT NULL, -- TIMESTAMP in DB2 marked as NOT NULL
    EFFECTIVE_TO              TIMESTAMP_NTZ, -- TIMESTAMP in DB2
    IS_DELETED                STRING(1), -- CHAR with length 1 in DB2
    SK_ACCOUNT_LIMIT_TYPE_KEY NUMBER(38,0) NOT NULL, -- BIGINT PK in DB2 marked as NOT NULL
    UNIT_OF_MEASURE           STRING(32), -- VARCHAR in DB2 with length 32
    UPDATED_BY                STRING(64), -- VARCHAR in DB2 with length 64
    UPDATE_BATCH_ID           NUMBER(38,0), -- BIGINT in DB2
    UPDATE_DATE_TIME          TIMESTAMP_NTZ -- TIMESTAMP in DB2
)
COMMENT='Table migrated from DB2: DIM_ACCOUNT_LIMIT_TYPE';