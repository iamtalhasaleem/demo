-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801214 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/jhist_job_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/jhist_job_ix.sql:null:dce5e7348df6df12c3f032f14ffc7be0ed314d43:create

create index maxprint_dev.jhist_job_ix on
    maxprint_dev.job_history (
        job_id
    );

