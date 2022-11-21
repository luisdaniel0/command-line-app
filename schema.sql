DROP TABLE IF EXISTS contactsinfo;
DROP TABLE IF EXISTS addressesinfo;


CREATE TABLE contactsinfo (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  phone_number INT NOT NULL,
  address_id INT
);


