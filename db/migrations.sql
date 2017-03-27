CREATE DATABASE cubbies;

\c cubbies

CREATE TABLE players (id SERIAL PRIMARY KEY, fname varchar(20), lastname varchar(20),
position varchar(20), bats varchar(1), batavg decimal(1,3));


