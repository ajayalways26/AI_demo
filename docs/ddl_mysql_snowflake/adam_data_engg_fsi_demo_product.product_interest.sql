CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product_interest (
    interest_id       NUMBER(19,0)       NOT NULL COMMENT 'Unique identifier for interest',
    product_id        NUMBER(19,0)       NOT NULL COMMENT 'Reference to Product',
    interest_rate     NUMBER(5,2)        NOT NULL COMMENT 'Interest rate (e.g., 5.25)',
    interest_type     VARCHAR(255)       NOT NULL COMMENT 'Interest Type',
    effective_from    DATE               NOT NULL COMMENT 'Effective from date from which the interest is applied',
    effective_to      DATE                        COMMENT 'Effective TO date until which the interest is applied',
    created_by        VARCHAR(64)        NOT NULL COMMENT 'Record created by',
    created_at        TIMESTAMP_LTZ      NOT NULL DEFAULT CURRENT_TIMESTAMP() COMMENT 'Record creation timestamp in UTC',
    updated_by        VARCHAR(64)                 COMMENT 'Record last updated by',
    updated_at        TIMESTAMP_LTZ               COMMENT 'Record last updated timestamp in UTC',

    CONSTRAINT PK_PRODUCT_INTEREST PRIMARY KEY (interest_id),
    CONSTRAINT FK_INTEREST_PRODUCT FOREIGN KEY (product_id)
        REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_product.product (product_id)
)
COMMENT = 'Interest rates applicable to products';