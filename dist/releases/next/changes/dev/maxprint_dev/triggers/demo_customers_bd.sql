-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804790 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_customers_bd.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_customers_bd.sql:null:29bd1a2b22c85f16fe263de60ee1528126d907e1:create

create or replace editionable trigger maxprint_dev.demo_customers_bd before
    delete on maxprint_dev.demo_customers
    for each row
begin
    sample_pkg.demo_tag_sync(
        p_new_tags     => null,
        p_old_tags     => :old.tags,
        p_content_type => 'CUSTOMER',
        p_content_id   => :old.customer_id
    );
end;
/

alter trigger maxprint_dev.demo_customers_bd enable;

