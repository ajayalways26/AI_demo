CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER_ADDRESS (
    ADDRESS_ID        BIGINT                 NOT NULL COMMENT 'Primary key for the address table',
    ADDRESS_LINE_1    VARCHAR(255)          NOT NULL COMMENT 'First line of the customer address',
    ADDRESS_LINE_2    VARCHAR(255)          DEFAULT NULL COMMENT 'Second line of the customer address, optional',
    ADDRESS_STATUS    VARCHAR(16)           NOT NULL COMMENT 'Status of the address (e.g., active, inactive)',
    ADDRESS_TYPE      VARCHAR(16)           NOT NULL COMMENT 'Type of address (e.g., billing, shipping)',
    CITY              VARCHAR(64)           NOT NULL COMMENT 'City of the customer address',
    STATE             VARCHAR(64)           DEFAULT NULL COMMENT 'State of the customer address',
    POSTAL_CODE       VARCHAR(16)           DEFAULT NULL COMMENT 'Postal code of the customer address',
    COUNTRY_CODE      VARCHAR(4)            NOT NULL COMMENT 'Country code based on ISO standards',
    CREATED_AT        TIMESTAMP_NTZ         DEFAULT NULL COMMENT 'Timestamp indicating when the record was created',
    CREATED_BY        VARCHAR(64)           DEFAULT NULL COMMENT 'User who created the record',
    CUSTOMER_ID       BIGINT                 NOT NULL COMMENT 'Foreign key reference to the customer table',
    UPDATED_AT        TIMESTAMP_NTZ         DEFAULT NULL COMMENT 'Timestamp indicating when the record was last updated',
    UPDATED_BY        VARCHAR(64)           DEFAULT NULL COMMENT 'User who last updated the record',
    VALID_FROM        TIMESTAMP_NTZ         DEFAULT NULL COMMENT 'Start time for address validity',
    VALID_TO          TIMESTAMP_NTZ         DEFAULT NULL COMMENT 'End time for address validity',
    STG_CREATED_AT    TIMESTAMP_NTZ         NOT NULL COMMENT 'Stage timestamp for creation',
    STG_CREATED_BY    VARCHAR(64)           NOT NULL COMMENT 'Stage user who created the record',
    STG_UPDATED_AT    TIMESTAMP_NTZ         DEFAULT NULL COMMENT 'Stage timestamp for the last update',
    STG_UPDATED_BY    VARCHAR(64)           DEFAULT NULL COMMENT 'Stage user who last updated the record',

    CONSTRAINT PK_CUSTOMER_ADDRESS PRIMARY KEY (ADDRESS_ID),
    CONSTRAINT FK_CUSTOMER_ADDRESS_CUSTOMER FOREIGN KEY (CUSTOMER_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER(CUSTOMER_ID) COMMENT 'Foreign key referencing the customer table'
)
COMMENT = 'Table for storing customer address data';