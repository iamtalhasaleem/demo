-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803089 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/demo_product_info.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/demo_product_info.sql:null:05faec7667a3a92de76f83270d546463b32c7749:create

create table maxprint_dev.demo_product_info (
    product_id          number not null enable,
    product_name        varchar2(50 byte),
    product_description varchar2(2000 byte),
    category            varchar2(30 byte),
    product_avail       varchar2(1 byte),
    list_price          number(8, 2),
    product_image       blob,
    mimetype            varchar2(255 byte),
    filename            varchar2(400 byte),
    image_last_update   timestamp(6) with local time zone,
    tags                varchar2(4000 byte)
);

alter table maxprint_dev.demo_product_info
    add constraint demo_product_info_pk primary key ( product_id )
        using index enable;

alter table maxprint_dev.demo_product_info add constraint demo_product_info_uk unique ( product_name )
    using index enable;

