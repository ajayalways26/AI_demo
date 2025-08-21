CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.KYC_DOCUMENT_MAP (
    CREATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    CREATED_BY STRING COMMENT 'User who created the record',
    DOCUMENT_ID BIGINT NOT NULL COMMENT 'ID of the associated document',
    KYC_STATUS_ID BIGINT NOT NULL COMMENT 'ID of the KYC status',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Stage timestamp for record creation',
    STG_CREATED_BY STRING NOT NULL COMMENT 'Stage user who created the record',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Stage timestamp for record update',
    STG_UPDATED_BY STRING COMMENT 'Stage user who updated the record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY STRING COMMENT 'User who last updated the record',

    CONSTRAINT FK_DOCUMENT_ID FOREIGN KEY (DOCUMENT_ID) REFERENCES EDW_STAGE.CUSTOMER_DOCUMENT (DOCUMENT_ID),
    CONSTRAINT FK_KYC_STATUS_ID FOREIGN KEY (KYC_STATUS_ID) REFERENCES EDW_STAGE.CUSTOMER_KYC_STATUS (KYC_STATUS_ID)
)
COMMENT = 'Mapping table for KYC documents and their associated statuses';