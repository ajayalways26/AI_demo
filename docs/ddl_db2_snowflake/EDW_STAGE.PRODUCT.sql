CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT (
    PRODUCT_ID             BIGINT                NOT NULL COMMENT 'Primary Key',
    PRODUCT_CATEGORY_ID    BIGINT                NOT NULL COMMENT 'Foreign Key to PRODUCT_CATEGORY table',
    PRODUCT_TYPE_ID        BIGINT                NOT NULL COMMENT 'Foreign Key to PRODUCT_TYPE table',
    PRODUCT_CODE           STRING(32)           NOT NULL COMMENT 'Unique product code',
    PRODUCT_NAME           STRING(128)          NOT NULL COMMENT 'Name of the product',
    STATUS_ID              BIGINT                NOT NULL COMMENT 'Foreign Key to PRODUCT_STATUS table',
    CURRENCY_CODE          CHAR(3)              NOT NULL COMMENT 'Currency code of the product',
    CREATED_AT             TIMESTAMP_NTZ        NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY             STRING(64)           NOT NULL COMMENT 'User who created the record',
    UPDATED_AT             TIMESTAMP_NTZ        COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY             STRING(64)           COMMENT 'User who last updated the record',
    STG_CREATED_AT         TIMESTAMP_NTZ        NOT NULL COMMENT 'Stage table creation timestamp',
    STG_CREATED_BY         STRING(64)           NOT NULL COMMENT 'Stage table created by user',
    STG_UPDATED_AT         TIMESTAMP_NTZ        COMMENT 'Stage table last update timestamp',
    STG_UPDATED_BY         STRING(64)           COMMENT 'Stage table last updated by user',

    CONSTRAINT PK_PRODUCT PRIMARY KEY (PRODUCT_ID)
);