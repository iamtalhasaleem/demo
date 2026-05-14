-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803194 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/demo_tags.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/demo_tags.sql:null:32ab896900d7d1a0dfb70f0c6da1e0bb9123d8ed:create

create table maxprint_dev.demo_tags (
    id           number,
    tag          varchar2(255 byte) not null enable,
    content_id   number,
    content_type varchar2(30 byte),
    created      timestamp(6) with local time zone,
    created_by   varchar2(255 byte),
    updated      timestamp(6) with local time zone,
    updated_by   varchar2(255 byte)
);

alter table maxprint_dev.demo_tags
    add constraint demo_tags_ck
        check ( content_type in ( 'CUSTOMER', 'ORDER', 'PRODUCT' ) ) enable;

alter table maxprint_dev.demo_tags add primary key ( id )
    using index enable;

