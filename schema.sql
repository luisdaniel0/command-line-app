DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS addresses;


CREATE TABLE contacts (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  phone_number INT NOT NULL
  address_id INT
);


CREATE TABLE addressesinfo (
  id SERIAL PRIMARY KEY,
  street_name VARCHAR NOT NULL,
  city VARCHAR NOT NULL,
  zipcode INT NOT NULL
);