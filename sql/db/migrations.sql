CREATE DATABASE monsters;

\c food

CREATE TABLE pokemon (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	type VARCHAR(100),
	skils VARCHAR(100),
	level INT,
	exp INT
);