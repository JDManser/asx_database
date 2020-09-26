
create table if not exists listed_companies(

    issuer_code                 varchar(5) primary key,
    listing_date                date,
    gics_industry_group         varchar(255),
    exempt_foreign              bool,
    website                     text,
    office_address              text,
    telephone                   varchar,
    share_registry_id           int

);

create table if not exists share_registry(

    registry_id                 serial primary key,
    registry_name               varchar(255),
    registry_address            text,
    registry_telephone          varchar(12)

);

create table if not exists daily_price_data(

    issuer_code             varchar(5),
    transaction_date        date,
    open_price              decimal,
    high_price              decimal,
    low_price               decimal,
    close_price             decimal,
    adjusted_close_price    decimal,
    daily_volume            int,
    dividends               decimal,
    stock_splits            decimal

);

alter table daily_price_data
add constraint daily_price_data_id_pk
primary key (issuer_code, transaction_date);

alter table daily_price_data
add constraint daily_price_data_id_fk
foreign key (issuer_code)
references asx_database.listed_companies (issuer_code);


alter table asx_database.listed_companies
add constraint registry_id_fk
foreign key (share_registry_id)
references asx_database.share_registry (registry_id);
