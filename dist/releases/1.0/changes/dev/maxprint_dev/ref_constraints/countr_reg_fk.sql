-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802161 stripComments:false  logicalFilePath:dev/maxprint_dev/ref_constraints/countr_reg_fk.sql
-- sqlcl_snapshot src/database/maxprint_dev/ref_constraints/countr_reg_fk.sql:null:3ef3de787c6a6f7aaad7d9252ac83c0e435b9abf:create

alter table maxprint_dev.countries
    add constraint countr_reg_fk
        foreign key ( region_id )
            references maxprint_dev.regions ( region_id )
        enable;

