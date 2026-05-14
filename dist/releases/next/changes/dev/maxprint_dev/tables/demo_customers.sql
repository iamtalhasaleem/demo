-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755802902 stripComments:false  logicalFilePath:dev/maxprint_dev/tables/demo_customers.sql
-- sqlcl_snapshot src/database/maxprint_dev/tables/demo_customers.sql:null:1a996363ce7ce2b4bcc70b1e481e8af88ef7db01:create

create table maxprint_dev.demo_customers (
    customer_id          number not null enable,
    cust_first_name      varchar2(20 byte) not null enable,
    cust_last_name       varchar2(20 byte) not null enable,
    cust_street_address1 varchar2(60 byte),
    cust_street_address2 varchar2(60 byte),
    cust_city            varchar2(30 byte),
    cust_state           varchar2(2 byte),
    cust_postal_code     varchar2(10 byte),
    cust_email           varchar2(30 byte),
    phone_number1        varchar2(25 byte),
    phone_number2        varchar2(25 byte),
    url                  varchar2(4000 byte),
    credit_limit         number(9, 2),
    tags                 varchar2(4000 byte)
);

alter table maxprint_dev.demo_customers
    add constraint demo_customers_pk primary key ( customer_id )
        using index enable;

alter table maxprint_dev.demo_customers
    add constraint demo_customers_uk unique ( cust_first_name,
                                              cust_last_name )
        using index enable;

alter table maxprint_dev.demo_customers
    add constraint demo_cust_credit_limit_max check ( credit_limit <= 5000 ) enable;

