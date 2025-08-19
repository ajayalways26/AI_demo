CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_limit (
    limit_id        NUMBER(19,0)        NOT NULL COMMENT 'Unique identifier for limit',
    product_id      NUMBER(19,0)        NOT NULL COMMENT 'Reference to Product',
    limit_type      VARCHAR(64)         NOT NULL COMMENT 'Limit type (e.g., withdrawal)',
    limit_value     NUMBER(12,2)        NOT NULL COMMENT 'Actual Limit value',
    limit_frequency VARCHAR(255)        NOT NULL COMMENT 'Specifies the frequency of the limit—daily, monthly, or yearly.',
    created_by      VARCHAR(64)         NOT NULL COMMENT 'Record created by',
    created_at      TIMESTAMP_LTZ       DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT 'Record creation timestamp in UTC',
    updated_by      VARCHAR(64)         COMMENT 'Record last updated by',
    updated_at      TIMESTAMP_LTZ       COMMENT 'Record last updated timestamp in UTC',

    CONSTRAINT PK_product_limit PRIMARY KEY (limit_id),
    CONSTRAINT FK_limit_product FOREIGN KEY (product_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product (product_id) ON DELETE CASCADE
);

COMMENT = 'Limits applicable on products';