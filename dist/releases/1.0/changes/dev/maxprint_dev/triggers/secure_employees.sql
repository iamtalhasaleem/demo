-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805684 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/secure_employees.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/secure_employees.sql:null:5f4d65c0024066fc3ce124dff6ad225fc52de4ed:create

create or replace editionable trigger maxprint_dev.secure_employees before
    insert or update or delete on maxprint_dev.employees
begin
    secure_dml;
end secure_employees;
/

alter trigger maxprint_dev.secure_employees disable;

