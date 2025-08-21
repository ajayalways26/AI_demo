CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_BALANCE_TYPE (
    ACCOUNT_BALANCE_TYPE_CODE   VARCHAR(32)                     NOT NULL COMMENT 'Account Balance Type Code',
    ACCOUNT_BALANCE_TYPE_ID     BIGINT                          NOT NULL COMMENT 'Account Balance Type ID',
    ACCOUNT_BALANCE_TYPE_NAME   VARCHAR(64)                     NOT NULL COMMENT 'Account Balance Type Name',
    ACCOUNT_BLANCE_DESCRIPTION  STRING                          COMMENT 'Account Balance Description',
    CREATED_AT                  TIMESTAMP_NTZ                   NOT NULL COMMENT 'Created At Timestamp',
    CREATED_BY                  VARCHAR(64)                     NOT NULL COMMENT 'Created By User',
    STATUS_CODE                 VARCHAR(16)                     NOT NULL COMMENT 'Status Code',
    STG_CREATED_AT              TIMESTAMP_NTZ                   NOT NULL COMMENT 'Stage Created At Timestamp',
    STG_CREATED_BY              VARCHAR(64)                     NOT NULL COMMENT 'Stage Created By User',
    STG_UPDATED_AT              TIMESTAMP_NTZ                   COMMENT 'Stage Updated At Timestamp',
    STG_UPDATED_BY              VARCHAR(64)                     COMMENT 'Stage Updated By User',
    UPDATED_AT                  TIMESTAMP_NTZ                   COMMENT 'Updated At Timestamp',
    UPDATED_BY                  VARCHAR(64)                     COMMENT 'Updated By User',

    CONSTRAINT PK_ACCOUNT_BALANCE_TYPE PRIMARY KEY (ACCOUNT_BALANCE_TYPE_ID)
) COMMENT = 'Table to store account balance type information';