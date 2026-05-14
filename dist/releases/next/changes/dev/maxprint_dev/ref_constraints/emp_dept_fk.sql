-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802482 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/emp_dept_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/emp_dept_fk.sql:null:24df90c2937ae7d430adb3c8f7814440eab502dc:create

alter table maxprint_dev.employees
    add constraint emp_dept_fk
        foreign key ( department_id )
            references maxprint_dev.departments ( department_id )
        enable;

