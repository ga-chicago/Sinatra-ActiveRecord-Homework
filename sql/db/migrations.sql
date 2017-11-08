CREATE DATABASE monsters;

\c pokemon

CREATE TABLE pokemon (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	type VARCHAR(100),
	skills VARCHAR(100),
	level INT,
	exp INT
);