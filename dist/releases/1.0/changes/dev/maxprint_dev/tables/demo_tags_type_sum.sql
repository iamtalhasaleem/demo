-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803311 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/demo_tags_type_sum.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/demo_tags_type_sum.sql:null:0673f55fdad75345353c8ba3aa029b4c136a3158:create

create table maxprint_dev.demo_tags_type_sum (
    tag          varchar2(255 byte),
    content_type varchar2(30 byte),
    tag_count    number
);

alter table maxprint_dev.demo_tags_type_sum
    add constraint demo_tags_type_sum_pk primary key ( tag,
                                                       content_type )
        using index enable;

