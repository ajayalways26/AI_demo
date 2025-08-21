CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT_LIMIT (
    CREATED_AT       TIMESTAMP_NTZ    NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY       STRING           NOT NULL COMMENT 'User who created the record',
    LIMIT_FREQUENCY  STRING           NOT NULL COMMENT 'Frequency of the limit',
    LIMIT_ID         NUMBER(38,0)     NOT NULL COMMENT 'Unique identifier for the limit',
    LIMIT_TYPE       STRING(64)       NOT NULL COMMENT 'Type of the limit',
    LIMIT_VALUE      NUMBER(12,2)     NOT NULL COMMENT 'Value associated with the limit',
    PRODUCT_ID       NUMBER(38,0)     NOT NULL COMMENT 'Unique identifier for the product',
    STG_CREATED_AT   TIMESTAMP_NTZ    NOT NULL COMMENT 'Stage table timestamp when the record was created',
    STG_CREATED_BY   STRING           NOT NULL COMMENT 'Stage table user who created the record',
    STG_UPDATED_AT   TIMESTAMP_NTZ    COMMENT 'Stage table timestamp when the record was last updated',
    STG_UPDATED_BY   STRING           COMMENT 'Stage table user who last updated the record',
    UPDATED_AT       TIMESTAMP_NTZ    COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY       STRING           COMMENT 'User who last updated the record',

    CONSTRAINT PK_PRODUCT_LIMIT PRIMARY KEY (LIMIT_ID),
    CONSTRAINT FK_PRODUCT_ID FOREIGN KEY (PRODUCT_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT(PRODUCT_ID)
)
COMMENT = 'Table storing product limit details';