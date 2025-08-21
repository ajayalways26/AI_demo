CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER_KYC_STATUS (
    CREATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    CUSTOMER_ID NUMBER(38,0) NOT NULL COMMENT 'Unique identifier for the customer',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Start date of KYC status effectiveness',
    EFFECTIVE_TO TIMESTAMP_NTZ COMMENT 'End date of KYC status effectiveness',
    KYC_STATUS VARCHAR(32) NOT NULL COMMENT 'Customer KYC status',
    KYC_STATUS_ID NUMBER(38,0) NOT NULL COMMENT 'Unique identifier for KYC status',
    STATUS_REASON VARCHAR(255) COMMENT 'Reason or explanation for the KYC status',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the staging record was created',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'User who created the staging record',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the staging record was updated',
    STG_UPDATED_BY VARCHAR(64) COMMENT 'User who updated the staging record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',

    CONSTRAINT PK_CUSTOMER_KYC_STATUS PRIMARY KEY (KYC_STATUS_ID),
    CONSTRAINT FK_CUSTOMER_KYC_STATUS_CUSTOMER FOREIGN KEY (CUSTOMER_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER(CUSTOMER_ID)
)
COMMENT = 'Table to track customer KYC status and its history';