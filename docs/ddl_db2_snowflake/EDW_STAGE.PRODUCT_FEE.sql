CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT_FEE (
    FEE_ID            BIGINT                  NOT NULL COMMENT 'Primary key identifier for fee',
    PRODUCT_ID        BIGINT                  NOT NULL COMMENT 'Foreign key linking to PRODUCT table',
    FEE_TYPE          VARCHAR(64)            NOT NULL COMMENT 'Type of the fee',
    FEE_AMOUNT        NUMBER(10,2)           NOT NULL COMMENT 'Amount of the fee',
    FEE_FREQUENCY     VARCHAR(10)            NOT NULL COMMENT 'Frequency of the fee',
    CREATED_BY        VARCHAR(64)            NOT NULL COMMENT 'User who created the record',
    CREATED_AT        TIMESTAMP_NTZ(6)       NOT NULL COMMENT 'Timestamp of record creation',
    UPDATED_BY        VARCHAR(64)            COMMENT 'User who last updated the record',
    UPDATED_AT        TIMESTAMP_NTZ(6)       COMMENT 'Timestamp of last update',
    STG_CREATED_BY    VARCHAR(64)            NOT NULL COMMENT 'Staging area user who created the record',
    STG_CREATED_AT    TIMESTAMP_NTZ(6)       NOT NULL COMMENT 'Staging area timestamp of record creation',
    STG_UPDATED_BY    VARCHAR(64)            COMMENT 'Staging area user who last updated the record',
    STG_UPDATED_AT    TIMESTAMP_NTZ(6)       COMMENT 'Staging area timestamp of last update',

    CONSTRAINT PK_PRODUCT_FEE PRIMARY KEY (FEE_ID),
    CONSTRAINT FK_PRODUCT_FEE_PRODUCT_ID FOREIGN KEY (PRODUCT_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT(PRODUCT_ID)
)
COMMENT='Table storing fee details for each product';