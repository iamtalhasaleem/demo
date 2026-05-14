-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755800903 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/demo_ord_customer_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/demo_ord_customer_ix.sql:null:ded8b1c3d8b752978fe8dc6167afb04891ebec8d:create

create index maxprint_dev.demo_ord_customer_ix on
    maxprint_dev.demo_orders (
        customer_id
    );

