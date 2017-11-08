CREATE DATABASE	guitar;

\c guitar


CREATE TABLE guitars(

		id SERIAL PRIMARY KEY,
		gibson VARCHAR(100),
		fender VARCHAR(100),
		taylor VARCHAR(100),
		ibanez VARCHAR(100),
		amount INT

);