-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804960 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_order_items_aiud_total.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_order_items_aiud_total.sql:null:fa4c37fcfad5e93bd491e25025e6c61e15b98af9:create

create or replace editionable trigger maxprint_dev.demo_order_items_aiud_total after
    insert or update or delete on maxprint_dev.demo_order_items
begin
  -- Update the Order Total when any order item is changed
    update demo_orders
    set
        order_total = (
            select
                sum(unit_price * quantity)
            from
                demo_order_items
            where
                demo_order_items.order_id = demo_orders.order_id
        );

end;
/

alter trigger maxprint_dev.demo_order_items_aiud_total enable;

