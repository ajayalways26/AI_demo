CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_PRODUCT_CATEGORY (
    SK_PRODUCT_CATEGORY_KEY BIGINT NOT NULL, -- Primary surrogate key for the product category dimension
    PRODUCT_CATEGORY_CODE VARCHAR(64), -- Business code for the product category
    PRODUCT_CATEGORY_NAME VARCHAR(128), -- Name of the product category
    DESCRIPTION VARCHAR(255), -- Description of the product category
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL, -- Effective start date and time
    EFFECTIVE_TO TIMESTAMP_NTZ, -- Effective end date and time
    CURRENT_FLAG CHAR(1), -- Flag indicating whether the record is current
    IS_DELETED CHAR(1), -- Flag indicating if the record is deleted
    CREATED_BY VARCHAR(64), -- User who created the record
    UPDATED_BY VARCHAR(64), -- User who last updated the record
    CREATE_DATE_TIME TIMESTAMP_NTZ, -- Date and time the record was created
    UPDATE_DATE_TIME TIMESTAMP_NTZ, -- Date and time the record was last updated
    DATA_SOURCE VARCHAR(64), -- Source of the data
    CREATE_BATCH_ID BIGINT, -- Batch ID for creation process
    UPDATE_BATCH_ID BIGINT, -- Batch ID for update process
    BUSINESS_COLUMN VARCHAR(64), -- Custom business column
    PRODUCT_CATEGORY_ID BIGINT, -- Product category identifier
    STATUS_ID BIGINT, -- Status identifier

    CONSTRAINT PK_DIM_PRODUCT_CATEGORY PRIMARY KEY (SK_PRODUCT_CATEGORY_KEY)
);

-- Proper comments added for Snowflake best practices