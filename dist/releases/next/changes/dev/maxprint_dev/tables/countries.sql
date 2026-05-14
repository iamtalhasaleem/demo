-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802812 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/countries.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/countries.sql:null:c36dff0fc4dfcbe7ff981534ad9710a1d5eaab2f:create

create table maxprint_dev.countries (
    country_id   char(2 byte)
        constraint country_id_nn not null enable,
    country_name varchar2(40 byte),
    region_id    number,
    constraint country_c_id_pk primary key ( country_id ) enable
)
organization index nocompress;

