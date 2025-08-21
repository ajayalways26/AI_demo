CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT (
    ACCOUNT_ID         BIGINT                  NOT NULL COMMENT 'Unique identifier for the account',
    CUSTOMER_ID        BIGINT                  NOT NULL COMMENT 'Unique identifier for the customer owning the account',
    PRODUCT_ID         BIGINT                  NOT NULL COMMENT 'Unique identifier for the product linked to the account',
    ACCOUNT_NUMBER     VARCHAR(32)             NOT NULL COMMENT 'The account number string',
    ACCOUNT_TYPE_ID    BIGINT                  NOT NULL COMMENT 'Identifier for the type of account',
    CURRENCY_CODE      CHAR(3)                 NOT NULL COMMENT 'Currency code for the account transactions (e.g., USD, EUR)',
    STATUS_ID          BIGINT                  NOT NULL COMMENT 'Status identifier for the account',
    OPEN_DATE          DATE                    NOT NULL COMMENT 'Account opening date',
    CLOSE_DATE         DATE                    COMMENT 'Account closing date (nullable)',
    CREATED_AT         TIMESTAMP_NTZ           NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY         VARCHAR(64)             NOT NULL COMMENT 'Username or identifier of the creator',
    UPDATED_AT         TIMESTAMP_NTZ           COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY         VARCHAR(64)             COMMENT 'Username or identifier of the last updater',
    STG_CREATED_AT     TIMESTAMP_NTZ           NOT NULL COMMENT 'Stage table record creation timestamp',
    STG_CREATED_BY     VARCHAR(64)             NOT NULL COMMENT 'Stage table creator identifier',
    STG_UPDATED_AT     TIMESTAMP_NTZ           COMMENT 'Stage table record update timestamp',
    STG_UPDATED_BY     VARCHAR(64)             COMMENT 'Stage table updater identifier',

    CONSTRAINT PK_ACCOUNT PRIMARY KEY (ACCOUNT_ID)
) COMMENT = 'Account stage table containing account-level data.';