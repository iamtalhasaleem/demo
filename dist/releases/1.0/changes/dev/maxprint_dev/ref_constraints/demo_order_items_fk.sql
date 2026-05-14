-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802198 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/demo_order_items_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/demo_order_items_fk.sql:null:c8871394e07cfbb250c0a5dd4c7bb211986428da:create

alter table maxprint_dev.demo_order_items
    add constraint demo_order_items_fk
        foreign key ( order_id )
            references maxprint_dev.demo_orders ( order_id )
                on delete cascade
        enable;

