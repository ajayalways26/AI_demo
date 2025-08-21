CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT_INTEREST (
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY VARCHAR(64) NOT NULL COMMENT 'User ID who created the record',
    EFFECTIVE_FROM DATE NOT NULL COMMENT 'Date from which the record is effective',
    EFFECTIVE_TO DATE COMMENT 'Date until which the record is effective',
    INTEREST_ID BIGINT NOT NULL COMMENT 'Unique identifier for the interest',
    INTEREST_RATE NUMBER(5,2) NOT NULL COMMENT 'Rate of interest',
    INTEREST_TYPE VARCHAR(10) NOT NULL COMMENT 'Type of interest',
    PRODUCT_ID BIGINT NOT NULL COMMENT 'Foreign key referencing Product ID',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Stage timestamp when the record was created',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'Stage user ID who created the record',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Stage timestamp when the record was last updated',
    STG_UPDATED_BY VARCHAR(64) COMMENT 'Stage user ID who last updated the record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY VARCHAR(64) COMMENT 'User ID who last updated the record',
    CONSTRAINT PK_PRODUCT_INTEREST PRIMARY KEY (INTEREST_ID),
    FOREIGN KEY (PRODUCT_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.PRODUCT(PRODUCT_ID)
) COMMENT = 'Table containing product interest details';