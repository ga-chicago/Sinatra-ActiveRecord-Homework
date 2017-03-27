-- this represents how I want my data to look


CREATE DATABASE homework_time;

\c homework_time;

CREATE TABLE users ( id SERIAL PRIMARY KEY, username  VARCHAR(255), first_name VARCHAR(225), last_name VARCHAR(255), email VARCHAR(225), phone VARCHAR(15));
