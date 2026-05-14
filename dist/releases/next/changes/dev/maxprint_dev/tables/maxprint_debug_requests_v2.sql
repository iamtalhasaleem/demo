-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804331 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/maxprint_debug_requests_v2.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/maxprint_debug_requests_v2.sql:null:4c05d189d3dd9f99693772c3cab561099a51cb2b:create

create table maxprint_dev.maxprint_debug_requests_v2 (
    id          number generated always as identity not null enable,
    identifier  varchar2(4000 byte),
    url         varchar2(4000 byte),
    request     clob,
    create_time date default sysdate
);

