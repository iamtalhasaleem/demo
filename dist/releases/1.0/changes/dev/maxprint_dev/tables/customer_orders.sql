-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802848 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/customer_orders.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/customer_orders.sql:null:99496311fbcc825fe81de33b9b8f5c9e8d1f916c:create

create table maxprint_dev.customer_orders (
    order_id     number,
    customer_id  number,
    order_status varchar2(20 byte),
    order_date   date,
    details      varchar2(4000 byte)
);

alter table maxprint_dev.customer_orders add primary key ( order_id )
    using index enable;

