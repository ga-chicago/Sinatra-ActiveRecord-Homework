CREATE DATABASE type_music;

\c type_music;

CREATE TABLE  music (id SERIAL PRIMARY KEY, band varchar(255),best_album varchar(255), fav_song varchar(255), grammy BOOLEAN);