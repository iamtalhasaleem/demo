-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805544 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/dept_trg1.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/dept_trg1.sql:null:71c75f9017408de5fb73c6d465df72c91b1550d0:create

create or replace editionable trigger maxprint_dev.dept_trg1 before
    insert on maxprint_dev.dept
    for each row
begin
    if :new.deptno is null then
        select
            dept_seq.nextval
        into :new.deptno
        from
            sys.dual;

    end if;
end;
/

alter trigger maxprint_dev.dept_trg1 enable;

