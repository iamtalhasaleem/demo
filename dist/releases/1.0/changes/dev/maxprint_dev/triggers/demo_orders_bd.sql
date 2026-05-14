-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805178 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_orders_bd.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_orders_bd.sql:null:f979d318de35d8357ce7d8ee2fe3567f2ca14cfa:create

create or replace editionable trigger maxprint_dev.demo_orders_bd before
    delete on maxprint_dev.demo_orders
    for each row
begin
    sample_pkg.demo_tag_sync(
        p_new_tags     => null,
        p_old_tags     => :old.tags,
        p_content_type => 'ORDER',
        p_content_id   => :old.order_id
    );
end;
/

alter trigger maxprint_dev.demo_orders_bd enable;

