-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803255 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/demo_tags_sum.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/demo_tags_sum.sql:null:f7916f2bcadb406a0003608a1bef2af9d318689c:create

create table maxprint_dev.demo_tags_sum (
    tag       varchar2(255 byte),
    tag_count number
);

alter table maxprint_dev.demo_tags_sum
    add constraint demo_tags_sum_pk primary key ( tag )
        using index enable;

