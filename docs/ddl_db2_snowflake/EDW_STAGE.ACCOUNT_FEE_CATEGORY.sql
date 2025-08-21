CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_FEE_CATEGORY (
    ACCOUNT_FEE_CATEGORY_ID BIGINT NOT NULL, -- Primary identifier for the account fee category
    ACCOUNT_FEE_CATEGORY_CODE STRING NOT NULL, -- Code representing the account fee category
    ACCOUNT_FEE_CATEGORY_NAME STRING NOT NULL, -- Name of the account fee category
    ACCOUNT_FEE_CATEGORY_DESCRIPTION STRING, -- Description of the account fee category
    CREATED_AT TIMESTAMP_NTZ NOT NULL, -- Timestamp when the record was created
    CREATED_BY STRING NOT NULL, -- User who created the record
    UPDATED_AT TIMESTAMP_NTZ, -- Timestamp when the record was last updated
    UPDATED_BY STRING, -- User who last updated the record
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL, -- Timestamp for staging creation
    STG_CREATED_BY STRING NOT NULL, -- User who staged the record's creation
    STG_UPDATED_AT TIMESTAMP_NTZ, -- Timestamp for staging update
    STG_UPDATED_BY STRING, -- User who staged the record's update

    CONSTRAINT PK_ACCOUNT_FEE_CATEGORY PRIMARY KEY (ACCOUNT_FEE_CATEGORY_ID)
)