CREATE OR REPLACE TABLE adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer_relationship (
    relationship_id          NUMBER(19,0)       NOT NULL COMMENT 'Unique identifier for the customer relationship',
    customer_id              NUMBER(19,0)       NOT NULL COMMENT 'The primary customer in the relationship',
    related_customer_id      NUMBER(19,0)       NOT NULL COMMENT 'The related customer in the relationship',
    relationship_type        VARCHAR(255)       NOT NULL COMMENT 'Type of relationship between the customers',
    relationship_status      VARCHAR(255)       DEFAULT 'Active' COMMENT 'Current status of the relationship',
    effective_from           TIMESTAMP_NTZ      NOT NULL COMMENT 'Start date of the relationship (UTC)',
    effective_to             TIMESTAMP_NTZ      COMMENT 'End date of the relationship, if terminated (UTC)',
    created_at               TIMESTAMP_NTZ      DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation timestamp (UTC)',
    created_by               VARCHAR(64)        COMMENT 'User or system who created the record',
    updated_at               TIMESTAMP_NTZ      DEFAULT CURRENT_TIMESTAMP COMMENT 'Last updated timestamp (UTC)',
    updated_by               VARCHAR(64)        COMMENT 'User or system who last updated the record',

    CONSTRAINT PK_customer_relationship PRIMARY KEY (relationship_id),
    CONSTRAINT FK_customer_relationship_customer FOREIGN KEY (customer_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer (customer_id),
    CONSTRAINT FK_customer_relationship_related_customer FOREIGN KEY (related_customer_id) REFERENCES adam_data_engg_fsi_demo.adam_data_engg_fsi_demo_customer.customer (customer_id)
)
COMMENT = 'Defines the relationships between two customers, such as guardian or joint holder.'