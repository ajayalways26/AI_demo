CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER_PREFERENCE (
    PREFERENCE_ID BIGINT NOT NULL COMMENT 'Unique identifier for customer preference',
    CUSTOMER_ID BIGINT NOT NULL COMMENT 'Foreign key referencing CUSTOMER table',
    COMMUNICATION_CHANNEL VARCHAR(32) NOT NULL COMMENT 'Preferred communication channel',
    CONTACT_TIME_WINDOW VARCHAR(16) COMMENT 'Preferred time window for contact',
    CREATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was created',
    CREATED_BY VARCHAR(64) COMMENT 'User who created the record',
    IS_ACTIVE BOOLEAN COMMENT 'Status of preference record (active/inactive)',
    MARKETING_OPT_IN BOOLEAN COMMENT 'Marketing communication opt-in status',
    PREFERRED_LANGUAGE VARCHAR(32) COMMENT 'Preferred language of the customer',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Stage-level record creation timestamp',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'Stage-level user who created the record',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Stage-level record last updated timestamp',
    STG_UPDATED_BY VARCHAR(64) COMMENT 'Stage-level user who last updated the record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY VARCHAR(64) COMMENT 'User who last updated the record',

    CONSTRAINT PK_CUSTOMER_PREFERENCE PRIMARY KEY (PREFERENCE_ID),
    CONSTRAINT FK_CUSTOMER_PREFERENCE_CUSTOMER_ID FOREIGN KEY (CUSTOMER_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER(CUSTOMER_ID)
)