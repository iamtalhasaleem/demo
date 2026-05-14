-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801294 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/loc_country_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/loc_country_ix.sql:null:4a8bb9eac0f99760a1efa025b084245f513e5eac:create

create index maxprint_dev.loc_country_ix on
    maxprint_dev.locations (
        country_id
    );

