CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.ACCOUNT_ROLE_TYPE (
    ACCOUNT_ROLE_CODE        VARCHAR(32)          NOT NULL COMMENT 'Code representing the account role',
    ACCOUNT_ROLE_NAME        VARCHAR(64)          NOT NULL COMMENT 'Name of the account role',
    ACCOUNT_ROLE_DESCRIPTION VARCHAR(256)                     COMMENT 'Description of the account role',
    ACCOUNT_ROLE_ID          BIGINT               NOT NULL COMMENT 'Unique identifier for the account role',
    IS_ACTIVE                BOOLEAN              NOT NULL COMMENT 'Indicates if the role is active',
    CREATED_BY               VARCHAR(64)          NOT NULL COMMENT 'User who created the record',
    CREATED_AT               TIMESTAMP_NTZ        NOT NULL COMMENT 'Timestamp when the record was created',
    UPDATED_BY               VARCHAR(64)                     COMMENT 'User who last updated the record',
    UPDATED_AT               TIMESTAMP_NTZ                  COMMENT 'Timestamp when the record was last updated',
    STG_CREATED_BY           VARCHAR(64)          NOT NULL COMMENT 'User who created the staging record',
    STG_CREATED_AT           TIMESTAMP_NTZ        NOT NULL COMMENT 'Timestamp when the staging record was created',
    STG_UPDATED_BY           VARCHAR(64)                     COMMENT 'User who last updated the staging record',
    STG_UPDATED_AT           TIMESTAMP_NTZ                  COMMENT 'Timestamp when the staging record was last updated',

    CONSTRAINT PK_ACCOUNT_ROLE_TYPE PRIMARY KEY (ACCOUNT_ROLE_ID)
)
COMMENT = 'Table representing various account roles within the staging schema';