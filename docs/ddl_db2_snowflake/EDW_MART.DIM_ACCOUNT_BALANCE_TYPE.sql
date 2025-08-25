CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_ID NUMBER(38,0), -- Account Balance Type ID
    BALANCE_TYPE_CODE       STRING, -- Balance Type Code
    BALANCE_TYPE_NAME       STRING, -- Balance Type Name
    BUSINESS_COLUMN         STRING, -- Business Column
    CREATED_BY              STRING, -- Created By
    CREATE_BATCH_ID         NUMBER(38,0), -- Create Batch ID
    CREATE_DATE_TIME        TIMESTAMP_NTZ, -- Create Date Time
    CURRENT_FLAG            STRING, -- Current Flag
    DATA_SOURCE             STRING, -- Data Source
    DESCRIPTION             STRING, -- Description
    EFFECTIVE_FROM          TIMESTAMP_NTZ NOT NULL, -- Effective From
    EFFECTIVE_TO            TIMESTAMP_NTZ, -- Effective To
    IS_DELETED              STRING, -- Is Deleted
    SK_ACCOUNT_BALANCE_TYPE_KEY NUMBER(38,0) NOT NULL, -- Surrogate Key for Account Balance Type
    STATUS_CODE             STRING, -- Status Code
    UPDATED_BY              STRING, -- Updated By
    UPDATE_BATCH_ID         NUMBER(38,0), -- Update Batch ID
    UPDATE_DATE_TIME        TIMESTAMP_NTZ, -- Update Date Time

    CONSTRAINT PK_DIM_ACCOUNT_BALANCE_TYPE PRIMARY KEY (SK_ACCOUNT_BALANCE_TYPE_KEY)
)