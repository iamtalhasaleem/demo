-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802971 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/demo_order_items.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/demo_order_items.sql:null:0e4bb65952bbd206989ebc35bb325aa6dd010512:create

create table maxprint_dev.demo_order_items (
    order_item_id number(3, 0) not null enable,
    order_id      number not null enable,
    product_id    number not null enable,
    unit_price    number(8, 2) not null enable,
    quantity      number(8, 0) not null enable
);

alter table maxprint_dev.demo_order_items
    add constraint demo_order_items_pk primary key ( order_item_id )
        using index enable;

alter table maxprint_dev.demo_order_items
    add constraint demo_order_items_uk unique ( order_id,
                                                product_id )
        using index enable;

