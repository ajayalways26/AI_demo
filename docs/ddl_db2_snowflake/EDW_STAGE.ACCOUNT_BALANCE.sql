CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_BALANCE (
    ACCOUNT_BALANCE_TYPE_ID BIGINT NOT NULL COMMENT 'Account balance type identifier',
    ACCOUNT_ID BIGINT NOT NULL COMMENT 'Account identifier',
    AS_OF_DATE DATE NOT NULL COMMENT 'Effective date of the balance',
    BALANCE_AMOUNT DECIMAL(18,2) NOT NULL COMMENT 'Balance amount',
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY STRING NOT NULL COMMENT 'User who created the record',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the staging record was created',
    STG_CREATED_BY STRING NOT NULL COMMENT 'User who created the staging record',
    STG_UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the staging record was last updated',
    STG_UPDATED_BY STRING COMMENT 'User who last updated the staging record',
    UPDATED_AT TIMESTAMP_NTZ COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY STRING COMMENT 'User who last updated the record',

    CONSTRAINT PK_ACCOUNT_BALANCE PRIMARY KEY (ACCOUNT_BALANCE_TYPE_ID, ACCOUNT_ID, AS_OF_DATE)
)
COMMENT = 'Table to store account balance information';