CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT (
    ACCOUNT_ID                   VARCHAR(64), -- Account Identifier
    ACCOUNT_NAME                 VARCHAR(128), -- Account Name
    ACCOUNT_NUMBER               VARCHAR(64), -- Account Number
    ACCOUNT_TYPE_ID              NUMBER(38,0), -- ID for Account Type
    BUSINESS_COLUMN              VARCHAR(64), -- Business Column
    CLOSE_DATE                   DATE, -- Close Date
    CREATED_BY                   VARCHAR(64), -- Created By
    CREATE_BATCH_ID              NUMBER(38,0), -- Batch ID for Create Operation
    CREATE_DATE_TIME             TIMESTAMP_NTZ, -- Create Date and Time
    CURRENCY_CODE                VARCHAR(64), -- Currency Code
    CURRENT_FLAG                 CHAR(1), -- Indicates Current Flag
    CUSTOMER_ID                  NUMBER(38,0), -- Customer Identifier
    DATA_SOURCE                  VARCHAR(64), -- Data Source
    EFFECTIVE_FROM               TIMESTAMP_NTZ NOT NULL, -- Effective From Timestamp
    EFFECTIVE_TO                 TIMESTAMP_NTZ, -- Effective To Timestamp
    IS_DELETED                   CHAR(1), -- Deletion Flag
    OPEN_DATE                    DATE, -- Open Date
    PRODUCT_ID                   NUMBER(38,0), -- Product Identifier
    SK_ACCOUNT_KEY               NUMBER(38,0) NOT NULL, -- Surrogate Key for Account (Primary Key)
    SK_ACCOUNT_STATUS_KEY        NUMBER(38,0), -- Surrogate Key for Account Status
    SK_ACCOUNT_TYPE_KEY          NUMBER(38,0), -- Surrogate Key for Account Type
    SK_CUSTOMER_KEY              NUMBER(38,0), -- Surrogate Key for Customer
    SK_PRODUCT_KEY               NUMBER(38,0), -- Surrogate Key for Product
    STATUS_ID                    NUMBER(38,0), -- Status Identifier
    UPDATED_BY                   VARCHAR(64), -- Updated By
    UPDATE_BATCH_ID              NUMBER(38,0), -- Batch ID for Update Operation
    UPDATE_DATE_TIME             TIMESTAMP_NTZ, -- Update Date and Time

    CONSTRAINT PK_DIM_ACCOUNT PRIMARY KEY (SK_ACCOUNT_KEY)
)
COMMENT = 'Dimension table for account metadata';