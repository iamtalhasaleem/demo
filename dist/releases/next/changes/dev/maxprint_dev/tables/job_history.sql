-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803954 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/job_history.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/job_history.sql:null:d175dddb850e7690254e96dcc92b2ce992ac0f6c:create

create table maxprint_dev.job_history (
    employee_id   number(6, 0)
        constraint jhist_employee_nn not null enable,
    start_date    date
        constraint jhist_start_date_nn not null enable,
    end_date      date
        constraint jhist_end_date_nn not null enable,
    job_id        varchar2(10 byte)
        constraint jhist_job_nn not null enable,
    department_id number(4, 0)
);

create unique index maxprint_dev.jhist_emp_id_st_date_pk on
    maxprint_dev.job_history (
        employee_id,
        start_date
    );

alter table maxprint_dev.job_history add constraint jhist_date_interval check ( end_date > start_date ) enable;

alter table maxprint_dev.job_history
    add constraint jhist_emp_id_st_date_pk
        primary key ( employee_id,
                      start_date )
            using index maxprint_dev.jhist_emp_id_st_date_pk enable;

