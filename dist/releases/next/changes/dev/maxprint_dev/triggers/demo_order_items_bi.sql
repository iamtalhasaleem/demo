-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805041 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_order_items_bi.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_order_items_bi.sql:null:84c319ac76464282ca724e3fbc62ef8e30bf6c22:create

create or replace editionable trigger maxprint_dev.demo_order_items_bi before
    insert on maxprint_dev.demo_order_items
    for each row
declare
    order_item_id number;
begin
    if :new.order_item_id is null then
        select
            demo_order_items_seq.nextval
        into order_item_id
        from
            dual;

        :new.order_item_id := order_item_id;
    end if;
end;
/

alter trigger maxprint_dev.demo_order_items_bi enable;

