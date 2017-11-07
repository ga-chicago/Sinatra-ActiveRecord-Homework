CREATE DATABASE pet;

\c pet;

CREATE TABLE dogs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	breed VARCHAR(100),
	gender VARCHAR(100),
	goodboy BOOLEAN,
	age INT
);