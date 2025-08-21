CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_category (
    product_category_id        NUMBER(19,0)       NOT NULL COMMENT 'Unique category code',
    product_category_code      VARCHAR(32)        NOT NULL COMMENT 'Product category code',
    product_category_name      VARCHAR(64)        NOT NULL COMMENT 'Name of the product category',
    product_category_description VARCHAR(65535)   COMMENT 'Category description',
    status_id                  NUMBER(19,0)       NOT NULL COMMENT 'Reference to the product status',
    created_by                 VARCHAR(64)        NOT NULL COMMENT 'Record created by',
    created_at                 TIMESTAMP_LTZ      DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT 'Record creation timestamp in UTC',
    updated_by                 VARCHAR(64)        COMMENT 'Record last updated by',
    updated_at                 TIMESTAMP_LTZ      DEFAULT CURRENT_TIMESTAMP COMMENT 'Record last updated timestamp in UTC',

    CONSTRAINT PK_PRODUCT_CATEGORY PRIMARY KEY (product_category_id),
    CONSTRAINT FK_PRODUCT_CATEGORY_STATUS FOREIGN KEY (status_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_status(product_status_id)
)
COMMENT = 'Categories used to group products (e.g., Savings, Loan)';