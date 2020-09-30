-- Title:       Date dimension generator.
-- Description: Creates a date dimension in PostgreSQL, contains Australian fiscal year details.
-- Created:     28-09-2020

DROP TABLE if exists dim_date;

CREATE TABLE dim_date (

    date_id DATE NOT NULL,
    epoch BIGINT NOT NULL,
    day_suffix VARCHAR(4) NOT NULL,
    day_name VARCHAR(9) NOT NULL,
    day_of_week INT NOT NULL,
    day_of_month INT NOT NULL,
    day_of_quarter INT NOT NULL,
    day_of_year INT NOT NULL,
    week_of_month INT NOT NULL,
    week_of_year INT NOT NULL,
    week_of_year_iso CHAR(10) NOT NULL,
    month_actual INT NOT NULL,
    month_name VARCHAR(9) NOT NULL,
    month_name_abbreviated CHAR(3) NOT NULL,
    quarter_actual INT NOT NULL,
    quarter_name VARCHAR(9) NOT NULL,
    fiscal_quarter VARCHAR(9) NOT NULL,
    year_actual INT NOT NULL,
    first_day_of_week DATE NOT NULL,
    last_day_of_week DATE NOT NULL,
    first_day_of_month DATE NOT NULL,
    last_day_of_month DATE NOT NULL,
    first_day_of_quarter DATE NOT NULL,
    last_day_of_quarter DATE NOT NULL,
    first_day_of_year DATE NOT NULL,
    last_day_of_year DATE NOT NULL,
    weekend BOOLEAN NOT NULL

);

ALTER TABLE dim_date ADD CONSTRAINT dim_date_date_id_pk PRIMARY KEY (date_id);
