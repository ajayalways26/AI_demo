CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_HOLDER (
    ACCOUNT_ID          BIGINT              NOT NULL COMMENT 'Primary key representing the unique identifier for an account',
    CUSTOMER_ID         BIGINT              NOT NULL COMMENT 'Primary key representing the unique identifier for a customer',
    ACCOUNT_ROLE_ID     BIGINT              NOT NULL COMMENT 'Identifier specifying the role associated with the account',
    HOLDING_PERCENTAGE  NUMERIC(5,2)        COMMENT 'Percentage of holding by account, allows null values',
    CREATED_BY          STRING(64)         NOT NULL COMMENT 'Username of the creator of the record',
    CREATED_AT          TIMESTAMP_NTZ      NOT NULL COMMENT 'Timestamp of when the record was created',
    UPDATED_BY          STRING(64)         COMMENT 'Username of the updater of the record',
    UPDATED_AT          TIMESTAMP_NTZ      COMMENT 'Timestamp of when the record was last updated',
    STG_CREATED_BY      STRING(64)         NOT NULL COMMENT 'Username of the creator of the record in staging',
    STG_CREATED_AT      TIMESTAMP_NTZ      NOT NULL COMMENT 'Timestamp of when the record was created in staging',
    STG_UPDATED_BY      STRING(64)         COMMENT 'Username of the updater of the record in staging',
    STG_UPDATED_AT      TIMESTAMP_NTZ      COMMENT 'Timestamp of when the record was last updated in staging'
);