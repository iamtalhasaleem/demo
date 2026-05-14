-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802273 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/demo_orders_customer_id_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/demo_orders_customer_id_fk.sql:null:9d5daa1a91a99f3f8c705bc74bbdb5a38c5183bd:create

alter table maxprint_dev.demo_orders
    add constraint demo_orders_customer_id_fk
        foreign key ( customer_id )
            references maxprint_dev.demo_customers ( customer_id )
                on delete cascade
        enable;

