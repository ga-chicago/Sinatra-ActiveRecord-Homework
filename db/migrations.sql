CREATE DATABASE activerecord_hw;

\c activerecord_hw

CREATE TABLE players (id SERIAL PRIMARY KEY, name varchar(255), position varchar(255), height INT, ppg INT, college varchar(255));