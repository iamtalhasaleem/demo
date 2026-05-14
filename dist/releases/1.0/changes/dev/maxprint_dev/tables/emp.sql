-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803637 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/emp.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/emp.sql:null:a936f06dcc3f0804e893bd92b67360eb99677e37:create

create table maxprint_dev.emp (
    empno    number(4, 0) not null enable,
    ename    varchar2(10 byte),
    job      varchar2(9 byte),
    mgr      number(4, 0),
    hiredate date,
    sal      number(7, 2),
    comm     number(7, 2),
    deptno   number(2, 0)
);

alter table maxprint_dev.emp add primary key ( empno )
    using index enable;

