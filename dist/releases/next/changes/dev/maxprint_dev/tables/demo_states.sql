-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803150 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/demo_states.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/demo_states.sql:null:fe5ba6679f951450642b364aa35ffda3898247d0:create

create table maxprint_dev.demo_states (
    st         varchar2(30 byte),
    state_name varchar2(30 byte)
);

