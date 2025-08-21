CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_PRODUCT (
    BUSINESS_COLUMN             VARCHAR(64), -- Business-related metadata
    CREATED_BY                  VARCHAR(64), -- Creator of the record
    CREATE_BATCH_ID             BIGINT,      -- Batch ID for creation process
    CREATE_DATE_TIME            TIMESTAMP_NTZ, -- Record creation date and time
    CURRENCY_CODE               VARCHAR(64), -- Currency code for the product
    CURRENT_FLAG                CHAR(1),     -- Flag indicating current record
    DATA_SOURCE                 VARCHAR(64), -- Source of data
    EFFECTIVE_FROM              TIMESTAMP_NTZ, -- Start effective timestamp
    EFFECTIVE_FROM_DATE         DATE,        -- Start effective date
    EFFECTIVE_TO                TIMESTAMP_NTZ, -- End effective timestamp
    EFFECTIVE_TO_DATE           DATE,        -- End effective date
    IS_DELETED                  CHAR(1),     -- Deletion flag
    PRODUCT_CATEGORY_ID         BIGINT,      -- ID of product category
    PRODUCT_CODE                VARCHAR(64), -- Code representing the product
    PRODUCT_ID                  VARCHAR(64), -- Unique identifier for the product
    PRODUCT_NAME                VARCHAR(128), -- Name of the product
    PRODUCT_STATUS_CODE         VARCHAR(64), -- Status code for the product
    PRODUCT_TYPE_ID             BIGINT,      -- Type identifier for the product
    SK_PRODUCT_CATEGORY_KEY     BIGINT,      -- Surrogate key for product category
    SK_PRODUCT_KEY              BIGINT NOT NULL, -- Surrogate key for product (Primary Key)
    SK_PRODUCT_TYPE_KEY         BIGINT,      -- Surrogate key for product type
    STATUS_ID                   BIGINT,      -- Status identifier
    UPDATED_BY                  VARCHAR(64), -- Last updater of the record
    UPDATE_BATCH_ID             BIGINT,      -- Batch ID for update process
    UPDATE_DATE_TIME            TIMESTAMP_NTZ, -- Timestamp for the last update

    CONSTRAINT PK_DIM_PRODUCT PRIMARY KEY (SK_PRODUCT_KEY)
)