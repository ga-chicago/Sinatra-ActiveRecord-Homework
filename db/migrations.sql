CREATE DATABASE sess_hw;

\c sess_hw;

CREATE TABLE login_info (id SERIAL PRIMARY KEY, username varchar(255), password varchar(255)); 