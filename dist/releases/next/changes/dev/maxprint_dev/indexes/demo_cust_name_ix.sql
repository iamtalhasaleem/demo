-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755800856 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/demo_cust_name_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/demo_cust_name_ix.sql:null:b5bdf8865d29e46606eff81ac784a78717e56b4a:create

create index maxprint_dev.demo_cust_name_ix on
    maxprint_dev.demo_customers (
        cust_last_name,
        cust_first_name
    );

