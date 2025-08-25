CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT (
    ACCOUNT_ID                 VARCHAR(64), -- Account identifier
    ACCOUNT_NAME               VARCHAR(128), -- Account name
    ACCOUNT_NUMBER             VARCHAR(64), -- Unique account number
    ACCOUNT_TYPE_ID            BIGINT, -- Foreign key to Account Type
    BUSINESS_COLUMN            VARCHAR(64), -- Business-specific column
    CLOSE_DATE                 DATE, -- Account close date
    CREATED_BY                 VARCHAR(64), -- User who created the record
    CREATE_BATCH_ID            BIGINT, -- Batch ID for record creation
    CREATE_DATE_TIME           TIMESTAMP_NTZ, -- Timestamp for record creation
    CURRENCY_CODE              VARCHAR(64), -- Currency associated
    CURRENT_FLAG               CHAR(1), -- Current record flag
    CUSTOMER_ID                BIGINT, -- Foreign key to Customer table
    DATA_SOURCE                VARCHAR(64), -- Source system
    EFFECTIVE_FROM             TIMESTAMP_NTZ NOT NULL, -- Effective start timestamp
    EFFECTIVE_TO               TIMESTAMP_NTZ, -- Effective end timestamp
    IS_DELETED                 CHAR(1), -- Deletion flag
    OPEN_DATE                  DATE, -- Account open date
    PRODUCT_ID                 BIGINT, -- Foreign key to Product table
    SK_ACCOUNT_KEY             BIGINT NOT NULL, -- Surrogate key for Account
    SK_ACCOUNT_STATUS_KEY      BIGINT, -- Surrogate key for Account Status
    SK_ACCOUNT_TYPE_KEY        BIGINT, -- Surrogate key for Account Type
    SK_CUSTOMER_KEY            BIGINT, -- Surrogate key for Customer
    SK_PRODUCT_KEY             BIGINT, -- Surrogate key for Product
    STATUS_ID                  BIGINT, -- Foreign key to Status table
    UPDATED_BY                 VARCHAR(64), -- User who updated the record last
    UPDATE_BATCH_ID            BIGINT, -- Batch ID for latest update
    UPDATE_DATE_TIME           TIMESTAMP_NTZ, -- Timestamp for latest update
    
    CONSTRAINT PK_DIM_ACCOUNT PRIMARY KEY (SK_ACCOUNT_KEY)
) COMMENT='Dimension table containing account details at adam_data_engg_fsi_demo.EDW_MART schema';