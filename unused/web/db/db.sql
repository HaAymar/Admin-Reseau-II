ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'HAKIZ';

CREATE USER 'WoodyToy'@'192.168.0.3' IDENTIFIED BY 'HAKIZ';

CREATE DATABASE db_woody;

GRANT ALL PRIVILEGES ON db_woody.* to 'WoodyToy'@'192.168.0.3';

FLUSH PRIVILEGES;

USE db_woody;

CREATE TABLE woody (
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom varchar(255) NOT NULL,
    prix decimal(6,2) NOT NULL
);

insert into woody(id , nom , prix)
values(1,'jouet 1' , 10),(2,'jouet 2' , 12),(3, 'jouet 3' , 4);


