-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805750 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/update_job_history.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/update_job_history.sql:null:36d0db6f12de2015efff739626f1205f91bde517:create

create or replace editionable trigger maxprint_dev.update_job_history after
    update of job_id, department_id on maxprint_dev.employees
    for each row
begin
    add_job_history(:old.employee_id,
                    :old.hire_date,
                    sysdate,
                    :old.job_id,
                    :old.department_id);
end;
/

alter trigger maxprint_dev.update_job_history enable;

