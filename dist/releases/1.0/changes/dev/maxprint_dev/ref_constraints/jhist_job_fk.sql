-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802690 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/jhist_job_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/jhist_job_fk.sql:null:b08a1c40ce44fb4376ab783d6639f36cc90f520f:create

alter table maxprint_dev.job_history
    add constraint jhist_job_fk
        foreign key ( job_id )
            references maxprint_dev.jobs ( job_id )
        enable;

