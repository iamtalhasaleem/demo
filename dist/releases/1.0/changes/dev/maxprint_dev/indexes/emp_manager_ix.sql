-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801056 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/emp_manager_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/emp_manager_ix.sql:null:b815e272e76ea80ed44f3ab6a8751496a29ef061:create

create index maxprint_dev.emp_manager_ix on
    maxprint_dev.employees (
        manager_id
    );

