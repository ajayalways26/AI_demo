CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer_document (
    document_id       NUMBER(19,0)                       NOT NULL COMMENT 'Unique identifier for each customer document',
    customer_id       NUMBER(19,0)                       NOT NULL COMMENT 'Reference to the customer to whom the document belongs',
    document_type     VARCHAR(64)                        NOT NULL COMMENT 'Type of document, e.g., ID Proof, Address Proof, Income Statement',
    document_number   VARCHAR(64)                        COMMENT 'Number or code identifying the document (e.g., PAN, Passport number)',
    issue_date        DATE                                COMMENT 'Date when the document was issued',
    expiry_date       DATE                                COMMENT 'Expiry date of the document if applicable',
    issued_by         VARCHAR(128)                       COMMENT 'Authority or organization that issued the document',
    country_code      VARCHAR(4)                         COMMENT 'Country where the document was issued',
    file_path         VARCHAR(255)                       COMMENT 'Path or reference to where the document file is stored',
    file_format       VARCHAR(16)                        COMMENT 'File type of the uploaded document (e.g., PDF, JPEG)',
    document_status   VARCHAR(32) DEFAULT 'Active'       COMMENT 'Status of the document (e.g., Active, Expired, Inactive)',
    verification_status VARCHAR(32) DEFAULT 'Pending'    COMMENT 'Status of document verification: Pending, Verified, Rejected, etc.',
    verified_at       TIMESTAMP_NTZ                      COMMENT 'Timestamp when the document was verified (UTC)',
    verified_by       VARCHAR(64)                        COMMENT 'User or system who verified the document',
    valid_from        TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Start timestamp when the document is considered valid (UTC)',
    valid_to          TIMESTAMP_NTZ                      COMMENT 'End timestamp when the document validity ends (UTC)',
    created_at        TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was created (UTC)',
    created_by        VARCHAR(64) DEFAULT 'system'       COMMENT 'User or system that created the record',
    updated_at        TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the record was last updated (UTC)',
    updated_by        VARCHAR(64) DEFAULT 'system'       COMMENT 'User or system that last updated the record',

    CONSTRAINT PK_customer_document PRIMARY KEY (document_id),
    CONSTRAINT FK_customer_document_customer FOREIGN KEY (customer_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer (customer_id)
)
COMMENT = 'Stores documents submitted by customers for identification, verification, and compliance purposes';