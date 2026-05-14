-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803435 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/dept.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/dept.sql:null:2d3b4c4c4cc4d7ded0687d60ac5398e12fe4f750:create

create table maxprint_dev.dept (
    deptno number(2, 0),
    dname  varchar2(14 byte),
    loc    varchar2(13 byte)
);

alter table maxprint_dev.dept add primary key ( deptno )
    using index enable;

