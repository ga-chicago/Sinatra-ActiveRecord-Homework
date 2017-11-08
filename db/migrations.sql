CREATE DATABASE weekend_homework;

\c weekend_homework;

CREATE TABLE movies(id SERIAL PRIMARY KEY, title VARCHAR(255), year INT, director VARCHAR(255), starring VARCHAR(255), RT INT);