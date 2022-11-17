DROP TABLE IF EXISTS contactsinfo;
DROP TABLE IF EXISTS addressesinfo;


CREATE TABLE contactsinfo (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  phone_number INT NOT NULL,
  address_id INT
);


CREATE TABLE addressesinfo (
  id SERIAL PRIMARY KEY,
  street_name VARCHAR NOT NULL,
  city VARCHAR NOT NULL,
  zipcode INT NOT NULL
);