CREATE DATABASE weekend_hw;

\c weekend_hw;

CREATE TABLE sandwiches (id SERIAL PRIMARY KEY, bread varchar(255), contents varchar(255), health varchar(255), creativity int, difficulty int);
