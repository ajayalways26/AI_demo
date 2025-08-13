CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer_address (
    address_id      NUMBER(19,0)        NOT NULL COMMENT 'Unique identifier for the customer address record',
    customer_id     NUMBER(19,0)        NOT NULL COMMENT 'Reference to the customer to whom this address belongs',
    address_type    VARCHAR(255)        NOT NULL COMMENT 'Type of address such as Home, Work, Billing, etc.',
    address_line_1  VARCHAR(255)        NOT NULL COMMENT 'Primary address line (e.g., street address or apartment number)',
    address_line_2  VARCHAR(255)        COMMENT 'Secondary address line (e.g., suite or building)',
    city            VARCHAR(64)         NOT NULL COMMENT 'City of the address',
    state           VARCHAR(64)         COMMENT 'State or province of the address',
    postal_code     VARCHAR(16)         COMMENT 'ZIP or postal code',
    country_code    VARCHAR(4)          NOT NULL COMMENT 'Country code in ISO 3166-1 alpha-2 or alpha-3 format',
    address_status  VARCHAR(255)        NOT NULL COMMENT 'Status of the address record (e.g., Active, Inactive)',
    valid_from      TIMESTAMP_NTZ       DEFAULT CURRENT_TIMESTAMP COMMENT 'Start date and time from when the address is valid (in UTC)',
    valid_to        TIMESTAMP_NTZ       COMMENT 'End date and time until which the address is valid (in UTC)',
    created_at      TIMESTAMP_NTZ       DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created (in UTC)',
    created_by      VARCHAR(64)         DEFAULT 'system' COMMENT 'Identifier of the user or system that created the record',
    updated_at      TIMESTAMP_NTZ       DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was last updated (in UTC)',
    updated_by      VARCHAR(64)         DEFAULT 'system' COMMENT 'Identifier of the user or system that last updated the record',

    CONSTRAINT PK_customer_address PRIMARY KEY (address_id),
    CONSTRAINT FK_customer_address_customer FOREIGN KEY (customer_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer(customer_id)
)
COMMENT = 'Stores address details of customers, including type, validity period, and audit trail';