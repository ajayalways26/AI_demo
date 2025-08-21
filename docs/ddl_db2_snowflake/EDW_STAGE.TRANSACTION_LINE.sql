CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.TRANSACTION_LINE (
    TRANSACTION_LINE_ID BIGINT NOT NULL COMMENT 'Primary key for the transaction line.',
    TRANSACTION_ID BIGINT NOT NULL COMMENT 'Foreign key referencing TRANSACTION table.',
    ACCOUNT_ID BIGINT NOT NULL COMMENT 'Foreign key referencing ACCOUNT table.',
    LINE_NUMBER INTEGER NOT NULL COMMENT 'Line number in the transaction.',
    LINE_AMOUNT DECIMAL(18,2) NOT NULL COMMENT 'Amount associated with the transaction line.',
    CURRENCY_ID BIGINT NOT NULL COMMENT 'Foreign key referencing CURRENCY table.',
    IS_DEBIT BOOLEAN NOT NULL COMMENT 'Indicates whether the transaction line is a debit.',
    REMARKS VARCHAR(256) NULL COMMENT 'Additional remarks for the transaction line.',
    CREATED_BY VARCHAR(64) NOT NULL COMMENT 'User who created the record.',
    CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the record was created.',
    UPDATED_BY VARCHAR(64) NULL COMMENT 'User who updated the record.',
    UPDATED_AT TIMESTAMP_NTZ NULL COMMENT 'Timestamp when the record was last updated.',
    STG_CREATED_BY VARCHAR(64) NOT NULL COMMENT 'User who created the staging record.',
    STG_CREATED_AT TIMESTAMP_NTZ NOT NULL COMMENT 'Timestamp when the staging record was created.',
    STG_UPDATED_BY VARCHAR(64) NULL COMMENT 'User who last updated the staging record.',
    STG_UPDATED_AT TIMESTAMP_NTZ NULL COMMENT 'Timestamp when the staging record was last updated.',

    CONSTRAINT PK_TRANSACTION_LINE PRIMARY KEY (TRANSACTION_LINE_ID),
    CONSTRAINT FK_TRANSACTION_LINE_TRANSACTION FOREIGN KEY (TRANSACTION_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.TRANSACTION (TRANSACTION_ID),
    CONSTRAINT FK_TRANSACTION_LINE_ACCOUNT FOREIGN KEY (ACCOUNT_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT (ACCOUNT_ID),
    CONSTRAINT FK_TRANSACTION_LINE_CURRENCY FOREIGN KEY (CURRENCY_ID) REFERENCES adam_data_engg_fsi_demo.EDW_STAGE.CURRENCY (CURRENCY_ID)
)