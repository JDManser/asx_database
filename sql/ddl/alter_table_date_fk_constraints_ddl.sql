alter table john.asx_database.daily_price_data
add constraint transaction_date_fk foreign key (transaction_date)
references john.asx_database.dim_date (date_id);

alter table john.asx_database.listed_companies
add constraint listing_date_fk foreign key (listing_date)
references john.asx_database.dim_date (date_id);