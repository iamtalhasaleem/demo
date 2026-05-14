-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801132 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/jhist_department_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/jhist_department_ix.sql:null:f098d6501d587e0974d5d7b7f19642e981da9726:create

create index maxprint_dev.jhist_department_ix on
    maxprint_dev.job_history (
        department_id
    );

