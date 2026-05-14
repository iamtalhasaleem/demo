-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755804882 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_customers_biu.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_customers_biu.sql:null:00d8852d435a3be0ca2a2d8d962616b6d65be6dd:create

create or replace editionable trigger maxprint_dev.demo_customers_biu before
    insert or update on maxprint_dev.demo_customers
    for each row
declare
    cust_id number;
begin
    if inserting then
        if :new.customer_id is null then
            select
                demo_cust_seq.nextval
            into cust_id
            from
                dual;

            :new.customer_id := cust_id;
        end if;

        if :new.tags is not null then
            :new.tags := sample_pkg.demo_tags_cleaner(:new.tags);
        end if;

    end if;

    sample_pkg.demo_tag_sync(
        p_new_tags     => :new.tags,
        p_old_tags     => :old.tags,
        p_content_type => 'CUSTOMER',
        p_content_id   => :new.customer_id
    );

end;
/

alter trigger maxprint_dev.demo_customers_biu enable;

