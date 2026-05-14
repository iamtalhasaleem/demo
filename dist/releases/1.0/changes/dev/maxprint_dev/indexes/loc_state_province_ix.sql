-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801334 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/loc_state_province_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/loc_state_province_ix.sql:null:d44ab0d4d36309ef0c9a6b549c0ebbdf853e45d4:create

create index maxprint_dev.loc_state_province_ix on
    maxprint_dev.locations (
        state_province
    );

