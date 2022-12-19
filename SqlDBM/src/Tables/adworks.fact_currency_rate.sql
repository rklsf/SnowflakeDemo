-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** adworks.fact_currency_rate
CREATE TABLE adworks.fact_currency_rate
(
 currency_key    number(38,0) NOT NULL,
 date_key        number(38,0) NOT NULL,
 average_rate    float NOT NULL,
 end_of_day_rate float NOT NULL,

 CONSTRAINT fk_fact_currency_rate_413 FOREIGN KEY ( currency_key ) REFERENCES adworks.dim_currency ( currency_key ),
 CONSTRAINT fk_fact_currency_rate_415 FOREIGN KEY ( date_key ) REFERENCES adworks.dim_date ( date_key )
);
