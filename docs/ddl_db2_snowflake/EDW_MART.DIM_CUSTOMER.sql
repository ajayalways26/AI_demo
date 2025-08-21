CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_MART.DIM_CUSTOMER (
    BUSINESS_COLUMN              STRING, -- Business-related information
    CREATED_BY                   STRING, -- User who created the record
    CREATE_BATCH_ID              STRING, -- Batch identifier for creation
    CREATE_DATE_TIME             TIMESTAMP_NTZ, -- Date and time of creation
    CURRENT_FLAG                 STRING, -- Indicates current status (e.g., 'Y' or 'N')
    CUSTOMER_ID                  STRING NOT NULL, -- Unique identifier for the customer
    CUSTOMER_NAME                STRING, -- Customer's name
    CUSTOMER_SEGMENT             STRING, -- Segment classification of the customer
    CUSTOMER_STATUS              STRING, -- Current status of the customer
    CUSTOMER_TIMEZONE_OFFSET     STRING, -- Customer's timezone offset
    CUSTOMER_TYPE                STRING, -- Type/classification of customer
    DATA_SOURCE                  STRING, -- Source of data origin
    DATE_OF_BIRTH                DATE, -- Customer's date of birth
    EFFECTIVE_FROM               TIMESTAMP_NTZ NOT NULL, -- Start date for data validity
    EFFECTIVE_TO                 TIMESTAMP_NTZ, -- End date for data validity
    EMAIL_ADDRESS                STRING, -- Customer's email address
    GENDER                       STRING, -- Gender of the customer
    INCOME_LEVEL                 STRING, -- Customer's income level
    IS_DELETED                   STRING, -- Flag for soft delete (e.g., 'Y' or 'N')
    MARITAL_STATUS               STRING, -- Customer's marital status
    MOBILE_NUMBER                STRING, -- Customer's mobile phone number
    NATIONALITY                  STRING, -- Customer's nationality
    OCCUPATION                   STRING, -- Customer's occupation
    REGISTRATION_DATE            TIMESTAMP_NTZ, -- Customer's registration date
    RESIDENCY_STATUS             STRING, -- Status of residency (e.g., permanent, temporary)
    RISK_RATING                  STRING, -- Risk rating associated with the customer
    SK_CUSTOMER_KEY              NUMBER(38,0) NOT NULL, -- Surrogate key for customer
    UPDATED_BY                   STRING, -- User who last updated the record
    UPDATE_BATCH_ID              STRING, -- Batch identifier for update
    UPDATE_DATE_TIME             TIMESTAMP_NTZ, -- Date and time of last update

    CONSTRAINT PK_DIM_CUSTOMER PRIMARY KEY (SK_CUSTOMER_KEY)
)
COMMENT = 'Dimension table for customer data';