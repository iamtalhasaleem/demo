-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804606 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/regions.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/regions.sql:null:417ee13ac78f959beba7c416ce1dca95533f3348:create

create table maxprint_dev.regions (
    region_id   number
        constraint region_id_nn not null enable,
    region_name varchar2(25 byte)
);

create unique index maxprint_dev.reg_id_pk on
    maxprint_dev.regions (
        region_id
    );

alter table maxprint_dev.regions
    add constraint reg_id_pk
        primary key ( region_id )
            using index maxprint_dev.reg_id_pk enable;

