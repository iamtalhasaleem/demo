-- liquibase formatted sql
-- changeset MAXPRINT_DEV:1778755805467 stripComments:false  logicalFilePath:dev/maxprint_dev/triggers/demo_tags_biu.sql
-- sqlcl_snapshot src/database/maxprint_dev/triggers/demo_tags_biu.sql:null:b629d85a951bb6fc4d602cb777899bfee558caae:create

create or replace editionable trigger maxprint_dev.demo_tags_biu before
    insert or update on maxprint_dev.demo_tags
    for each row
begin
    if inserting then
        if :new.id is null then
            select
                to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.id
            from
                dual;

        end if;

        :new.created := localtimestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if updating then
        :new.updated := localtimestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger maxprint_dev.demo_tags_biu enable;

