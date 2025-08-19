CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product (
    product_id NUMBER(19,0) NOT NULL COMMENT 'Unique identifier for product',
    product_code VARCHAR(32) NOT NULL COMMENT 'Product Code',
    product_name VARCHAR(128) NOT NULL COMMENT 'Name of the product',
    product_type_id NUMBER(19,0) NOT NULL COMMENT 'Reference to the product type',
    product_category_id NUMBER(19,0) NOT NULL COMMENT 'Reference to the product category',
    currency_code VARCHAR(3) NOT NULL COMMENT 'ISO currency code (e.g., USD)',
    status_id NUMBER(19,0) NOT NULL COMMENT 'Reference to the product status',
    created_by VARCHAR(64) NOT NULL COMMENT 'Record created by',
    created_at TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT 'Record creation timestamp in UTC',
    updated_by VARCHAR(64) NULL COMMENT 'Record last updated by',
    updated_at TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP NULL COMMENT 'Record last updated timestamp in UTC',

    CONSTRAINT PK_PRODUCT PRIMARY KEY (product_id),
    CONSTRAINT FK_PRODUCT_CATEGORY FOREIGN KEY (product_category_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_category (product_category_id),
    CONSTRAINT FK_PRODUCT_STATUS FOREIGN KEY (status_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_status (product_status_id),
    CONSTRAINT FK_PRODUCT_TYPE FOREIGN KEY (product_type_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_type (product_type_id)
) COMMENT='Product master table';