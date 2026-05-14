-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804455 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/online_retail.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/online_retail.sql:null:30db14266608118f2964c31a5c94fd16c49fd3be:create

create table maxprint_dev.online_retail (
    "InvoiceNo"   varchar2(20 byte),
    "StockCode"   varchar2(20 byte),
    "Description" varchar2(100 byte),
    "Quantity"    number(10, 0),
    "InvoiceDate" timestamp(9),
    "UnitPrice"   number(10, 2),
    "CustomerID"  number(10, 0),
    "Country"     varchar2(50 byte)
);

