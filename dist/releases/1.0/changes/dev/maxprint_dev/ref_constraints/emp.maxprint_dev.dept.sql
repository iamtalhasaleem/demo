-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802393 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/emp.maxprint_dev.dept.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/emp.maxprint_dev.dept.sql:null:cc91ee970f063ddbaa01233f6597d703c161dd4d:create

alter table maxprint_dev.emp
    add
        foreign key ( deptno )
            references maxprint_dev.dept ( deptno )
        enable;

