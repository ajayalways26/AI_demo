CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.EDW_STAGE.CUSTOMER (
    CUSTOMER_ID               BIGINT          NOT NULL COMMENT 'Primary key for customer records',
    FIRST_NAME                STRING          NOT NULL COMMENT 'Customer first name',
    LAST_NAME                 STRING                     COMMENT 'Customer last name',
    DATE_OF_BIRTH             DATE                       COMMENT 'Customer date of birth',
    GENDER                    STRING                     COMMENT 'Customer gender',
    NATIONAL_ID               STRING                     COMMENT 'Unique national identification number',
    CUSTOMER_SEGMENT          STRING                     COMMENT 'Customer segment classification',
    RISK_RATING               STRING                     COMMENT 'Risk rating for the customer',
    CUSTOMER_STATUS           STRING                     COMMENT 'Current status of the customer',
    EMAIL_ADDRESS             STRING                     COMMENT 'Customer email address',
    MOBILE_NUMBER             STRING                     COMMENT 'Customer mobile phone number',
    REGISTRATION_DATE         TIMESTAMP_NTZ             COMMENT 'Timestamp when the customer registered',
    CUSTOMER_TIMEZONE_OFFSET  STRING                     COMMENT 'Timezone offset of the customer',
    CREATED_AT                TIMESTAMP_NTZ             COMMENT 'Timestamp when the record was created',
    UPDATED_AT                TIMESTAMP_NTZ             COMMENT 'Timestamp when the record was last updated',
    CREATED_BY                STRING                     COMMENT 'User or system that created the record',
    UPDATED_BY                STRING                     COMMENT 'User or system that last updated the record',
    STG_CREATED_BY            STRING          NOT NULL COMMENT 'User or system that originally staged the record',
    STG_CREATED_AT            TIMESTAMP_NTZ   NOT NULL COMMENT 'Timestamp when the record was originally staged',
    STG_UPDATED_BY            STRING                     COMMENT 'User or system that last updated the record in staging',
    STG_UPDATED_AT            TIMESTAMP_NTZ             COMMENT 'Timestamp when the record was last updated in staging',

    CONSTRAINT PK_CUSTOMER PRIMARY KEY (CUSTOMER_ID)
)
COMMENT = 'Customer table holding demographic and registration details';