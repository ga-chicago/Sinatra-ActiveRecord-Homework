CREATE DATABASE food;

\c food;

CREATE TABLE mexican (id SERIAL PRIMARY KEY, name VARCHAR(255), calories INT, carbs INT, protein INT, healthy BOOLEAN);
