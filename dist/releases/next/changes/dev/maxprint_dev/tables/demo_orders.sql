-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803027 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/demo_orders.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/demo_orders.sql:null:2d14ea8a704b72d533e848531fdf664702f9fa93:create

create table maxprint_dev.demo_orders (
    order_id        number not null enable,
    customer_id     number not null enable,
    order_total     number(8, 2),
    order_timestamp timestamp(6) with local time zone,
    user_name       varchar2(100 byte),
    tags            varchar2(4000 byte)
);

alter table maxprint_dev.demo_orders
    add constraint demo_order_pk primary key ( order_id )
        using index enable;

alter table maxprint_dev.demo_orders
    add constraint demo_order_total_min check ( order_total >= 0 ) enable;

