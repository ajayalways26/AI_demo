CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer (
    customer_id                  NUMBER(19,0)          NOT NULL COMMENT 'Unique identifier for the customer',
    first_name                   VARCHAR(128)          NOT NULL COMMENT 'First name of the customer',
    last_name                    VARCHAR(128)                      COMMENT 'Last name of the customer',
    date_of_birth                DATE                              COMMENT 'Date of birth of the customer',
    gender                       VARCHAR(255)                      COMMENT 'Gender of the customer',
    national_id                  VARCHAR(128)                      COMMENT 'Government-issued national ID such as PAN, Aadhaar, or SSN',
    customer_segment             VARCHAR(64)                       COMMENT 'Segment category such as HNI, NRI, Retail, etc.',
    risk_rating                  VARCHAR(16)                       COMMENT 'Risk category based on KYC or AML classification',
    customer_status              VARCHAR(255)                      COMMENT 'Current status of the customer record',
    email_address                VARCHAR(128)                      COMMENT 'Primary email address of the customer',
    mobile_number                VARCHAR(16)                       COMMENT 'Primary mobile number of the customer',
    registration_date            TIMESTAMP_NTZ                     COMMENT 'UTC timestamp on which the customer registered with the bank',
    customer_timezone_offset     VARCHAR(8)                        COMMENT 'Customer Timezone Offset',
    created_at                   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'UTC timestamp when the record was created',
    updated_at                   TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'UTC timestamp when the record was last updated',
    created_by                   VARCHAR(128)                      COMMENT 'User or system that created this record',
    updated_by                   VARCHAR(128)                      COMMENT 'User or system that last updated this record',

    CONSTRAINT PK_CUSTOMER PRIMARY KEY (customer_id)
) COMMENT='Stores master customer data including demographic, segmentation, and audit attributes';