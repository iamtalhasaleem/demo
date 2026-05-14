-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801169 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/jhist_employee_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/jhist_employee_ix.sql:null:f327f391aaefc23e5e335bb14ffffe15c6d1e445:create

create index maxprint_dev.jhist_employee_ix on
    maxprint_dev.job_history (
        employee_id
    );

