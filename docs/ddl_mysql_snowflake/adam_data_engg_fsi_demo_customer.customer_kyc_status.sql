CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer_kyc_status (
    kyc_status_id NUMBER(19,0) NOT NULL COMMENT 'Unique identifier for the KYC status record',
    customer_id NUMBER(19,0) NOT NULL COMMENT 'Reference to the customer whose KYC status is being tracked',
    kyc_status VARCHAR(255) NOT NULL COMMENT 'Current KYC status for the customer',
    status_reason VARCHAR(255) COMMENT 'Optional reason or remarks for the current KYC status',
    effective_from TIMESTAMP_NTZ NOT NULL COMMENT 'Start timestamp for the current KYC status (UTC)',
    effective_to TIMESTAMP_NTZ COMMENT 'End timestamp for this KYC status, if applicable (UTC)',
    created_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation timestamp (UTC)',
    created_by VARCHAR(64) COMMENT 'User or system who created the record',
    updated_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Last updated timestamp (UTC)',
    updated_by VARCHAR(64) COMMENT 'User or system who last updated the record',

    CONSTRAINT PK_customer_kyc_status PRIMARY KEY (kyc_status_id),
    CONSTRAINT FK_customer_kyc_status_customer_id FOREIGN KEY (customer_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer(customer_id)
)
COMMENT = 'Tracks the Know Your Customer (KYC) status lifecycle for a customer.'