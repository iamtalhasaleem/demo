-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803497 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/dev_cicd.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/dev_cicd.sql:null:45e13204e2e3eaf6db1c66cd991267a5a735510b:create

create table maxprint_dev.dev_cicd (
    cicd number(1, 1)
);

