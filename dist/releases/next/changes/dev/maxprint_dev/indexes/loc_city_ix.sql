-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755801251 stripComments:false  logicalFilePath:dev/maxprint_dev/indexes/loc_city_ix.sql
-- sqlcl_snapshot src/database/maxprint_dev/indexes/loc_city_ix.sql:null:bbef42a27a4ecd0b47aa46349de1545bf34523d4:create

create index maxprint_dev.loc_city_ix on
    maxprint_dev.locations (
        city
    );

