-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805284 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_product_info_bd.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_product_info_bd.sql:null:0be4ea83d437e7f9cea0626c4885c462e419d05a:create

create or replace editionable trigger maxprint_dev.demo_product_info_bd before
    delete on maxprint_dev.demo_product_info
    for each row
begin
    sample_pkg.demo_tag_sync(
        p_new_tags     => null,
        p_old_tags     => :old.tags,
        p_content_type => 'PRODUCT',
        p_content_id   => :old.product_id
    );
end;
/

alter trigger maxprint_dev.demo_product_info_bd enable;

