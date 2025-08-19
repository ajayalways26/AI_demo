CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer_preference (
    preference_id NUMBER(19,0) NOT NULL COMMENT 'Unique identifier for each preference record',
    customer_id NUMBER(19,0) NOT NULL COMMENT 'Reference to the customer',
    communication_channel VARCHAR(255) NOT NULL COMMENT 'Preferred mode of communication',
    preferred_language VARCHAR(32) DEFAULT 'en' COMMENT 'Preferred language code (e.g., en, es, fr)',
    contact_time_window VARCHAR(255) DEFAULT 'Anytime' COMMENT 'Preferred time of day to contact the customer',
    marketing_opt_in NUMBER(3,0) DEFAULT 1 COMMENT 'Flag to indicate if customer agrees to receive marketing messages',
    is_active NUMBER(3,0) DEFAULT 1 COMMENT 'Indicates whether the preference is currently active',
    created_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation timestamp (UTC)',
    created_by VARCHAR(64) COMMENT 'User or system who created the record',
    updated_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Last updated timestamp (UTC)',
    updated_by VARCHAR(64) COMMENT 'User or system who last updated the record',

    CONSTRAINT PK_CUSTOMER_PREFERENCE PRIMARY KEY (preference_id),
    CONSTRAINT FK_CUSTOMER_PREF_CUSTOMER FOREIGN KEY (customer_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer(customer_id)
)
COMMENT = 'Stores customer preferences such as communication channel and language.';