CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.CURRENCY (
    CREATED_AT      TIMESTAMP_NTZ       NOT NULL COMMENT 'Timestamp when the record was created',
    CREATED_BY      STRING              NOT NULL COMMENT 'User who created the record',
    CURRENCY_CODE   CHAR(3)             NOT NULL COMMENT 'Three-character currency code',
    CURRENCY_ID     BIGINT              NOT NULL COMMENT 'Unique identifier for the currency',
    CURRENCY_NAME   STRING(64)          NOT NULL COMMENT 'Name of the currency',
    DECIMAL_PRECISION SMALLINT          NOT NULL COMMENT 'Number of decimal places for the currency',
    SYMBOL          STRING(8)          NULL COMMENT 'Symbol of the currency (nullable)',
    UPDATED_AT      TIMESTAMP_NTZ       NULL COMMENT 'Timestamp when the record was last updated',
    UPDATED_BY      STRING(64)          NULL COMMENT 'User who last updated the record',

    CONSTRAINT PK_CURRENCY PRIMARY KEY (CURRENCY_ID)
)
COMMENT = 'Currency table storing metadata about various currencies';