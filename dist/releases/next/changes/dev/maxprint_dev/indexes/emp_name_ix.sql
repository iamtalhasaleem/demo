-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801094 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/emp_name_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/emp_name_ix.sql:null:16729e21d9face8db8163448cbb243d1eef44ba6:create

create index maxprint_dev.emp_name_ix on
    maxprint_dev.employees (
        last_name,
        first_name
    );

