-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805621 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/emp_trg1.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/emp_trg1.sql:null:fd461dcb90712d48f822330ff80bdfe85922df47:create

create or replace editionable trigger maxprint_dev.emp_trg1 before
    insert on maxprint_dev.emp
    for each row
begin
    if :new.empno is null then
        select
            emp_seq.nextval
        into :new.empno
        from
            sys.dual;

    end if;
end;
/

alter trigger maxprint_dev.emp_trg1 enable;

