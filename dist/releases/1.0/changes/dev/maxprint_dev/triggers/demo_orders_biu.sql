-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805235 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_orders_biu.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_orders_biu.sql:null:8d7029e33b3f73672095035570bc45a7f017b761:create

create or replace editionable trigger maxprint_dev.demo_orders_biu before
    insert or update on maxprint_dev.demo_orders
    for each row
declare
    order_id number;
begin
    if inserting then
        if :new.order_id is null then
            select
                demo_ord_seq.nextval
            into order_id
            from
                dual;

            :new.order_id := order_id;
        end if;

        if :new.tags is not null then
            :new.tags := sample_pkg.demo_tags_cleaner(:new.tags);
        end if;

    end if;

    sample_pkg.demo_tag_sync(
        p_new_tags     => :new.tags,
        p_old_tags     => :old.tags,
        p_content_type => 'ORDER',
        p_content_id   => :new.order_id
    );

end;
/

alter trigger maxprint_dev.demo_orders_biu enable;

