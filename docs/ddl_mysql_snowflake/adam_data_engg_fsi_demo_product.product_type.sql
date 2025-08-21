CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_type (
    product_type_id NUMBER(19,0) NOT NULL COMMENT 'Unique Identifier',
    product_type_code VARCHAR(32) NOT NULL COMMENT 'Code for the product type',
    product_type_name VARCHAR(64) NOT NULL COMMENT 'Name of the product type',
    product_description VARCHAR(65535) COMMENT 'Description of the product type',
    status_id NUMBER(19,0) NOT NULL COMMENT 'Reference to the product status',
    created_by VARCHAR(64) NOT NULL COMMENT 'Record created by',
    created_at TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT 'Record creation timestamp in UTC',
    updated_by VARCHAR(64) COMMENT 'Record last updated by',
    updated_at TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Record last updated timestamp in UTC',

    CONSTRAINT PK_PRODUCT_TYPE PRIMARY KEY (product_type_id),
    CONSTRAINT FK_PRODUCT_TYPE_STATUS FOREIGN KEY (status_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_status(product_status_id)
)
COMMENT = 'Master table for product types';