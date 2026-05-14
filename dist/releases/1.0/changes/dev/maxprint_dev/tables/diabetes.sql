-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755803556 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/diabetes.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/diabetes.sql:null:c0ec257a40cfdc9350bab43839f9242e8fe7b6cf:create

create table maxprint_dev.diabetes (
    "Age_Std"             number,
    "Sex_Std"             number,
    "Bmi_Std"             number,
    "Bp_Std"              number,
    "S1_Std"              number,
    "S2_Std"              number,
    "S3_Std"              number,
    "S4_Std"              number,
    "S5_Std"              number,
    "S6_Std"              number,
    "Disease_Progression" number
);

