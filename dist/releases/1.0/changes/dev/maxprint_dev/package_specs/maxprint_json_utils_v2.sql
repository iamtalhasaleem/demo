-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802050 stripComments:false  logicalFilePath:dev/maxprint_dev/package_specs/maxprint_json_utils_v2.sql
-- sqlcl_snapshot src/database/maxprint_dev/package_specs/maxprint_json_utils_v2.sql:null:5748028c97f1d64fe202d4ad9d325c892bd1dea4:create

create or replace package maxprint_dev.maxprint_json_utils_v2 as
    function get_json_from_sql (
        p_sql               in clob,
        p_sql_type          varchar2,
        p_query_master_cols varchar2 default null
    ) return clob;

    function get_json_from_plsql (
        pl_code          in clob,
        p_datasoure_type varchar2
    ) return clob;

    function get_json_from_region (
        p_app_id           number,
        p_page_id          number,
        p_region_static_id varchar2
    ) return clob;

    function get_json_from_refcursor (
        p_refcursor in sys_refcursor
    ) return clob;

end maxprint_json_utils_v2;
/

