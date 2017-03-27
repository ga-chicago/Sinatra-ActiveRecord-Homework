CREATE DATABASE sunday;

\c sunday

CREATE TABLE users (id SERIAL PRIMARY KEY, username varchar (255), password varchar(255));

###here are my tables
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('Mars', 'bar', 'real sweet', 1, 'not good for you');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('Butterfinger', 'bar', 'very sweet', 3, 'terrible');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('dark chocolate', 'squares', 'bitter', 6, 'good');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('milk chocolate', 'bar', 'sweeet', 3, 'okay');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('gum', 'wheel', 'really sweet', 8, 'good for you');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('sesame', 'seeds', 'sweet', 7, 'good for you');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('dum dums', 'lollipop', 'sweet', 4, 'bad');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('ice cream', 'dessert', 'sweet', 4, 'terrible');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('tootsie pops', 'lollipop', 'sweet', 1, 'terrible');
-- sunday'# INSERT INTO candy (type, sweetness, price, health) VALUES ('cheesecake', 'dessert', 'inbetween', 10, 'terrible');