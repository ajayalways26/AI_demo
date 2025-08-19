CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_status (
    product_status_id NUMBER(19,0) NOT NULL COMMENT 'Unique Identifier',
    product_status_code VARCHAR(16) NOT NULL COMMENT 'Status code (e.g., ACTIVE, INACTIVE)',
    product_status_name VARCHAR(32) NOT NULL COMMENT 'Status Code Name',
    product_status_description VARCHAR(64) COMMENT 'Human-readable status',
    created_by VARCHAR(64) NOT NULL COMMENT 'Record created by',
    created_at TIMESTAMP_LTZ NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation timestamp in UTC',
    updated_by VARCHAR(64) COMMENT 'Record updated by',
    updated_at TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Record last updated timestamp in UTC',

    CONSTRAINT PK_PRODUCT_STATUS PRIMARY KEY (product_status_id)
)
COMMENT='Master table for product status codes';