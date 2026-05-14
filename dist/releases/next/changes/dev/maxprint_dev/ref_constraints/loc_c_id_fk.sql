-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802733 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/loc_c_id_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/loc_c_id_fk.sql:null:481ecb1acc9b18595950424774a5218350f0dbdb:create

alter table maxprint_dev.locations
    add constraint loc_c_id_fk
        foreign key ( country_id )
            references maxprint_dev.countries ( country_id )
        enable;

