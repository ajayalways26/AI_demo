CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_fee (
    fee_id        NUMBER(19,0)        NOT NULL COMMENT 'Unique identifier for limit',
    product_id    NUMBER(19,0)        NOT NULL COMMENT 'Reference to Product',
    fee_type      VARCHAR(64)         NOT NULL COMMENT 'Type of fee (e.g., Maintenance)',
    fee_amount    NUMBER(10,2)        NOT NULL COMMENT 'Actual Fee Amount',
    fee_frequency VARCHAR(255)        NOT NULL COMMENT 'Frequency of fee',
    created_by    VARCHAR(64)         NOT NULL COMMENT 'Record created by',
    created_at    TIMESTAMP_LTZ       DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT 'Record creation timestamp in UTC',
    updated_by    VARCHAR(64)                     COMMENT 'Record last updated by',
    updated_at    TIMESTAMP_LTZ                  COMMENT 'Record last updated timestamp in UTC',

    CONSTRAINT PK_PRODUCT_FEE PRIMARY KEY (fee_id),
    CONSTRAINT FK_PRODUCT_FEE_PRODUCT FOREIGN KEY (product_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product(product_id)
)
COMMENT = 'Fee configurations for products';