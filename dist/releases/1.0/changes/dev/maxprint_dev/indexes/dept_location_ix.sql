-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755800940 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/dept_location_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/dept_location_ix.sql:null:0c82aeee6e24d21238a8b28de540bf83d247c322:create

create index maxprint_dev.dept_location_ix on
    maxprint_dev.departments (
        location_id
    );

