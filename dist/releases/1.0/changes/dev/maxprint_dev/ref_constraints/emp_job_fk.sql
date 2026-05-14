-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802518 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/emp_job_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/emp_job_fk.sql:null:cf2fa4a67cecb256e84492e68fe8eac922dab178:create

alter table maxprint_dev.employees
    add constraint emp_job_fk
        foreign key ( job_id )
            references maxprint_dev.jobs ( job_id )
        enable;

