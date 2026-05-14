-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804222 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/locations.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/locations.sql:null:2b46d66c5b7ff5220ebc1ced29d1256d530d2e69:create

create table maxprint_dev.locations (
    location_id    number(4, 0),
    street_address varchar2(40 byte),
    postal_code    varchar2(12 byte),
    city           varchar2(30 byte)
        constraint loc_city_nn not null enable,
    state_province varchar2(25 byte),
    country_id     char(2 byte)
);

create unique index maxprint_dev.loc_id_pk on
    maxprint_dev.locations (
        location_id
    );

alter table maxprint_dev.locations
    add constraint loc_id_pk
        primary key ( location_id )
            using index maxprint_dev.loc_id_pk enable;

