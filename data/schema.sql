CREATE DATABASE catalog;

CREATE TABLE Authors (
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    PRIMARY KEY (id)
);

