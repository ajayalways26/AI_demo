CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER_CONTACT (
    CONTACT_ID      BIGINT               NOT NULL COMMENT 'Unique identifier for the contact',
    CUSTOMER_ID     BIGINT               NOT NULL COMMENT 'Foreign key referencing CUSTOMER table',
    CONTACT_METHOD  STRING               NOT NULL COMMENT 'Method of contact (e.g., phone, email)',
    CONTACT_TYPE    STRING               NOT NULL COMMENT 'Type of contact',
    CONTACT_VALUE   STRING(128)          NOT NULL COMMENT 'Contact details (e.g., phone number, email address)',
    CONTACT_STATUS  STRING               COMMENT 'Status of contact (e.g., active, inactive)',
    IS_PRIMARY      BOOLEAN              COMMENT 'Indicates if this is the primary contact',
    CREATED_AT      TIMESTAMP_NTZ        COMMENT 'Record creation timestamp',
    UPDATED_AT      TIMESTAMP_NTZ        COMMENT 'Record last updated timestamp',
    CREATED_BY      STRING(128)          COMMENT 'User who created the record',
    UPDATED_BY      STRING(128)          COMMENT 'User who last updated the record',
    STG_CREATED_BY  STRING(64)           NOT NULL COMMENT 'Stage loader who created the record',
    STG_CREATED_AT  TIMESTAMP_NTZ        NOT NULL COMMENT 'Stage creation timestamp',
    STG_UPDATED_BY  STRING(64)           COMMENT 'Stage loader who last updated the record',
    STG_UPDATED_AT  TIMESTAMP_NTZ        COMMENT 'Stage last updated timestamp',
    VALID_FROM      TIMESTAMP_NTZ        COMMENT 'Start validity timestamp',
    VALID_TO        TIMESTAMP_NTZ        COMMENT 'End validity timestamp',

    CONSTRAINT PK_CUSTOMER_CONTACT PRIMARY KEY (CONTACT_ID),
    CONSTRAINT FK_CUSTOMER_CONTACT_CUSTOMER FOREIGN KEY (CUSTOMER_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER(CUSTOMER_ID)
)
COMMENT = 'Table storing contact details for customers';