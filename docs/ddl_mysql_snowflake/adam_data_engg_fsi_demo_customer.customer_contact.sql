CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer_contact (
    contact_id NUMBER(19,0) NOT NULL COMMENT 'Unique identifier for the contact entry',
    customer_id NUMBER(19,0) NOT NULL COMMENT 'Reference to the customer',
    contact_method VARCHAR(255) NOT NULL COMMENT 'Channel used to contact the customer',
    contact_type VARCHAR(255) NOT NULL COMMENT 'Purpose or category of the contact',
    contact_value VARCHAR(128) NOT NULL COMMENT 'Actual contact detail (email, phone number, etc.)',
    is_primary NUMBER(3,0) DEFAULT 0 COMMENT 'Marks this as the primary contact of this method for the customer',
    contact_status VARCHAR(255) DEFAULT 'PENDING' COMMENT 'Lifecycle status of the contact method',
    valid_from TIMESTAMP_NTZ COMMENT 'UTC timestamp from when the contact is valid',
    valid_to TIMESTAMP_NTZ COMMENT 'UTC timestamp until when the contact is valid',
    created_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'UTC timestamp when the record was created',
    updated_at TIMESTAMP_NTZ COMMENT 'UTC timestamp when the record was last updated',
    created_by VARCHAR(128) COMMENT 'User or system that created this record',
    updated_by VARCHAR(128) COMMENT 'User or system that last updated this record',
    CONSTRAINT PK_customer_contact PRIMARY KEY (contact_id),
    CONSTRAINT FK_customer_contact_customer_id FOREIGN KEY (customer_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer (customer_id)
) COMMENT = 'Stores customer contact details across multiple channels and use cases, with audit and validity tracking';