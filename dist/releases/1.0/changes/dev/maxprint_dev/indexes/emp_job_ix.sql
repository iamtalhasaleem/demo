-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801017 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/emp_job_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/emp_job_ix.sql:null:f24e68a9c6612fe7e529ed16db92469fe7590088:create

create index maxprint_dev.emp_job_ix on
    maxprint_dev.employees (
        job_id
    );

