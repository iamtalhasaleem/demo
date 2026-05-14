-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802312 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/dept_loc_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/dept_loc_fk.sql:null:cf66fd5f37989edc4de52c6485dc3982a556dbb9:create

alter table maxprint_dev.departments
    add constraint dept_loc_fk
        foreign key ( location_id )
            references maxprint_dev.locations ( location_id )
        enable;

