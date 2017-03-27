--psql migrations

CREATE DATABASE sunday;

\c sunday;

CREATE TABLE users (id SERIAL PRIMARY KEY, username varchar (255), password varchar(255));
CREATE TABLE candy (type varchar(255), sweetness int, price float, health boolean);

###here are my tables
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('Mars', 8, 3, false);
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('dark chocolate', 0, 6, false);
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('milk chocolate', 1, 8, true);
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('sesame', 4, 7, true);
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('dum dums', 8, 4, false);
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('ice cream', 7, 4, false);
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('tootsie pops', 4, 1, false);
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('cheesecake', 6, 10, true);