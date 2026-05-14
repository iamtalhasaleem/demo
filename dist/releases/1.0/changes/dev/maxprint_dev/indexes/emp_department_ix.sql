-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755800979 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/emp_department_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/emp_department_ix.sql:null:83bd4ef9045690bfc6d63cb0a9f40c59c64270e6:create

create index maxprint_dev.emp_department_ix on
    maxprint_dev.employees (
        department_id
    );

