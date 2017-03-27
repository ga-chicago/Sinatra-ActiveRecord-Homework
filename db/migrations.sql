CREATE DATABASE mexican_food;

\c mexican_food;

CREATE TABLE burritos (id SERIAL PRIMARY KEY, name VARCHAR(255), protien VARCHAR(255), wrapped BOOLEAN, spicy int, price float);