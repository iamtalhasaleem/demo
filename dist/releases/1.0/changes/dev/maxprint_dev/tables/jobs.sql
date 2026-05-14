-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804098 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/jobs.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/jobs.sql:null:db4589763afd073788b83f5b0d8c9ab7a7384f9d:create

create table maxprint_dev.jobs (
    job_id     varchar2(10 byte),
    job_title  varchar2(35 byte)
        constraint job_title_nn not null enable,
    min_salary number(6, 0),
    max_salary number(6, 0)
);

create unique index maxprint_dev.job_id_pk on
    maxprint_dev.jobs (
        job_id
    );

alter table maxprint_dev.jobs
    add constraint job_id_pk
        primary key ( job_id )
            using index maxprint_dev.job_id_pk enable;

