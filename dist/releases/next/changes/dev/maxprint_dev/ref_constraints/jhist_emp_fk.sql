-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802651 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/jhist_emp_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/jhist_emp_fk.sql:null:1eb29272076ab05d64e581d428db34df5310d31b:create

alter table maxprint_dev.job_history
    add constraint jhist_emp_fk
        foreign key ( employee_id )
            references maxprint_dev.employees ( employee_id )
        enable;

