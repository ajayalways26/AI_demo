CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_PRODUCT_CATEGORY (
    BUSINESS_COLUMN             STRING                     COMMENT 'Mapped from DB2 column BUSINESS_COLUMN (VARCHAR(64))',
    CREATED_BY                  STRING                     COMMENT 'Mapped from DB2 column CREATED_BY (VARCHAR(64))',
    CREATE_BATCH_ID             NUMBER                     COMMENT 'Mapped from DB2 column CREATE_BATCH_ID (BIGINT)',
    CREATE_DATE_TIME            TIMESTAMP_NTZ              COMMENT 'Mapped from DB2 column CREATE_DATE_TIME (TIMESTAMP)',
    CURRENT_FLAG                CHAR(1)                    COMMENT 'Mapped from DB2 column CURRENT_FLAG (CHARACTER(1))',
    DATA_SOURCE                 STRING                     COMMENT 'Mapped from DB2 column DATA_SOURCE (VARCHAR(64))',
    DESCRIPTION                 STRING                     COMMENT 'Mapped from DB2 column DESCRIPTION (VARCHAR(255))',
    EFFECTIVE_FROM              TIMESTAMP_NTZ              NOT NULL COMMENT 'Mapped from DB2 column EFFECTIVE_FROM (TIMESTAMP)',
    EFFECTIVE_TO                TIMESTAMP_NTZ              COMMENT 'Mapped from DB2 column EFFECTIVE_TO (TIMESTAMP)',
    IS_DELETED                  CHAR(1)                    COMMENT 'Mapped from DB2 column IS_DELETED (CHARACTER(1))',
    PRODUCT_CATEGORY_CODE       STRING                     COMMENT 'Mapped from DB2 column PRODUCT_CATEGORY_CODE (VARCHAR(64))',
    PRODUCT_CATEGORY_ID         NUMBER                     COMMENT 'Mapped from DB2 column PRODUCT_CATEGORY_ID (BIGINT)',
    PRODUCT_CATEGORY_NAME       STRING                     COMMENT 'Mapped from DB2 column PRODUCT_CATEGORY_NAME (VARCHAR(128))',
    SK_PRODUCT_CATEGORY_KEY     NUMBER                     NOT NULL COMMENT 'Mapped from DB2 column SK_PRODUCT_CATEGORY_KEY (BIGINT)',
    STATUS_ID                   NUMBER                     COMMENT 'Mapped from DB2 column STATUS_ID (BIGINT)',
    UPDATED_BY                  STRING                     COMMENT 'Mapped from DB2 column UPDATED_BY (VARCHAR(64))',
    UPDATE_BATCH_ID             NUMBER                     COMMENT 'Mapped from DB2 column UPDATE_BATCH_ID (BIGINT)',
    UPDATE_DATE_TIME            TIMESTAMP_NTZ              COMMENT 'Mapped from DB2 column UPDATE_DATE_TIME (TIMESTAMP)',

    CONSTRAINT PK_DIM_PRODUCT_CATEGORY PRIMARY KEY (SK_PRODUCT_CATEGORY_KEY)
) COMMENT = 'Table DIM_PRODUCT_CATEGORY migrated from DB2 schema EDW_MART';