-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804386 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/maxprint_font_table_v2.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/maxprint_font_table_v2.sql:null:435c79fb368d874a7d91f3b5dec81f4b07a81559:create

create table maxprint_dev.maxprint_font_table_v2 (
    fontname varchar2(256 byte),
    status   varchar2(1 byte)
);

