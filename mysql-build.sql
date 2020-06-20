CREATE DATABASE databaseName;
USE databaseName;
CREATE TABLE tableName (time DATETIME, temp DOUBLE);


CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT ON databaseName.tableName TO 'user'@'localhost';
FLUSH PRIVILEGES;
