-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803742 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/employees.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/employees.sql:null:956253885d54ea3dd6fd0cfe53243507b2da9a59:create

create table maxprint_dev.employees (
    employee_id    number(6, 0),
    first_name     varchar2(20 byte),
    last_name      varchar2(25 byte)
        constraint emp_last_name_nn not null enable,
    email          varchar2(25 byte)
        constraint emp_email_nn not null enable,
    phone_number   varchar2(20 byte),
    hire_date      date
        constraint emp_hire_date_nn not null enable,
    job_id         varchar2(10 byte)
        constraint emp_job_nn not null enable,
    salary         number(8, 2),
    commission_pct number(2, 2),
    manager_id     number(6, 0),
    department_id  number(4, 0)
);

create unique index maxprint_dev.emp_emp_id_pk on
    maxprint_dev.employees (
        employee_id
    );

alter table maxprint_dev.employees add constraint emp_email_uk unique ( email )
    using index enable;

alter table maxprint_dev.employees
    add constraint emp_emp_id_pk
        primary key ( employee_id )
            using index maxprint_dev.emp_emp_id_pk enable;

alter table maxprint_dev.employees add constraint emp_salary_min check ( salary > 0 ) enable;

