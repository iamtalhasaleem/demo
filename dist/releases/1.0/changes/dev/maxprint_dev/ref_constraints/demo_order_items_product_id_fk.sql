-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802236 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/demo_order_items_product_id_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/demo_order_items_product_id_fk.sql:null:6f58b3faf84b59364c1c9b327553dc1f8acc0dc9:create

alter table maxprint_dev.demo_order_items
    add constraint demo_order_items_product_id_fk
        foreign key ( product_id )
            references maxprint_dev.demo_product_info ( product_id )
                on delete cascade
        enable;

