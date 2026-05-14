-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802598 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/jhist_dept_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/jhist_dept_fk.sql:null:d2e954b7a8b88c25095f4f94658abcc795117b38:create

alter table maxprint_dev.job_history
    add constraint jhist_dept_fk
        foreign key ( department_id )
            references maxprint_dev.departments ( department_id )
        enable;

