CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT_CATEGORY (
    PRODUCT_CATEGORY_ID        BIGINT              NOT NULL COMMENT 'Primary key for the product category',
    PRODUCT_CATEGORY_CODE      VARCHAR(32)         NOT NULL COMMENT 'Unique code representing the product category',
    PRODUCT_CATEGORY_NAME      VARCHAR(64)         NOT NULL COMMENT 'Name of the product category',
    PRODUCT_CATEGORY_DESCRIPTION TEXT              COMMENT 'Detailed description of the product category',
    STATUS_ID                  BIGINT              NOT NULL COMMENT 'Status identifier referencing PRODUCT_STATUS table',
    CREATED_BY                 VARCHAR(64)         NOT NULL COMMENT 'User who created the record',
    CREATED_AT                 TIMESTAMP_NTZ       NOT NULL COMMENT 'Timestamp when the record was created',
    UPDATED_BY                 VARCHAR(64)         COMMENT 'User who updated the record',
    UPDATED_AT                 TIMESTAMP_NTZ       COMMENT 'Timestamp when the record was updated',
    STG_CREATED_BY             VARCHAR(64)         NOT NULL COMMENT 'User who created the record in staging',
    STG_CREATED_AT             TIMESTAMP_NTZ       NOT NULL COMMENT 'Timestamp when the record was created in staging',
    STG_UPDATED_BY             VARCHAR(64)         COMMENT 'User who updated the record in staging',
    STG_UPDATED_AT             TIMESTAMP_NTZ       COMMENT 'Timestamp when the record was updated in staging',

    CONSTRAINT PK_PRODUCT_CATEGORY PRIMARY KEY (PRODUCT_CATEGORY_ID)
) COMMENT = 'Table for storing product category information';