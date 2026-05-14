-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805119 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_order_items_biu_get_price.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_order_items_biu_get_price.sql:null:358b11618b6f01d59849d9d7f0b64f60bd01a758:create

create or replace editionable trigger maxprint_dev.demo_order_items_biu_get_price before
    insert or update on maxprint_dev.demo_order_items
    for each row
declare
    l_list_price number;
begin
    if :new.unit_price is null then
    -- First, we need to get the current list price of the order line item
        select
            list_price
        into l_list_price
        from
            demo_product_info
        where
            product_id = :new.product_id;
    -- Once we have the correct price, we will update the order line with the correct price
        :new.unit_price := l_list_price;
    end if;
end;
/

alter trigger maxprint_dev.demo_order_items_biu_get_price enable;

