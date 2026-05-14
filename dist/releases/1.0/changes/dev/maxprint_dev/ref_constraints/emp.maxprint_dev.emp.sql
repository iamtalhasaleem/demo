-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802441 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/emp.maxprint_dev.emp.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/emp.maxprint_dev.emp.sql:null:14874b5d2d17fda94ffe3d912d3ae2800280931f:create

alter table maxprint_dev.emp
    add
        foreign key ( mgr )
            references maxprint_dev.emp ( empno )
        enable;

