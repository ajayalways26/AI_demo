CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_ACCOUNT_LIMIT_TYPE (
    ACCOUNT_LIMIT_TYPE_CODE VARCHAR(64), -- Account limit type code, nullable
    ACCOUNT_LIMIT_TYPE_ID BIGINT, -- Account limit type ID, nullable
    ACCOUNT_LIMIT_TYPE_NAME VARCHAR(128), -- Account limit type name, nullable
    BUSINESS_COLUMN VARCHAR(64), -- Business column, nullable
    CREATED_BY VARCHAR(64), -- Created by user, nullable
    CREATE_BATCH_ID BIGINT, -- Create batch ID, nullable
    CREATE_DATE_TIME TIMESTAMP_NTZ, -- Create date-time, nullable
    CURRENT_FLAG CHAR(1), -- Current flag, nullable
    DATA_SOURCE VARCHAR(64), -- Data source, nullable
    DESCRIPTION VARCHAR(255), -- Detailed description, nullable
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL, -- Effective from date-time, not nullable
    EFFECTIVE_TO TIMESTAMP_NTZ, -- Effective to date-time, nullable
    IS_DELETED CHAR(1), -- Soft delete indicator, nullable
    SK_ACCOUNT_LIMIT_TYPE_KEY BIGINT NOT NULL, -- Surrogate key for account limit type, not nullable
    UNIT_OF_MEASURE VARCHAR(32), -- Unit of measure, nullable
    UPDATED_BY VARCHAR(64), -- Updated by user, nullable
    UPDATE_BATCH_ID BIGINT, -- Update batch ID, nullable
    UPDATE_DATE_TIME TIMESTAMP_NTZ -- Update date-time, nullable
);