CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER_RELATIONSHIP (
    CREATED_AT TIMESTAMP_NTZ NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY STRING NULL COMMENT 'User who created the record',
    CUSTOMER_ID NUMBER(38,0) NOT NULL COMMENT 'Customer ID referring to the CUSTOMER table',
    EFFECTIVE_FROM TIMESTAMP_NTZ NOT NULL COMMENT 'Start timestamp for the relationship',
    EFFECTIVE_TO TIMESTAMP_NTZ NULL COMMENT 'End timestamp for the relationship',
    RELATED_CUSTOMER_ID NUMBER(38,0) NOT NULL COMMENT 'Related Customer ID referring to the CUSTOMER table',
    RELATIONSHIP_ID NUMBER(38,0) NOT NULL COMMENT 'Unique identifier for the relationship',
    RELATIONSHIP_STATUS STRING NULL COMMENT 'Current status of the relationship',
    RELATIONSHIP_TYPE STRING NOT NULL COMMENT 'Type of relationship',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Stage timestamp when the record was created',
    STG_CREATED_BY STRING NOT NULL COMMENT 'Stage user who created the record',
    STG_UPDATED_AT TIMESTAMP_NTZ NULL COMMENT 'Stage timestamp when the record was updated',
    STG_UPDATED_BY STRING NULL COMMENT 'Stage user who updated the record',
    UPDATED_AT TIMESTAMP_NTZ NULL COMMENT 'Timestamp when the record was updated',
    UPDATED_BY STRING NULL COMMENT 'User who updated the record',

    CONSTRAINT PK_CUSTOMER_RELATIONSHIP PRIMARY KEY (RELATIONSHIP_ID),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER (CUSTOMER_ID),
    FOREIGN KEY (RELATED_CUSTOMER_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER (CUSTOMER_ID)
)