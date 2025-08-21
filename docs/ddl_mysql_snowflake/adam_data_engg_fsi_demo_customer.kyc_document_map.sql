CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.kyc_document_map (
    kyc_status_id   NUMBER(19,0)    NOT NULL COMMENT 'Reference to KYC status',
    document_id     NUMBER(19,0)    NOT NULL COMMENT 'Reference to document used in KYC',
    created_at      TIMESTAMP_NTZ   DEFAULT CURRENT_TIMESTAMP COMMENT 'UTC timestamp when the record was created',
    updated_at      TIMESTAMP_NTZ   DEFAULT CURRENT_TIMESTAMP COMMENT 'UTC timestamp when the record was last updated',
    created_by      VARCHAR(128)    COMMENT 'User or system that created this record',
    updated_by      VARCHAR(128)    COMMENT 'User or system that last updated this record',

    CONSTRAINT PK_KYC_DOCUMENT_MAP PRIMARY KEY (kyc_status_id, document_id),
    FOREIGN KEY (document_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer_document (document_id),
    FOREIGN KEY (kyc_status_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer_kyc_status (kyc_status_id)
)
COMMENT='Maps customer documents used for verifying a specific KYC status.';