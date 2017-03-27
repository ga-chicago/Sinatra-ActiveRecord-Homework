CREATE DATABASE sinatra_homework;

\c sinatra_homework;

CREATE TABLE persons (
    id              SERIAL PRIMARY KEY,
    first_name      VARCHAR(255),
    last_name       VARCHAR(255),
    sex             CHAR(1),
    age             INT,
    married         BOOLEAN
);
