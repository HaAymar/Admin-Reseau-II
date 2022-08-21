CREATE USER 'WoodyToy'@'51.68.226.111' IDENTIFIED BY 'HAKIZ';

CREATE DATABASE db_woody;

GRANT ALL PRIVILEGES ON db_woody.* to 'WoodyToy'@'51.68.226.111';

FLUSH PRIVILEGES;

USE db_woody;

create table woody(
    id INTEGER NOT NULL AUTO_INCREMENT,
    Name CHAR(50) NOT NULL,
    Price DECIMAL(8,2) NOT NULL,
    CONSTRAINT pk_woody PRIMARY KEY(id)
);

INSERT INTO woody (name,price)
VALUES ('toy en bois' , 15), ('Robot de lespace' , 16);
