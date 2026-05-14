-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803368 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/departments.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/departments.sql:null:306656ced6129c0973b6233cacf15f5cd97eb447:create

create table maxprint_dev.departments (
    department_id   number(4, 0),
    department_name varchar2(30 byte)
        constraint dept_name_nn not null enable,
    manager_id      number(6, 0),
    location_id     number(4, 0)
);

create unique index maxprint_dev.dept_id_pk on
    maxprint_dev.departments (
        department_id
    );

alter table maxprint_dev.departments
    add constraint dept_id_pk
        primary key ( department_id )
            using index maxprint_dev.dept_id_pk enable;

