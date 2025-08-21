CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT_STATUS (
    PRODUCT_STATUS_ID BIGINT NOT NULL COMMENT 'Primary key for product status',
    PRODUCT_STATUS_CODE VARCHAR(16) NOT NULL COMMENT 'Code representing the product status',
    PRODUCT_STATUS_NAME VARCHAR(32) NOT NULL COMMENT 'Name of the product status',
    PRODUCT_STATUS_DESCRIPTION VARCHAR(64) COMMENT 'Description of the product status',
    CREATED_BY VARCHAR(64) NOT NULL COMMENT 'User who created the record',
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'Staging user who created the record in staging',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created in staging',
    STG_UPDATED_BY VARCHAR(64) COMMENT 'Staging user who last updated the record in staging',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated in staging',

    CONSTRAINT PK_PRODUCT_STATUS PRIMARY KEY (PRODUCT_STATUS_ID)
)
COMMENT = 'Table to store product status information';