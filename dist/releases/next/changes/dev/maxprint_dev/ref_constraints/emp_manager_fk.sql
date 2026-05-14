-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802560 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/emp_manager_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/emp_manager_fk.sql:null:3907c9f6555261dff9f3be9b78a7be5c1700f8c3:create

alter table maxprint_dev.employees
    add constraint emp_manager_fk
        foreign key ( manager_id )
            references maxprint_dev.employees ( employee_id )
        enable;

