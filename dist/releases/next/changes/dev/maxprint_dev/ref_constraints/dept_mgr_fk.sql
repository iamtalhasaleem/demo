-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802352 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/dept_mgr_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/dept_mgr_fk.sql:null:07b8151b2dc93ae6959754d09c6f3c2428fc7cce:create

alter table maxprint_dev.departments
    add constraint dept_mgr_fk
        foreign key ( manager_id )
            references maxprint_dev.employees ( employee_id )
        enable;

